-- 视频地址：
-- 示例表
create table customer(
  cid int auto_increment primary key,
  cname varchar(50) not null,
  register_time datetime not null,
  recommender varchar(50) character set utf8
) engine=innodb default charset=utf8mb4;

create unique index uk_customer_cname on customer(cname);

insert into customer(cname, register_time, recommender) values('张三', now(), '');
insert into customer(cname, register_time, recommender) values('李四', now(), '张三'),('王五', now(), '李四');

-- 查找通过某人推荐，在指定时间段内注册的用户
select c.*
from customer c
join customer r on (c.recommender = r.cname )
where r.cid = 1
and c.register_time between now() - interval 1 day and now();
