-- 红包总金额100元, 共计10个红包，每个人至少0.01元，乘以系数0.5可以防止某个人的红包金额过大
WITH RECURSIVE t AS (
  SELECT 1 n, round(rand()*(100-10*0.01)*0.5,2) amount, 100-10*0.01 balance
  UNION ALL 
  SELECT n+1,CASE WHEN n<9 THEN round(rand()*(balance-amount)*0.5,2) ELSE balance-amount END amount, balance-amount
  FROM t
  WHERE n<10
)
SELECT n,amount+0.01 FROM t;
