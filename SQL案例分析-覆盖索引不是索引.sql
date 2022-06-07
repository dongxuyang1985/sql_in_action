-- 视频地址：

CREATE TABLE test(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  col1 INT,
  col2 INT,
  col3 INT
) ENGINE = InnoDB;

SET SESSION cte_max_recursion_depth = 999999;

INSERT INTO test(col1, col2, col3)
WITH RECURSIVE d AS (
  SELECT 1 n, 1000*rand() c1, 1000*rand() c2, 1000*rand() c3
  UNION ALL
  SELECT n+1, 1000*rand(), 1000*rand(), 1000*rand()
  FROM d
  WHERE n<100000
)
SELECT c1, c2, c3 FROM d;
