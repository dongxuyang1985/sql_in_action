-- 商家卖货记录表
CREATE TABLE t5 (seller_id int, buyer_id int, item_id int, num int);
INSERT INTO t5 VALUES (1, 11, 1, 100), (1, 12, 1, 200), (1, 12, 2, 300);
INSERT INTO t5 VALUES (2, 11, 1, 100), (2, 12, 3, 200);

-- 计算每个卖家销量最高的商品
SELECT seller_id, item_id, total
FROM (
SELECT seller_id, item_id, total, RANK() OVER (PARTITION BY seller_id ORDER BY total DESC) AS rk
FROM 
(SELECT seller_id, item_id, sum(num) AS total
FROM t5
GROUP BY seller_id, item_id) s) t
WHERE rk = 1;
