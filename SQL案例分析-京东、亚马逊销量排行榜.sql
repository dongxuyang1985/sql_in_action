-- 视频地址：https://www.bilibili.com/video/BV1hY4y1W7k1
-- 创建示例表
create table products(
  product_id integer not null primary key,
  product_name varchar(100) not null unique,
  product_subcategory varchar(100) not null,
  product_category varchar(100) not null
);

insert into products values(1, 'iPhone 11', '手机', '手机通讯');
insert into products values(2, 'HUAWEI P40', '手机', '手机通讯');
insert into products values(3, '小米10', '手机', '手机通讯');
insert into products values(4, 'OPPO Reno4', '手机', '手机通讯');
insert into products values(5, 'vivo Y70s', '手机', '手机通讯');
insert into products values(6, '海尔BCD-216STPT', '冰箱', '大家电');
insert into products values(7, '康佳BCD-155C2GBU', '冰箱', '大家电');
insert into products values(8, '容声BCD-529WD11HP', '冰箱', '大家电');
insert into products values(9, '美的BCD-213TM(E)', '冰箱', '大家电');
insert into products values(10, '格力BCD-230WETCL', '冰箱', '大家电');
insert into products values(11, '格力KFR-35GW', '空调', '大家电');
insert into products values(12, '美的KFR-35GW', '空调', '大家电');
insert into products values(13, 'TCLKFRd-26GW', '空调', '大家电');
insert into products values(14, '奥克斯KFR-35GW', '空调', '大家电');
insert into products values(15, '海尔KFR-35GW', '空调', '大家电');

create table sales(
  product_id integer not null,
  sale_time timestamp not null,
  quantity integer not null
);

-- 生成模拟销量数据
insert into sales
with recursive s(product_id, sale_time, quantity) as (
  select product_id, '2022-04-01 00:00:00', floor(10*rand(0)) from products
  union all
  select product_id, sale_time + interval 1 minute, floor(10*rand(0))
  from s 
  where sale_time < '2022-04-01 10:00:00'
)
select * from s;

# 按照产品的分类，计算2022-04-01 09:00:00到2022-04-01 09:59:59一小时的销量排名
-- MySQL，其他数据库需要替换date_format函数
with hourly_sales(product_id, ymdh, quantity) as (
  select product_id, date_format(sale_time, '%Y%m%d%H'), sum(quantity)
  from sales
  where sale_time between '2022-04-01 09:00:00' and '2022-04-01 09:59:59'
  group by product_id, date_format(sale_time, '%Y%m%d%H')
),
hourly_rank as(
  select product_category, product_subcategory, product_name, quantity,
         rank() over (partition by ymdh, product_category order by quantity desc) as rk
  from hourly_sales s
  join products p on (p.product_id = s.product_id)
)
select *
from hourly_rank;

# 按照产品子类排名
-- MySQL，其他数据库需要替换date_format函数
with hourly_sales(product_id, ymdh, quantity) as (
  select product_id, date_format(sale_time, '%Y%m%d%H'), sum(quantity)
  from sales
  where sale_time between '2022-04-01 09:00:00' and '2022-04-01 09:59:59'
  group by product_id, date_format(sale_time, '%Y%m%d%H')
),
hourly_rank as(
  select product_category, product_subcategory, product_name, quantity,
         rank() over (partition by ymdh, product_category, product_subcategory order by quantity desc) as sub_rk
  from hourly_sales s
  join products p on (p.product_id = s.product_id)
)
select *
from hourly_rank;

# 按照产品分类的飙升榜
-- MySQL，其他数据库需要替换date_format函数和ifnull函数
with hourly_sales(product_id, ymdh, quantity) as (
  select product_id, date_format(sale_time, '%y%m%d%H'), sum(quantity)
  from sales
  where sale_time between '2022-04-01 08:00:00' and '2022-04-01 09:59:59'
  group by product_id, date_format(sale_time, '%y%m%d%H')
),
hourly_rank as(
  select ymdh, product_category, product_subcategory, product_name,
         rank() over (partition by ymdh, product_category order by quantity desc) as rk
  from hourly_sales s
  join products p on (p.product_id = s.product_id)
),
rank_gain as(
  select product_category, product_subcategory, product_name,
         rk, lag(rk, 1) over (partition by product_category, product_name order by ymdh) pre_rk,
         100 * (ifnull(lag(rk, 1) over (partition by product_category, product_name order by ymdh), 9999) - rk)
         /rk as gain
  from hourly_rank
),
top_gain as(
  select *, rank() over (partition by product_category order by gain desc) gain_rk
  from rank_gain
  where pre_rk is not null
)
select product_category, product_subcategory, product_name, pre_rk, rk, concat(gain,'%') gain, gain_rk
from top_gain;
