-- 示例表
DROP TABLE t_user;
CREATE TABLE t_user(
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(50) NOT NULL,
  register_time DATETIME NOT NULL
);

SET SESSION cte_max_recursion_depth=9999999;

INSERT INTO t_user(user_name, register_time)
WITH RECURSIVE t AS (
  SELECT 1 n, '2022-01-01 00:00:00' d
  UNION ALL
  SELECT n+1, d + INTERVAL '1' MINUTE    
  FROM t
  WHERE n<10000
)
SELECT concat('user', n), d FROM t;

SELECT date(register_time), count(*) FROM t_user GROUP BY date(register_time);

DROP TABLE t_user_login;
CREATE TABLE t_user_login(
  id INT AUTO_INCREMENT PRIMARY KEY,
  uid INT NOT NULL,
  login_time DATETIME NOT NULL
);

SET SESSION cte_max_recursion_depth=9999999;

INSERT INTO t_user_login(uid, login_time)
WITH RECURSIVE t AS (
  SELECT 1 n, rand()*10000 id, '2022-01-01 00:00:00' d
  UNION ALL
  SELECT n+1, rand()*10000, d + INTERVAL CEIL(n/3000) second
  FROM t
  WHERE n<500000
)
SELECT CEIL(id), d FROM t;

-- 多表连接
SELECT date(u.register_time),
       100*count(DISTINCT ul1.uid)/count(DISTINCT u.id) rr1,
       100*count(DISTINCT ul2.uid)/count(DISTINCT u.id) rr3,
       100*count(DISTINCT ul3.uid)/count(DISTINCT u.id) rr7,
       100*count(DISTINCT ul4.uid)/count(DISTINCT u.id) rr30
FROM t_user u
LEFT JOIN t_user_login ul1 ON (ul1.uid = u.id AND date(ul1.login_time) = date(u.register_time) + INTERVAL '1' DAY)
LEFT JOIN t_user_login ul2 ON (ul2.uid = u.id AND date(ul2.login_time) = date(u.register_time) + INTERVAL '3' DAY)
LEFT JOIN t_user_login ul3 ON (ul3.uid = u.id AND date(ul3.login_time) = date(u.register_time) + INTERVAL '7' DAY)
LEFT JOIN t_user_login ul4 ON (ul4.uid = u.id AND date(ul4.login_time) = date(u.register_time) + INTERVAL '30' DAY)
GROUP BY date(u.register_time);

-- 窗口函数
WITH t1 AS (
SELECT u.id, u.user_name, date(u.register_time) reg_date, date(l.login_time) login_date,
       DENSE_RANK() OVER (PARTITION BY date(u.register_time) ORDER BY u.id) daily_reg,
       DENSE_RANK() OVER (PARTITION BY date(u.register_time), date(l.login_time) ORDER BY l.uid) daily_login
FROM t_user u
LEFT JOIN t_user_login l 
ON (l.uid = u.id AND date(l.login_time) BETWEEN date(u.register_time) + INTERVAL '1' DAY AND date(u.register_time) + INTERVAL '30' DAY)
),
t2 AS (
SELECT reg_date, max(daily_reg) daily_reg, login_date, max(daily_login) daily_login
FROM t1
GROUP BY reg_date, login_date)
SELECT reg_date, max(daily_reg),
       100*max(CASE WHEN login_date = reg_date + INTERVAL '1' DAY THEN daily_login END)/max(daily_reg) rr1,
       100*max(CASE WHEN login_date = reg_date + INTERVAL '3' DAY THEN daily_login END)/max(daily_reg) rr3,
       100*max(CASE WHEN login_date = reg_date + INTERVAL '7' DAY THEN daily_login END)/max(daily_reg) rr7,
       100*max(CASE WHEN login_date = reg_date + INTERVAL '30' DAY THEN daily_login END)/max(daily_reg) rr30
FROM t2 
GROUP BY reg_date;
