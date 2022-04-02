-- 视频地址：https://space.bilibili.com/473901592
-- 创建交易流水表
CREATE TABLE transfer_log
( log_id    INTEGER NOT NULL PRIMARY KEY,
  log_ts    TIMESTAMP NOT NULL,
  from_user VARCHAR(50) NOT NULL,
  to_user   VARCHAR(50),
  type      VARCHAR(10) NOT NULL,
  amount    NUMERIC(10) NOT NULL
);

-- 初始化数据
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (1,'2019-01-02 10:31:40','62221230000000',NULL,'存款',50000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (2,'2019-01-02 10:32:15','62221234567890',NULL,'存款',100000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (3,'2019-01-03 08:14:29','62221234567890','62226666666666','转账',200000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (4,'2019-01-05 13:55:38','62221234567890','62226666666666','转账',150000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (5,'2019-01-07 20:00:31','62221234567890','62227777777777','转账',300000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (6,'2019-01-09 17:28:07','62221234567890','62227777777777','转账',500000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (7,'2019-01-10 07:46:02','62221234567890','62227777777777','转账',100000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (8,'2019-01-11 09:36:53','62221234567890',NULL,'存款',40000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (9,'2019-01-12 07:10:01','62221234567890','62228888888881','转账',10000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (10,'2019-01-12 07:11:12','62221234567890','62228888888882','转账',8000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (11,'2019-01-12 07:12:36','62221234567890','62228888888883','转账',5000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (12,'2019-01-12 07:13:55','62221234567890','62228888888884','转账',6000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (13,'2019-01-12 07:14:24','62221234567890','62228888888885','转账',7000);
INSERT INTO transfer_log (log_id,log_ts,from_user,to_user,type,amount) VALUES (14,'2019-01-21 12:11:16','62221234567890','62228888888885','转账',70000);

-- 找出 5 天之内累积转账超过 100 万的账号
-- Oracle、MySQL以及PostgreSQL
SELECT * FROM 
(SELECT *,
       sum(amount) OVER (PARTITION BY from_user 
                         ORDER BY log_ts 
                         RANGE BETWEEN INTERVAL '5' DAY PRECEDING AND CURRENT ROW ) total
FROM transfer_log
WHERE TYPE = '转账') t 
WHERE total>=1000000;

-- SQLite
WITH tl(log_ts, unix, from_user, amount) AS (
  SELECT log_ts, CAST(STRFTIME('%s', log_ts) AS INT), from_user, amount
  FROM transfer_log
  WHERE type = '转账'
) 
SELECT log_ts, from_user, total_amount
FROM (
    SELECT log_ts, from_user,
    SUM(amount) OVER (
      PARTITION BY from_user 
      ORDER BY unix 
      RANGE 5 * 86400 PRECEDING
      ) AS total_amount
    FROM tl
    ) t
WHERE total_amount >= 1000000;

-- 找出相同收付款人5天内连续转账3次以上的记录
-- Oracle、MySQL以及PostgreSQL
select *
from (
    select *, 
    count(1) over (partition by from_user,to_user order by log_ts range BETWEEN interval '5' day PRECEDING
    AND CURRENT ROW ) times
    from transfer_log
    where type = '转账'
    ) t
where times >= 3;

-- SQLite
WITH tl(log_ts, unix, from_user, to_user, amount) AS (
  SELECT log_ts, CAST(STRFTIME('%s', log_ts) AS INT), from_user, to_user, amount
  FROM transfer_log
  WHERE type = '转账'
) 
SELECT log_ts, from_user, to_user, times
FROM (
    SELECT log_ts, from_user, to_user,
    COUNT(*) OVER (
      PARTITION BY from_user, to_user 
      ORDER BY unix 
      RANGE 5 * 86400 PRECEDING
      ) AS times
    FROM tl
    ) t
WHERE times >= 3;
