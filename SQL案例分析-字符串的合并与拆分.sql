# 视频地址：https://www.bilibili.com/video/BV1644y137iT

# 员工表的创建脚本：https://github.com/dongxuyang1985/thinking_in_sql
# 将每个部门中的多个员工姓名合并成一行数据，多个姓名之间使用分号进行分隔
SELECT d.dept_name, GROUP_CONCAT(e.emp_name)
FROM employee e
JOIN department d ON (e.dept_id = d.dept_id)
GROUP BY dept_name;

SELECT d.dept_name, GROUP_CONCAT(e.emp_name SEPARATOR ';')
FROM employee e
JOIN department d ON (e.dept_id = d.dept_id)
GROUP BY dept_name;

# 对于每个部门中的员工，按照入职日期进行排序，入职日期相同按照工号进行排序
SELECT d.dept_name, GROUP_CONCAT(e.emp_name ORDER BY e.hire_date, e.emp_id SEPARATOR ';')
FROM employee e
JOIN department d ON (e.dept_id = d.dept_id)
GROUP BY dept_name;

# 使用DISTINCT排除每个分组中的重复数据
SELECT d.dept_name, GROUP_CONCAT(DISTINCT sex)
FROM employee e
JOIN department d ON (e.dept_id = d.dept_id)
GROUP BY dept_name;


# 创建示例表合数据
CREATE TABLE movies(id int primary key, name varchar(50), class varchar(200));
INSERT INTO movies VALUES (1, '千与千寻', '动画、剧情、奇幻');
INSERT INTO movies VALUES (2, '阿甘正传', '剧情、爱情');
INSERT INTO movies VALUES (3, '唐伯虎点秋香', '喜剧、古装、爱情’);

# 拆分字符串
WITH RECURSIVE t(id, name, sub, str) AS (
    SELECT id, name, substr(concat(class,'、'), 1, instr(concat(class,'、'), '、')-1), substr(concat(class,'、'), instr(concat(class,'、'), '、')+1) 
    FROM movies
    UNION ALL
    SELECT id, name,substr(str, 1, instr(str, '、')-1), substr(str, instr(str, '、')+1)
    FROM t WHERE instr(str, '、')>0
) 
SELECT id, name, sub, str
FROM t
ORDER BY id;
