-- 员工表
-- https://github.com/dongxuyang1985/thinking_in_sql

-- 幸运员工表
CREATE TABLE luck_emp(
  emp_id int primary key,
  emp_name varchar(50) NOT NULL, 
  prize varchar(10) NOT NULL);

-- 抽奖程序
DELIMITER $$
CREATE PROCEDURE luck_draw(
  IN p_prize varchar(10),
  IN p_num   int)
BEGIN
  INSERT INTO luck_emp(emp_id, emp_name, prize)
  SELECT emp_id, emp_name, p_prize
  FROM employee
  WHERE emp_id NOT IN (SELECT emp_id FROM luck_emp)
  ORDER BY rand()
  LIMIT p_num;
  
  SELECT * FROM luck_emp;
END$$
DELIMITER ;
