-- 第一条　从2025年1月1日起，男职工和原法定退休年龄为五十五周岁的女职工，法定退休年龄每四个月延迟一个月，分别逐步延迟至六十三周岁和五十八周岁；
-- 原法定退休年龄为五十周岁的女职工，法定退休年龄每二个月延迟一个月，逐步延迟至五十五周岁。国家另有规定的，从其规定。

-- PostgreSQL实现
WITH person_info(category, birthday) AS ( -- 输入个人信息
  SELECT '女干部', '1985-01-01'::date
),
original_retirement AS ( -- 改革前退休时间
  SELECT CASE category
           WHEN '男职工' THEN birthday + INTERVAL '60 year'
           WHEN '女干部' THEN birthday + INTERVAL '55 year'
           WHEN '女员工' THEN birthday + INTERVAL '50 year'
         END retirement_age
  FROM person_info
),
delay_month(n) AS ( -- 延迟月数
  SELECT CASE category
           WHEN '男职工' THEN LEAST(36, 1+(EXTRACT(YEAR FROM age(birthday, '1965-01-01'::date))*12 + EXTRACT(month FROM age(birthday, '1965-01-01'::date))*12)::int/4)
           WHEN '女干部' THEN LEAST(36, 1+(EXTRACT(YEAR FROM age(birthday, '1970-01-01'::date))*12 + EXTRACT(month FROM age(birthday, '1970-01-01'::date))*12)::int/4)
           WHEN '女员工' THEN LEAST(60, 1+(EXTRACT(YEAR FROM age(birthday, '1975-01-01'::date))*12 + EXTRACT(month FROM age(birthday, '1975-01-01'::date))*12)::int/2)
         END
  FROM person_info
)
SELECT category, birthday, retirement_age, n, retirement_age + make_interval(0, n)
FROM person_info, original_retirement, delay_month;

category|birthday  |retirement_age         |n |?column?               |
--------+----------+-----------------------+--+-----------------------+
女干部   |1985-01-01|2040-01-01 00:00:00.000|36|2043-01-01 00:00:00.000|
