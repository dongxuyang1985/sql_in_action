-- 示例表和数据
CREATE TABLE visitor(
  id INTEGER NOT NULL AUTO_INCREMENT,
  log_date DATE NOT NULL,
  num INTEGER NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO visitor(log_date, num)
VALUES ('2022-01-01', 8500),
       ('2022-01-02', 10000),
       ('2022-01-03', 11000),
       ('2022-01-04', 7000),
       ('2022-01-05', 10000),
       ('2022-01-06', 12000),
       ('2022-01-07', 11000),
       ('2022-01-08', 12000),
       ('2022-01-09', 6000),
       ('2022-01-10', 6500);

-- 编写查询语句，找出客流量高峰对应的日期和流量，客流高峰是指前后连续3天流量大于等于一万。
-- 多表连接查询
SELECT *
FROM visitor d1, visitor d2, visitor d3
WHERE d1.num >= 10000 AND d2.num >= 10000 AND d3.num >= 10000
AND d1.log_date = d2.log_date - INTERVAL '1' DAY
AND d2.log_date = d3.log_date - INTERVAL '1' DAY;

-- 窗口函数
SELECT *
FROM (
SELECT id, log_date, num,
       lag(log_date, 1) OVER (PARTITION BY NULL ORDER BY log_date) yestoday,
       lag(num, 1) OVER (PARTITION BY NULL ORDER BY log_date) yestoday_num,
       lead(log_date, 1) OVER (PARTITION BY NULL ORDER BY log_date) tomorrow,
       lead(num, 1) OVER (PARTITION BY NULL ORDER BY log_date) tomorrow_num
FROM visitor) tmp
WHERE num >= 10000
AND yestoday_num >= 10000
AND tomorrow_num >= 10000;
