-- 员工表创建脚本
-- https://github.com/dongxuyang1985/thinking_in_sql

-- 水平柱状图
-- MySQL/MariaDB
SELECT d.dept_name "部门名称",
       count(e.emp_id) "员工数量",
       repeat('▇', count(e.emp_id)) "柱状图"
FROM department d
LEFT JOIN employee e ON (d.dept_id = e.dept_id)
GROUP BY dept_name 
ORDER BY count(*) DESC;

-- Microsoft SQL Server
SELECT d.dept_name "部门名称",
       count(e.emp_id) "员工数量",
       replicate('▇', count(e.emp_id)) "柱状图"
FROM department d
LEFT JOIN employee e ON (d.dept_id = e.dept_id)
GROUP BY dept_name 
ORDER BY count(*) DESC;

-- PostgreSQL
SELECT d.dept_name "部门名称",
       count(e.emp_id) "员工数量",
       repeat('▇', count(e.emp_id)::integer) "柱状图"
FROM department d
LEFT JOIN employee e ON (d.dept_id = e.dept_id)
GROUP BY dept_name 
ORDER BY count(*) DESC;

-- Oracle
SELECT d.dept_name "部门名称",
       count(e.emp_id) "员工数量",
       lpad('▇', count(e.emp_id), '▇') "柱状图"
FROM department d
LEFT JOIN employee e ON (d.dept_id = e.dept_id)
GROUP BY dept_name 
ORDER BY count(*) DESC;

-- SQLite
SELECT d.dept_name "部门名称",
       count(e.emp_id) "员工数量",
       replace(hex(zeroblob(count(e.emp_id))), '00', '█') "柱状图"
FROM department d
LEFT JOIN employee e ON (d.dept_id = e.dept_id)
GROUP BY dept_name 
ORDER BY count(*) DESC;

-- 垂直柱状图
-- MySQL、Microsoft SQL Server以及SQLite
 WITH d AS (
  SELECT row_number() OVER (PARTITION BY dept_id ORDER BY emp_id) rn,
         CASE WHEN dept_id=1 THEN '█' END dept1,
         CASE WHEN dept_id=2 THEN '█' END dept2,
         CASE WHEN dept_id=3 THEN '█' END dept3,
         CASE WHEN dept_id=4 THEN '█' END dept4,
         CASE WHEN dept_id=5 THEN '█' END dept5,
         CASE WHEN dept_id=6 THEN '█' END dept6
  FROM employee
) 
SELECT min(dept1) "行政管理部",
       min(dept2) "人力资源部",
       min(dept3) "财务部",
       min(dept4) "研发部",
       min(dept5) "销售部",
       min(dept6) "保卫部"
FROM d
GROUP BY rn
ORDER BY 1, 2, 3, 4, 5, 6;

--  Oracle、PostgreSQL
WITH d AS (
  SELECT row_number() OVER (PARTITION BY dept_id ORDER BY emp_id) rn,
         CASE WHEN dept_id=1 THEN '█' END dept1,
         CASE WHEN dept_id=2 THEN '█' END dept2,
         CASE WHEN dept_id=3 THEN '█' END dept3,
         CASE WHEN dept_id=4 THEN '█' END dept4,
         CASE WHEN dept_id=5 THEN '█' END dept5,
         CASE WHEN dept_id=6 THEN '█' END dept6
  FROM employee
) 
SELECT min(dept1) "行政管理部",
       min(dept2) "人力资源部",
       min(dept3) "财务部",
       min(dept4) "研发部",
       min(dept5) "销售部",
       min(dept6) "保卫部"
FROM d
GROUP BY rn
ORDER BY 1 DESC, 2 DESC, 3 DESC, 4 DESC, 5 DESC, 6 DESC;
