-- 视频地址：https://www.bilibili.com/video/BV1JY4y1H73Q
-- 创建销量表sales_monthly
-- product表示产品名称，ym表示年月，amount表示销售金额（元）
CREATE TABLE sales_monthly(product VARCHAR(20), ym VARCHAR(10), amount NUMERIC(10, 2));

-- 生成测试数据
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201801',10159.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201802',10211.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201803',10247.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201804',10376.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201805',10400.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201806',10565.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201807',10613.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201808',10696.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201809',10751.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201810',10842.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201811',10900.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201812',10972.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201901',11155.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201902',11202.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201903',11260.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201904',11341.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201905',11459.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('苹果','201906',11560.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201801',10138.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201802',10194.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201803',10328.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201804',10322.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201805',10481.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201806',10502.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201807',10589.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201808',10681.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201809',10798.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201810',10829.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201811',10913.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201812',11056.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201901',11161.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201902',11173.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201903',11288.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201904',11408.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201905',11469.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('香蕉','201906',11528.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201801',10154.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201802',10183.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201803',10245.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201804',10325.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201805',10465.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201806',10505.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201807',10578.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201808',10680.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201809',10788.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201810',10838.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201811',10942.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201812',10988.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201901',11099.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201902',11181.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201903',11302.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201904',11327.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201905',11423.00);
INSERT INTO sales_monthly (product,ym,amount) VALUES ('桔子','201906',11524.00);

-- 环比增长率
SELECT product AS "产品", ym "年月", amount "本期销量",
       LAG(amount, 1) OVER (PARTITION BY product ORDER BY ym) "上期销量",
       ((amount - LAG(amount, 1) OVER (PARTITION BY product ORDER BY ym))/
       LAG(amount, 1) OVER (PARTITION BY product ORDER BY ym)) * 100
       AS "环比增长率（%）"
FROM sales_monthly
ORDER BY product, ym;

-- 同比增长率
SELECT product AS "产品", ym "年月", amount "本期销量",
       LAG(amount, 12) OVER (PARTITION BY product ORDER BY ym) "去年同期销量",
       ((amount - LAG(amount, 12) OVER (PARTITION BY product ORDER BY ym))/
       LAG(amount, 12) OVER (PARTITION BY product ORDER BY ym)) * 100
       AS "同比增长率（%）"
FROM sales_monthly
ORDER BY product, ym;

-- 月均复合增长率
WITH s(product, ym, amount, first_amount, num) AS (
  SELECT product, ym, amount,
       FIRST_VALUE(amount) OVER (PARTITION BY product ORDER BY ym),
       ROW_NUMBER() OVER (PARTITION BY product ORDER BY ym)
  FROM sales_monthly
)
SELECT product AS "产品", ym "年月", amount "销量",
       (POWER(1.0*amount/first_amount, 1.0/NULLIF(num-1, 0)) - 1) * 100
       AS "月均复合增长率（%）"
FROM s
ORDER BY product, ym;
