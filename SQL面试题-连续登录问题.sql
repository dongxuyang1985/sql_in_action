-- 视频地址：
-- 创建示例表
CREATE TABLE t_login(uid int, login_time timestamp);
INSERT INTO t_login VALUES (1, '2022-01-01 08:05:11');
INSERT INTO t_login VALUES (2, '2022-01-01 10:00:00');
INSERT INTO t_login VALUES (3, '2022-01-01 12:13:14');
INSERT INTO t_login VALUES (1, '2022-01-01 19:30:00');
INSERT INTO t_login VALUES (1, '2022-01-02 07:59:30');
INSERT INTO t_login VALUES (2, '2022-01-02 14:00:00');
INSERT INTO t_login VALUES (2, '2022-01-03 11:15:00');
INSERT INTO t_login VALUES (3, '2022-01-03 16:00:00');
INSERT INTO t_login VALUES (1, '2022-01-04 07:20:00');
INSERT INTO t_login VALUES (2, '2022-01-04 07:45:00');
INSERT INTO t_login VALUES (3, '2022-01-04 10:30:30');
INSERT INTO t_login VALUES (1, '2022-01-05 13:00:00');
INSERT INTO t_login VALUES (1, '2022-01-06 17:18:19');
INSERT INTO t_login VALUES (1, '2022-01-07 20:00:00');
INSERT INTO t_login VALUES (2, '2022-01-07 21:00:00');

-- 如何通过SQL查询找出2022年1月连续登录3天以上的用户？
-- 自连接查询
SELECT t1.uid, t1.ymd, t2.ymd, t3.ymd
FROM (SELECT DISTINCT uid, date(login_time) ymd
FROM t_login
WHERE login_time BETWEEN timestamp '2022-01-01 00:00:00' AND '2022-01-31 23:59:59') t1
JOIN (SELECT DISTINCT uid, date(login_time) ymd
FROM t_login
WHERE login_time BETWEEN timestamp '2022-01-01 00:00:00' AND '2022-01-31 23:59:59') t2
ON (t1.uid = t2.uid AND datediff(t2.ymd, t1.ymd)=1)
JOIN (SELECT DISTINCT uid, date(login_time) ymd
FROM t_login
WHERE login_time BETWEEN timestamp '2022-01-01 00:00:00' AND '2022-01-31 23:59:59') t3
ON (t2.uid = t3.uid AND datediff(t3.ymd, t2.ymd)=1);

-- 窗口函数ROW_NUMBER
WITH t1(uid, ymd) AS (
SELECT DISTINCT uid, date(login_time) ymd
FROM t_login
WHERE login_time BETWEEN timestamp '2022-01-01 00:00:00' AND timestamp '2022-01-31 23:59:59'
),
t2 AS (
SELECT uid, ymd, ROW_NUMBER() OVER (PARTITION BY uid ORDER BY ymd) num,
       date_sub(ymd, INTERVAL ROW_NUMBER() OVER (PARTITION BY uid ORDER BY ymd) day) sub_date
FROM t1
)
SELECT uid, min(ymd), max(ymd), count(*)
FROM t2
GROUP BY uid, sub_date
HAVING count(*)>=3;

-- 窗口函数LAG
WITH t1 AS (SELECT DISTINCT uid, date(login_time) ymd
FROM t_login
WHERE login_time BETWEEN timestamp '2022-01-01 00:00:00' AND '2022-01-31 23:59:59'),
t2 AS (
SELECT uid, ymd,
       datediff(ymd, lag(ymd, 2) OVER (PARTITION BY uid ORDER BY ymd)) diff
FROM t1)
SELECT uid,date_sub(ymd,INTERVAL 2 day) min_date, ymd max_date, diff
FROM t2
WHERE diff = 2;
