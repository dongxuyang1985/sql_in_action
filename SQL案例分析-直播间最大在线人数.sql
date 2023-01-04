-- 示例表和数据
CREATE TABLE t_live(live_id int, user_id int, oper_time datetime, oper_type varchar(10));

INSERT INTO t_live(live_id, user_id, oper_time, oper_type)
VALUES (1, 1, '2023-01-01 19:00:00', 'IN'),
(1, 2, '2023-01-01 19:15:00', 'IN'),
(1, 3, '2023-01-01 19:20:00', 'IN'),
(1, 1, '2023-01-01 19:30:00', 'OUT'),
(1, 4, '2023-01-01 19:35:00', 'IN'),
(1, 5, '2023-01-01 19:40:00', 'IN'),
(1, 3, '2023-01-01 19:40:00', 'OUT'),
(1, 2, '2023-01-01 19:50:00', 'OUT');

INSERT INTO t_live(live_id, user_id, oper_time, oper_type)
VALUES (2, 11, '2023-01-01 19:01:00', 'IN'),
(2, 12, '2023-01-01 19:05:00', 'IN'),
(2, 13, '2023-01-01 19:10:00', 'IN'),
(2, 14, '2023-01-01 19:20:00', 'IN'),
(2, 13, '2023-01-01 19:40:00', 'OUT'),
(2, 15, '2023-01-01 19:45:00', 'IN'),
(2, 16, '2023-01-01 19:46:00', 'OUT');

-- 分析每个直播间最大在线人数和相应的时间
WITH tmp AS (
  SELECT live_id, user_id, oper_time, 
         CASE oper_type WHEN 'IN' THEN 1 WHEN 'OUT' THEN -1 ELSE 0 END flag
  FROM t_live),
tmp2 as(
  SELECT *, sum(flag) OVER (PARTITION BY live_id ORDER BY oper_time) total
  FROM tmp),
tmp3 AS (
  SELECT *, rank() OVER (PARTITION BY live_id ORDER BY total desc) rk
  FROM tmp2)
SELECT DISTINCT live_id, oper_time, total
FROM tmp3 
WHERE rk= 1;
