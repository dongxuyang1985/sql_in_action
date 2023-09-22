-- 已知表结构如下：
create table orders (
  o_orderkey int,
  o_custkey int,
  o_orderstatus char(1),
  o_totalprice decimal(15,2),
  o_orderdate date,
  o_orderpriority char(15),
  o_clerk char(15),
  o_shippriority int,
  o_comment varchar(79), 
  primary key (o_orderkey)
) engine=innodb;

-- orders表订单日期在2021-01-01至2023-01-01基本均匀分布
-- o_orderpriority=1 和 o_shippriority=1 的筛选率在5%左右
SET SESSION cte_max_recursion_depth = 1000000;

INSERT INTO orders
WITH RECURSIVE t AS (
SELECT 1 o_orderkey, round(rand()*100,0) o_custkey, 'Y' o_orderstatus, 100 o_totalprice, '2021-01-01' o_orderdate,
round(rand()*20,0) o_orderpriority, round(rand()*20,5) o_clerk, round(rand()*20,0) o_shippriority, rand() o_comment
UNION ALL
SELECT o_orderkey+1, round(rand()*100,0) o_custkey, 'Y' o_orderstatus, 100 o_totalprice, CAST('2021-01-01'+INTERVAL 160*(o_orderkey-1) SECOND AS date),
round(rand()*20,0) o_orderpriority, round(rand()*20,5) o_clerk, round(rand()*20,0) o_shippriority, rand() o_comment
FROM t
WHERE o_orderkey<400000
)
SELECT * FROM t;

-- 以下语句如何优化：
select * 
from orders
where o_orderdate>'2022-01-01' 
and (o_orderpriority = 1 or o_shippriority = 1)
order by o_orderdate desc
limit 20, 10;

-- 参考方案
ALTER TABLE orders ADD INDEX idx_orders1(o_shippriority, o_orderdate desc);
ALTER TABLE orders ADD INDEX idx_orders2(o_orderpriority, o_orderdate desc);

-- explain
select * from (
  (select *
   from orders 
   where o_orderdate>'2022-01-01' and o_orderpriority = '1'
   order by o_orderdate desc limit 30)
  union
  (select *
   from orders 
   where o_orderdate>'2022-01-01' and o_shippriority = 1
   order by o_orderdate desc limit 30)
) t
order by t.o_orderdate 
desc limit 20,10;
