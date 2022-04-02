-- 视频地址：https://www.bilibili.com/video/BV14L4y1M7c6
-- 问题一
-- 假如存在以下表 t1 和索引：
CREATE TABLE t1 (
  id INT NOT NULL PRIMARY KEY,
  i  INT,
  dt DATE);
CREATE INDEX idx1 ON t1(dt);

--下面的查询语句有没有性能问题？
SELECT *
FROM t1
WHERE YEAR(dt) = '2019';

-- 问题二
-- 假如存在以下表 t2 和索引：
CREATE TABLE t2 (
  id INT NOT NULL PRIMARY KEY,
  i  INT,
  dt DATE,
  v  VARCHAR(50));
CREATE INDEX idx2 ON t2(i, dt);

-- 下面的查询语句有没有性能问题？
SELECT *
FROM t2
WHERE i = 99
ORDER BY dt DESC
LIMIT 5;

-- 问题三
-- 为了优化下面两个查询，表 t3 中的索引有没有问题？
SELECT *
FROM t3
WHERE col1 = 99
AND col2 = 10;

SELECT *
FROM t3
WHERE col2 = 10;

-- 表 t3 的结构和索引如下：
CREATE TABLE t3 (
  id   INT NOT NULL PRIMARY KEY,
  col1 INT,
  col2 INT,
  col3 VARCHAR(50));
CREATE INDEX idx3 ON t3(col1, col2);

-- 问题四
-- 假如存在以下表 t4 和索引：
CREATE TABLE t4 (
  id   INT NOT NULL PRIMARY KEY,
  col1 INT,
  col2 VARCHAR(50));
CREATE INDEX idx4 ON t4(col2);

-- 下面的查询语句有没有性能问题？
SELECT *
FROM t4
WHERE col2 LIKE '%sql%';

-- 问题五
-- 假如存在以下表 t5 和索引：
CREATE TABLE t5 (
  id   INT NOT NULL PRIMARY KEY,
  col1 INT,
  col2 INT,
  col3 VARCHAR(50));
CREATE INDEX idx5 ON t5(col1, col3);

-- 下面两个查询语句，哪个性能更快？
SELECT col3, count(*)
FROM t5
WHERE col1 = 99
GROUP BY col3;

SELECT col3, count(*)
FROM t5
WHERE col1 = 99
AND col2 = 10
GROUP BY col3;
