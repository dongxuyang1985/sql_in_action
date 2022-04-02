-- 视频地址：
-- 创建示例表
create table t_user(user_id int primary key, user_name varchar(50) not null);

insert into t_user values(1, '刘一');
insert into t_user values(2, '陈二');
insert into t_user values(3, '张三');
insert into t_user values(4, '李四');
insert into t_user values(5, '王五');
insert into t_user values(6, '赵六');
insert into t_user values(7, '孙七');
insert into t_user values(8, '周八');
insert into t_user values(9, '吴九');

create table t_friend(
  user_id int not null, 
  friend_id int not null, 
  created_time timestamp not null, 
  primary key (user_id, friend_id)
);

insert into t_friend values(1, 2, current_timestamp);
insert into t_friend values(2, 1, current_timestamp);
insert into t_friend values(1, 3, current_timestamp);
insert into t_friend values(3, 1, current_timestamp);
insert into t_friend values(1, 4, current_timestamp);
insert into t_friend values(4, 1, current_timestamp);
insert into t_friend values(1, 7, current_timestamp);
insert into t_friend values(7, 1, current_timestamp);
insert into t_friend values(1, 8, current_timestamp);
insert into t_friend values(8, 1, current_timestamp);
insert into t_friend values(2, 3, current_timestamp);
insert into t_friend values(3, 2, current_timestamp);
insert into t_friend values(2, 5, current_timestamp);
insert into t_friend values(5, 2, current_timestamp);
insert into t_friend values(3, 4, current_timestamp);
insert into t_friend values(4, 3, current_timestamp);
insert into t_friend values(4, 6, current_timestamp);
insert into t_friend values(6, 4, current_timestamp);
insert into t_friend values(5, 8, current_timestamp);
insert into t_friend values(8, 5, current_timestamp);
insert into t_friend values(7, 8, current_timestamp);
insert into t_friend values(8, 7, current_timestamp);

-- 查看好友列表
SELECT u.user_id AS "好友编号", u.user_name AS "好友姓名"
FROM t_user u 
JOIN t_friend f 
ON (u.user_id = f.friend_id)
WHERE f.user_id = 1;

-- 查看共同好友
WITH f1(user_id, user_name) AS (
SELECT u.user_id, u.user_name
FROM t_friend f
JOIN t_user u ON (f.friend_id = u.user_id)
WHERE f.user_id = 3),
f2(user_id, user_name) AS (
SELECT u.user_id, u.user_name
FROM t_friend f
JOIN t_user u ON (f.friend_id = u.user_id)
WHERE f.user_id = 4)
SELECT *
FROM f1
JOIN f2 ON (f1.user_id = f2.user_id);

-- 推荐好友
WITH friend(user_id, user_name) AS (
SELECT u.user_id, u.user_name
FROM t_friend f
JOIN t_user u ON (f.friend_id = u.user_id)
WHERE f.user_id = 2),
fof(user_id, user_name) AS (
  SELECT u.user_id, u.user_name
  FROM t_friend f 
  JOIN t_user u ON (u.user_id = f.friend_id)
  JOIN friend ON (f.user_id = friend.user_id)
  WHERE f.friend_id != 2
  AND f.friend_id NOT IN (SELECT user_id FROM friend)
)
SELECT user_id,user_name,count(*) FROM fof
GROUP BY u.user_id, u.user_name;

-- 关系链
WITH RECURSIVE relation(uid, fid, hops, path) AS (
SELECT user_id, friend_id, 0 AS hops, concat(',', user_id, ',', friend_id) AS path
FROM t_friend tf 
WHERE user_id= 6
UNION ALL 
SELECT r.uid, f.friend_id, hops+1, concat(r.PATH, ',', f.friend_id)
FROM relation r
JOIN t_friend f ON (r.fid = f.user_id)
WHERE instr(r.PATH,concat(',',f.friend_id,','))=0
AND hops <= 6)
SELECT uid, fid, hops, SUBSTR(path, 2) AS path
FROM relation
WHERE fid = 7
ORDER BY hops;

-- 平均最少间隔的人数
WITH RECURSIVE relation(uid, fid, hops, path) AS (
SELECT user_id, friend_id, 0 AS hops, concat(',', user_id, ',', friend_id) AS path
FROM t_friend tf 
UNION ALL 
SELECT r.uid, f.friend_id, hops+1, concat(r.PATH, ',', f.friend_id)
FROM relation r
JOIN t_friend f ON (r.fid = f.user_id)
WHERE instr(r.PATH,concat(',',f.friend_id,','))=0),
mh(uid, fid, min_hops) AS (
  SELECT uid, fid, MIN(hops) min_hops
  FROM relation 
  GROUP BY uid, fid
)
SELECT AVG(min_hops)
FROM mh;
