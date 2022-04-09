-- 创建日历表
CREATE TABLE calendar(
  calendar_id    INT NOT NULL PRIMARY KEY, -- 日历编号
  calendar_date  DATE NOT NULL, -- 日历日期
  calendar_year  INT NOT NULL, -- 日历年
  calendar_month INT NOT NULL, -- 日历月
  calendar_day   INT NOT NULL, -- 日历日
  day_of_year    INT NOT NULL, -- 当年中的第几天
  day_of_month   INT NOT NULL, -- 当月中的第几天
  day_of_week    INT NOT NULL, -- 一周中的第几天（星期天为1）
  is_work_day    VARCHAR(1) DEFAULT 'Y' NOT NULL , -- 是否工作日
  CONSTRAINT uk_calendar UNIQUE (calendar_date)
);

--生成2022-01-01开始的一年数据
INSERT INTO calendar
WITH RECURSIVE c(n, dt, y, m, d, doy, dom, dow, work_day) AS (
SELECT 1, '2022-01-01', year('2022-01-01'), month('2022-01-01'), day('2022-01-01'),
       dayofyear('2022-01-01'), dayofmonth('2022-01-01'), dayofweek('2022-01-01'),
       CASE WHEN dayofweek('2022-01-01') IN (2,3,4,5,6) THEN 'Y' ELSE 'N' END work_day
UNION ALL
SELECT n+1,dt + INTERVAL '1' DAY,year(dt + INTERVAL '1' DAY), month(dt + INTERVAL '1' DAY), day(dt + INTERVAL '1' DAY),
       dayofyear(dt + INTERVAL '1' DAY), dayofmonth(dt + INTERVAL '1' DAY), dayofweek(dt + INTERVAL '1' DAY),
       CASE WHEN dayofweek(dt + INTERVAL '1' DAY) IN (2,3,4,5,6) THEN 'Y' ELSE 'N' END work_day
FROM c
WHERE n<365
)
SELECT *
FROM c;
