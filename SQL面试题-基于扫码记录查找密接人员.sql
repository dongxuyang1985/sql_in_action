-- 视频地址：https://www.bilibili.com/video/BV1g44y137Az/
-- 创建示例表和数据
CREATE TABLE trail(
  uid varchar(11) NOT NULL,
  area varchar(10) NOT NULL,
  scan_time timestamp);

INSERT INTO trail VALUES ('13011111111', 'A001', '2022-05-01 09:00:00');
INSERT INTO trail VALUES ('13011111111', 'A001', '2022-05-01 10:00:00');
INSERT INTO trail VALUES ('13011111111', 'A001', '2022-05-01 11:00:00');
INSERT INTO trail VALUES ('13011111111', 'A002', '2022-05-01 11:05:00');
INSERT INTO trail VALUES ('13011111111', 'A002', '2022-05-01 13:00:00');
INSERT INTO trail VALUES ('13011111111', 'A001', '2022-05-01 13:15:00');
INSERT INTO trail VALUES ('13011111111', 'A001', '2022-05-01 14:00:00');
INSERT INTO trail VALUES ('13022222222', 'A001', '2022-05-01 10:30:00');
INSERT INTO trail VALUES ('13022222222', 'A001', '2022-05-01 12:00:00');
INSERT INTO trail VALUES ('13033333333', 'A001', '2022-05-01 11:00:00');
INSERT INTO trail VALUES ('13033333333', 'A001', '2022-05-01 12:00:00');
INSERT INTO trail VALUES ('13033333333', 'A001', '2022-05-01 13:00:00');

-- 问题一：如何找出用户在每个区域的停留开始时间和结束时间？
WITH tmp AS (
SELECT uid, area, scan_time,
       rank() OVER (PARTITION BY uid ORDER BY scan_time) - rank() OVER (PARTITION BY uid, area ORDER BY scan_time) diff
FROM trail)
SELECT uid, area, min(scan_time) start_time, max(scan_time) end_time
FROM tmp
GROUP BY uid, area, diff
ORDER BY uid, start_time;

-- 问题二：假如某个用户核酸检查为阳性，找出他的伴随人员？
WITH tmp AS (
SELECT uid, area, scan_time,
       rank() OVER (PARTITION BY uid ORDER BY scan_time) - rank() OVER (PARTITION BY uid, area ORDER BY scan_time) diff
FROM trail),
tmp2 AS (
SELECT uid, area, min(scan_time) start_time, max(scan_time) end_time
FROM tmp
GROUP BY uid, area, diff
HAVING min(scan_time) + INTERVAL 30 MINUTE <= max(scan_time)
)
SELECT *
FROM tmp2 u1
JOIN tmp2 u2
ON (u1.uid <> u2.uid AND u1.area = u2.area
    AND u1.start_time + INTERVAL 10 MINUTE <= u2.end_time
    AND u2.start_time + INTERVAL 10 MINUTE <= u1.end_time)
WHERE u1.uid = '13011111111';
