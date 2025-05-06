--视频地址：https://www.bilibili.com/video/BV1bJVyzsEPR/

-- 创建示例表
CREATE TABLE user_access(user_id bigint, access_time timestamp);

-- 生成示例数据
INSERT INTO user_access VALUES
(1, '2025-04-30 07:00:00'),
(2, '2025-04-30 07:05:00'),
(2, '2025-04-30 07:10:00'),
(1, '2025-04-30 07:15:00'),
(1, '2025-04-30 07:20:00'),
(1, '2025-04-30 08:00:00'),
(3, '2025-04-30 08:00:00'),
(1, '2025-04-30 08:10:00');


WITH user_access_session_flag AS ( 
  SELECT user_id, access_time,
         CASE 
         	 WHEN access_time  - INTERVAL '30' MINUTE <= lag(access_time) OVER (PARTITION BY user_id ORDER BY access_time) THEN 0
         	 ELSE 1
         END AS new_session -- 基于每次点击和上次点击时间间隔判断是否新的会话
  FROM user_access
),
user_sessions AS (
  SELECT user_id, access_time,
         sum(new_session) OVER (PARTITION BY user_id ORDER BY access_time) AS session_num -- 基于new_session标识生成每次会话的编号
  FROM user_access_session_flag
)
SELECT user_id, session_num, min(access_time) AS start_time, max(access_time) AS end_time
FROM user_sessions
GROUP BY user_id, session_num
ORDER BY user_id, session_num; -- 分组获取每个用户每次会话的会话开始时间和结束时间
