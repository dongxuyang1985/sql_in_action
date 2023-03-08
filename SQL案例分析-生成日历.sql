-- MySQL
WITH RECURSIVE d(ymd) AS ( -- 构造当前月份数据
  SELECT subdate(current_date + 1, dayofmonth(current_date))
  UNION ALL
  SELECT adddate(ymd, 1)
  FROM d
  WHERE ymd<last_day(current_date)
),
d2 AS ( -- 获取每一天属于这一年的第几周、月份中的第几天、星期中的第几天
  SELECT ymd, week(ymd,1) wk, dayofmonth(ymd) dm, dayofweek(ymd) dw
FROM d)
SELECT min(CASE dw WHEN 2 THEN dm END) AS "星期一",
	   min(CASE dw WHEN 3 THEN dm END) AS "星期二",
	   min(CASE dw WHEN 4 THEN dm END) AS "星期三",
	   min(CASE dw WHEN 5 THEN dm END) AS "星期四",
	   min(CASE dw WHEN 6 THEN dm END) AS "星期五",
	   min(CASE dw WHEN 7 THEN dm END) AS "星期六",
	   min(CASE dw WHEN 1 THEN dm END) AS "星期日"
FROM d2
GROUP BY wk;
