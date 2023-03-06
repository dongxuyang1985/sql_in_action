-- 查找并删除重复记录
-- MySQL 实现
drop table if exists people;
create table people (
    id int auto_increment primary key,
    name varchar(50) not null,
    email varchar(100) not null
);

insert into people(name, email)
values ('张三', 'zhangsan@test.com'),
       ('李四', 'lisi@test.com'),
       ('王五', 'wangwu@test.com'),
       ('李斯', 'lisi@test.com'),
       ('王五', 'wangwu@test.com'),
       ('王五', 'wangwu@test.com');

-- 查找单个字段中的重复数据
select email, count(email)
from people
group by email
having count(email) > 1;
email          |count(email)|
---------------|------------|
lisi@test.com  |           2|
wangwu@test.com|           3|

-- 查看完整的重复数据
select *
from people
where email in (
      select email
      from people
      group by email
      having count(email) > 1)
order by email;
id|name  |email          |
--|------|---------------|
 2|李四  |lisi@test.com  |
 4|李斯  |lisi@test.com  |
 3|王五  |wangwu@test.com|
 5|王五  |wangwu@test.com|
 6|王五  |wangwu@test.com|

select p.*
from people p
join (
  select email
  from people
  group by email
  having count(email) > 1
) d on p.email = d.email
order by email;
id|name  |email          |
--|------|---------------|
 2|李四  |lisi@test.com  |
 4|李斯  |lisi@test.com  |
 3|王五  |wangwu@test.com|
 5|王五  |wangwu@test.com|
 6|王五  |wangwu@test.com|

-- 查找多个字段中的重复数据
select *
from people
where (name, email) in (
      select name, email
      from people
      group by name, email
      having count(1) > 1)
order by email;
id|name  |email          |
--|------|---------------|
 3|王五  |wangwu@test.com|
 5|王五  |wangwu@test.com|
 6|王五  |wangwu@test.com|

select distinct p.*
from people p
join people d on p.name = d.name and p.email = d.email
where p.id <> d.id
order by email;
id|name  |email          |
--|------|---------------|
 6|王五  |wangwu@test.com|
 5|王五  |wangwu@test.com|
 3|王五  |wangwu@test.com|

-- 删除重复数据
-- 使用 DELETE FROM 删除重复数据
delete p
from people p
join people d on p.email = d.email and p.id < d.id;

-- 利用子查询删除重复数据
delete
from people
where id not in (
      select id 
      from (select max(id) id
            from people
            group by email) t
     );

-- 利用窗口函数删除重复数据
delete
from people
where id in (
  select id
  from (
      select id,
             row_number() over (partition by email order by id desc) as row_num 
      from people) d
  where row_num > 1);
