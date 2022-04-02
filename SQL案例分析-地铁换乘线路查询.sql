-- 视频地址：https://www.bilibili.com/video/BV1Uu411i7jf
-- 创建地铁线路表
CREATE TABLE bj_subway(
  station_id INT NOT NULL PRIMARY KEY,
  line_name  VARCHAR(20) NOT NULL,
  station_name VARCHAR(50) NOT NULL,
  next_station VARCHAR(50) NOT NULL,
  direction VARCHAR(50) NOT NULL
);

-- 初始化数据，目前只有1号线、2号线和8号线的数据
INSERT INTO bj_subway VALUES (1,'1号线','苹果园','古城','苹果园—四惠东');
INSERT INTO bj_subway VALUES (2,'1号线','古城','八角游乐园','苹果园—四惠东');
INSERT INTO bj_subway VALUES (3,'1号线','八角游乐园','八宝山','苹果园—四惠东');
INSERT INTO bj_subway VALUES (4,'1号线','八宝山','玉泉路','苹果园—四惠东');
INSERT INTO bj_subway VALUES (5,'1号线','玉泉路','五棵松','苹果园—四惠东');
INSERT INTO bj_subway VALUES (6,'1号线','五棵松','万寿路','苹果园—四惠东');
INSERT INTO bj_subway VALUES (7,'1号线','万寿路','公主坟','苹果园—四惠东');
INSERT INTO bj_subway VALUES (8,'1号线','公主坟','军事博物馆','苹果园—四惠东');
INSERT INTO bj_subway VALUES (9,'1号线','军事博物馆','木樨地','苹果园—四惠东');
INSERT INTO bj_subway VALUES (10,'1号线','木樨地','南礼士路','苹果园—四惠东');
INSERT INTO bj_subway VALUES (11,'1号线','南礼士路','复兴门','苹果园—四惠东');
INSERT INTO bj_subway VALUES (12,'1号线','复兴门','西单','苹果园—四惠东');
INSERT INTO bj_subway VALUES (13,'1号线','西单','天安门西','苹果园—四惠东');
INSERT INTO bj_subway VALUES (14,'1号线','天安门西','天安门东','苹果园—四惠东');
INSERT INTO bj_subway VALUES (15,'1号线','天安门东','王府井','苹果园—四惠东');
INSERT INTO bj_subway VALUES (16,'1号线','王府井','东单','苹果园—四惠东');
INSERT INTO bj_subway VALUES (17,'1号线','东单','建国门','苹果园—四惠东');
INSERT INTO bj_subway VALUES (18,'1号线','建国门','永安里','苹果园—四惠东');
INSERT INTO bj_subway VALUES (19,'1号线','永安里','国贸','苹果园—四惠东');
INSERT INTO bj_subway VALUES (20,'1号线','国贸','大望路','苹果园—四惠东');
INSERT INTO bj_subway VALUES (21,'1号线','大望路','四惠','苹果园—四惠东');
INSERT INTO bj_subway VALUES (22,'1号线','四惠','四惠东','苹果园—四惠东');
INSERT INTO bj_subway VALUES (23,'1号线','四惠东','四惠','四惠东—苹果园');
INSERT INTO bj_subway VALUES (24,'1号线','四惠','大望路','四惠东—苹果园');
INSERT INTO bj_subway VALUES (25,'1号线','大望路','国贸','四惠东—苹果园');
INSERT INTO bj_subway VALUES (26,'1号线','国贸','永安里','四惠东—苹果园');
INSERT INTO bj_subway VALUES (27,'1号线','永安里','建国门','四惠东—苹果园');
INSERT INTO bj_subway VALUES (28,'1号线','建国门','东单','四惠东—苹果园');
INSERT INTO bj_subway VALUES (29,'1号线','东单','王府井','四惠东—苹果园');
INSERT INTO bj_subway VALUES (30,'1号线','王府井','天安门东','四惠东—苹果园');
INSERT INTO bj_subway VALUES (31,'1号线','天安门东','天安门西','四惠东—苹果园');
INSERT INTO bj_subway VALUES (32,'1号线','天安门西','西单','四惠东—苹果园');
INSERT INTO bj_subway VALUES (33,'1号线','西单','复兴门','四惠东—苹果园');
INSERT INTO bj_subway VALUES (34,'1号线','复兴门','南礼士路','四惠东—苹果园');
INSERT INTO bj_subway VALUES (35,'1号线','南礼士路','木樨地','四惠东—苹果园');
INSERT INTO bj_subway VALUES (36,'1号线','木樨地','军事博物馆','四惠东—苹果园');
INSERT INTO bj_subway VALUES (37,'1号线','军事博物馆','公主坟','四惠东—苹果园');
INSERT INTO bj_subway VALUES (38,'1号线','公主坟','万寿路','四惠东—苹果园');
INSERT INTO bj_subway VALUES (39,'1号线','万寿路','五棵松','四惠东—苹果园');
INSERT INTO bj_subway VALUES (40,'1号线','五棵松','玉泉路','四惠东—苹果园');
INSERT INTO bj_subway VALUES (41,'1号线','玉泉路','八宝山','四惠东—苹果园');
INSERT INTO bj_subway VALUES (42,'1号线','八宝山','八角游乐园','四惠东—苹果园');
INSERT INTO bj_subway VALUES (43,'1号线','八角游乐园','古城','四惠东—苹果园');
INSERT INTO bj_subway VALUES (44,'1号线','古城','苹果园','四惠东—苹果园');
INSERT INTO bj_subway VALUES (45,'2号线','西直门','积水潭','外环');
INSERT INTO bj_subway VALUES (46,'2号线','积水潭','鼓楼大街','外环');
INSERT INTO bj_subway VALUES (47,'2号线','鼓楼大街','安定门','外环');
INSERT INTO bj_subway VALUES (48,'2号线','安定门','雍和宫','外环');
INSERT INTO bj_subway VALUES (49,'2号线','雍和宫','东直门','外环');
INSERT INTO bj_subway VALUES (50,'2号线','东直门','东四十条','外环');
INSERT INTO bj_subway VALUES (51,'2号线','东四十条','朝阳门','外环');
INSERT INTO bj_subway VALUES (52,'2号线','朝阳门','建国门','外环');
INSERT INTO bj_subway VALUES (53,'2号线','建国门','北京站','外环');
INSERT INTO bj_subway VALUES (54,'2号线','北京站','崇文门','外环');
INSERT INTO bj_subway VALUES (55,'2号线','崇文门','前门','外环');
INSERT INTO bj_subway VALUES (56,'2号线','前门','和平门','外环');
INSERT INTO bj_subway VALUES (57,'2号线','和平门','宣武门','外环');
INSERT INTO bj_subway VALUES (58,'2号线','宣武门','长椿街','外环');
INSERT INTO bj_subway VALUES (59,'2号线','长椿街','复兴门','外环');
INSERT INTO bj_subway VALUES (60,'2号线','复兴门','阜成门','外环');
INSERT INTO bj_subway VALUES (61,'2号线','阜成门','车公庄','外环');
INSERT INTO bj_subway VALUES (62,'2号线','车公庄','西直门','外环');
INSERT INTO bj_subway VALUES (63,'2号线','车公庄','阜成门','内环');
INSERT INTO bj_subway VALUES (64,'2号线','阜成门','复兴门','内环');
INSERT INTO bj_subway VALUES (65,'2号线','复兴门','长椿街','内环');
INSERT INTO bj_subway VALUES (66,'2号线','长椿街','宣武门','内环');
INSERT INTO bj_subway VALUES (67,'2号线','宣武门','和平门','内环');
INSERT INTO bj_subway VALUES (68,'2号线','和平门','前门','内环');
INSERT INTO bj_subway VALUES (69,'2号线','前门','崇文门','内环');
INSERT INTO bj_subway VALUES (70,'2号线','崇文门','北京站','内环');
INSERT INTO bj_subway VALUES (71,'2号线','北京站','建国门','内环');
INSERT INTO bj_subway VALUES (72,'2号线','建国门','朝阳门','内环');
INSERT INTO bj_subway VALUES (73,'2号线','朝阳门','东四十条','内环');
INSERT INTO bj_subway VALUES (74,'2号线','东四十条','东直门','内环');
INSERT INTO bj_subway VALUES (75,'2号线','东直门','雍和宫','内环');
INSERT INTO bj_subway VALUES (76,'2号线','雍和宫','安定门','内环');
INSERT INTO bj_subway VALUES (77,'2号线','安定门','鼓楼大街','内环');
INSERT INTO bj_subway VALUES (78,'2号线','鼓楼大街','积水潭','内环');
INSERT INTO bj_subway VALUES (79,'2号线','积水潭','西直门','内环');
INSERT INTO bj_subway VALUES (80,'2号线','西直门','车公庄','外环');
INSERT INTO bj_subway VALUES (81, '8号线', '朱辛庄', '育知路', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (82, '8号线', '育知路', '平西府', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (83, '8号线', '平西府', '回龙观东大街', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (84, '8号线', '回龙观东大街', '霍营', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (85, '8号线', '霍营', '育新', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (86, '8号线', '育新', '西小口', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (87, '8号线', '西小口', '永泰庄', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (88, '8号线', '永泰庄', '林萃桥', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (89, '8号线', '林萃桥', '森林公园南门', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (90, '8号线', '森林公园南门', '奥林匹克公园', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (91, '8号线', '奥林匹克公园', '奥体中心', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (92, '8号线', '奥体中心', '北土城', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (93, '8号线', '北土城', '安华桥', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (94, '8号线', '安华桥', '安德里北街', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (95, '8号线', '安德里北街', '鼓楼大街', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (96, '8号线', '鼓楼大街', '什刹海', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (97, '8号线', '什刹海', '南锣鼓巷', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (98, '8号线', '南锣鼓巷', '中国美术馆', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (99, '8号线', '中国美术馆', '金鱼胡同', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (100, '8号线', '金鱼胡同', '王府井', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (101, '8号线', '王府井', '前门', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (102, '8号线', '前门', '珠市口', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (103, '8号线', '珠市口', '天桥', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (104, '8号线', '天桥', '永定门外', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (105, '8号线', '永定门外', '木樨园', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (106, '8号线', '木樨园', '海户屯', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (107, '8号线', '海户屯', '大红门', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (108, '8号线', '大红门', '大红门南', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (109, '8号线', '大红门南', '和义', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (110, '8号线', '和义', '东高地', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (111, '8号线', '东高地', '火箭万源', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (112, '8号线', '火箭万源', '五福堂', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (113, '8号线', '五福堂', '德茂', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (114, '8号线', '德茂', '瀛海', '朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (115, '8号线', '瀛海', '德茂', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (116, '8号线', '德茂', '五福堂', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (117, '8号线', '五福堂', '火箭万源', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (118, '8号线', '火箭万源', '东高地', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (119, '8号线', '东高地', '和义', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (120, '8号线', '和义', '大红门南', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (121, '8号线', '大红门南', '大红门', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (122, '8号线', '大红门', '海户屯', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (123, '8号线', '海户屯', '木樨园', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (124, '8号线', '木樨园', '永定门外', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (125, '8号线', '永定门外', '天桥', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (126, '8号线', '天桥', '珠市口', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (127, '8号线', '珠市口', '前门', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (128, '8号线', '前门', '王府井', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (129, '8号线', '王府井', '金鱼胡同', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (130, '8号线', '金鱼胡同', '中国美术馆', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (131, '8号线', '中国美术馆', '南锣鼓巷', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (132, '8号线', '南锣鼓巷', '什刹海', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (133, '8号线', '什刹海', '鼓楼大街', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (134, '8号线', '鼓楼大街', '安德里北街', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (135, '8号线', '安德里北街', '安华桥', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (136, '8号线', '安华桥', '北土城', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (137, '8号线', '北土城', '奥体中心', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (138, '8号线', '奥体中心', '奥林匹克公园', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (139, '8号线', '奥林匹克公园', '森林公园南门', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (140, '8号线', '森林公园南门', '林萃桥', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (141, '8号线', '林萃桥', '永泰庄', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (142, '8号线', '永泰庄', '西小口', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (143, '8号线', '西小口', '育新', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (144, '8号线', '育新', '霍营', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (145, '8号线', '霍营', '回龙观东大街', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (146, '8号线', '回龙观东大街', '平西府', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (147, '8号线', '平西府', '育知路', '瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (148, '8号线', '育知路', '朱辛庄', '瀛海-朱辛庄');

-- 查询“王府井”到“积水潭”的换乘路线
-- MySQL
WITH RECURSIVE transfer (start_station, stop_station, stops, path) AS (
  SELECT station_name, next_station, 1, CAST(CONCAT(line_name,station_name , '->', line_name,next_station) AS CHAR(1000))
    FROM bj_subway WHERE station_name = '王府井'
   UNION ALL
  SELECT p.start_station, e.next_station, stops + 1, CONCAT(p.path, '->', e.line_name, e.next_station)
    FROM transfer p
    JOIN bj_subway e
      ON p.stop_station = e.station_name AND (INSTR(p.path, e.next_station) = 0)
)
SELECT * FROM transfer WHERE stop_station ='积水潭';

-- Oracle
WITH transfer (start_station, stop_station, stops, path) AS (
  SELECT station_name, next_station, 1, line_name||station_name||'->'||line_name||next_station
    FROM bj_subway WHERE station_name = '王府井'
   UNION ALL
  SELECT p.start_station, e.next_station, stops + 1, p.path||'->'||e.line_name||e.next_station
    FROM transfer p
    JOIN bj_subway e
      ON p.stop_station = e.station_name AND (INSTR(p.path, e.next_station) = 0)
)
SELECT * FROM transfer WHERE stop_station ='积水潭';

-- SQL Server
WITH transfer(start_station, stop_station, stops, paths) AS (
SELECT station_name, next_station, 1 stops, 
       CAST(concat(line_name,station_name,'->',line_name,next_station) AS varchar(1000)) AS paths
FROM bj_subway
WHERE station_name = '王府井'
UNION ALL 
SELECT t.start_station, s.next_station, stops+1, CAST(concat(paths, '->', s.line_name, s.next_station)  AS varchar(1000))
FROM transfer t
JOIN bj_subway s 
ON (t.stop_station = s.station_name AND charindex(s.next_station, paths)=0)
)
SELECT *
FROM transfer
WHERE stop_station = '积水潭';

-- PostgreSQL
WITH RECURSIVE transfer (start_station, stop_station, stops, path) AS (
  SELECT station_name, next_station, 1, ARRAY[station_name::text, next_station::text]
    FROM bj_subway WHERE station_name = '王府井'
   UNION ALL
  SELECT p.start_station, e.next_station, stops + 1, p.path || ARRAY[e.next_station::text]
    FROM transfer p
    JOIN bj_subway e
      ON p.stop_station = e.station_name AND NOT e.next_station = ANY(p.path)
)
SELECT * FROM transfer WHERE stop_station ='积水潭';

-- SQLite
WITH RECURSIVE transfer(start_station, stop_station, stops, paths) AS (
SELECT station_name, next_station, 1 stops, 
       line_name||station_name||'->'||line_name||next_station AS paths
FROM bj_subway
WHERE station_name = '王府井'
UNION ALL 
SELECT t.start_station, s.next_station, stops+1, paths||'->'||s.line_name||s.next_station
FROM transfer t
JOIN bj_subway s 
ON (t.stop_station = s.station_name AND instr(paths, s.next_station)=0)
)
SELECT *
FROM transfer
WHERE stop_station = '积水潭';
