-- 视频地址：https://www.bilibili.com/video/BV1rmtHetEPC/
WITH RECURSIVE investment(principal_before, total_before, principal_after, total_after, years) AS (
  SELECT 1000000.0, 1000000.0 * (1+0.055), 1000000.0, 1000000.0 * (1+0.05), 1 -- 第一年
  UNION ALL 
  SELECT total_before, total_before * (1+0.055), total_after, total_after * (1+0.05), years + 1 -- 第N年
  FROM investment
  WHERE years<5
)
SELECT *, total_before-total_after AS diff
FROM investment;
