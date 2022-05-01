-- 视频地址：https://www.bilibili.com/video/BV1GZ4y117fS/
-- 创建示例表
CREATE TABLE users(
  id integer PRIMARY KEY,
  name varchar(50) NOT NULL,
  pswd varchar(50) NOT NULL,
  email varchar(50),
  create_time timestamp NOT NULL,
  notes varchar(200)
);

-- 生成示例数据
-- MySQL语法
INSERT INTO users(id, name, pswd, email,create_time)
WITH RECURSIVE t(id, name, pswd, email,create_time) AS (
SELECT 1, CAST(concat('user', 1) AS char(50)), 'e10adc3949ba59abbe56e057f20f883e', CAST(concat('user',1,'@test.com') AS char(50)), '2020-01-01 00:00:00'
UNION ALL
SELECT id+1, concat('user', id+1), pswd, concat('user',id+1,'@test.com'), create_time+ INTERVAL mod(id,2) MINUTE
FROM t WHERE id<1000000
)
SELECT /*+ SET_VAR(cte_max_recursion_depth = 1M) */* FROM t;

-- 创建索引
CREATE INDEX idx_user_ct ON users(create_time);

-- OFFSET分页
SELECT count(*) FROM users;

EXPLAIN 
SELECT *
FROM users
ORDER BY create_time, id
LIMIT 20 offset 100000;

-- KEYSET分页
EXPLAIN 
SELECT *
FROM users
WHERE create_time>='2020-11-01 00:10:00' and id>20
ORDER BY create_time, id
LIMIT 20;
