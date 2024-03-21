-- 视频地址：https://www.bilibili.com/video/BV1Uu411i7jf
-- 创建地铁线路表
CREATE TABLE bj_subway(
  station_id INT NOT NULL PRIMARY KEY,
  line_name  VARCHAR(20) NOT NULL,
  station_name VARCHAR(50) NOT NULL,
  next_station VARCHAR(50) NOT NULL,
  direction VARCHAR(50) NOT NULL
);

-- 初始化数据（2024年）
INSERT INTO bj_subway VALUES (1,'1号线/八通线','苹果园','古城','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (2,'1号线/八通线','古城','八角游乐园','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (3,'1号线/八通线','八角游乐园','八宝山','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (4,'1号线/八通线','八宝山','玉泉路','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (5,'1号线/八通线','玉泉路','五棵松','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (6,'1号线/八通线','五棵松','万寿路','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (7,'1号线/八通线','万寿路','公主坟','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (8,'1号线/八通线','公主坟','军事博物馆','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (9,'1号线/八通线','军事博物馆','木樨地','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (10,'1号线/八通线','木樨地','南礼士路','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (11,'1号线/八通线','南礼士路','复兴门','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (12,'1号线/八通线','复兴门','西单','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (13,'1号线/八通线','西单','天安门西','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (14,'1号线/八通线','天安门西','天安门东','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (15,'1号线/八通线','天安门东','王府井','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (16,'1号线/八通线','王府井','东单','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (17,'1号线/八通线','东单','建国门','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (18,'1号线/八通线','建国门','永安里','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (19,'1号线/八通线','永安里','国贸','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (20,'1号线/八通线','国贸','大望路','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (21,'1号线/八通线','大望路','四惠','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (22,'1号线/八通线','四惠','四惠东','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (23,'1号线/八通线','四惠东','高碑店','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (24,'1号线/八通线','高碑店','传媒大学','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (25,'1号线/八通线','传媒大学','双桥','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (26,'1号线/八通线','双桥','管庄','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (27,'1号线/八通线','管庄','八里桥','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (28,'1号线/八通线','八里桥','通州北苑','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (29,'1号线/八通线','通州北苑','果园','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (30,'1号线/八通线','果园','九棵树','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (31,'1号线/八通线','九棵树','梨园','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (32,'1号线/八通线','梨园','临河里','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (33,'1号线/八通线','临河里','土桥','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (34,'1号线/八通线','土桥','花庄','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (35,'1号线/八通线','花庄','环球度假区','苹果园—环球度假区');
INSERT INTO bj_subway VALUES (36,'1号线/八通线','环球度假区','花庄','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (37,'1号线/八通线','花庄','土桥','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (38,'1号线/八通线','土桥','临河里','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (39,'1号线/八通线','临河里','梨园','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (40,'1号线/八通线','梨园','九棵树','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (41,'1号线/八通线','九棵树','果园','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (42,'1号线/八通线','果园','通州北苑','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (43,'1号线/八通线','通州北苑','八里桥','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (44,'1号线/八通线','八里桥','管庄','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (45,'1号线/八通线','管庄','双桥','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (46,'1号线/八通线','双桥','传媒大学','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (47,'1号线/八通线','传媒大学','高碑店','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (48,'1号线/八通线','高碑店','四惠东','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (49,'1号线/八通线','四惠东','四惠','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (50,'1号线/八通线','四惠','大望路','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (51,'1号线/八通线','大望路','国贸','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (52,'1号线/八通线','国贸','永安里','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (53,'1号线/八通线','永安里','建国门','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (54,'1号线/八通线','建国门','东单','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (55,'1号线/八通线','东单','王府井','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (56,'1号线/八通线','王府井','天安门东','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (57,'1号线/八通线','天安门东','天安门西','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (58,'1号线/八通线','天安门西','西单','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (59,'1号线/八通线','西单','复兴门','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (60,'1号线/八通线','复兴门','南礼士路','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (61,'1号线/八通线','南礼士路','木樨地','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (62,'1号线/八通线','木樨地','军事博物馆','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (63,'1号线/八通线','军事博物馆','公主坟','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (64,'1号线/八通线','公主坟','万寿路','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (65,'1号线/八通线','万寿路','五棵松','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (66,'1号线/八通线','五棵松','玉泉路','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (67,'1号线/八通线','玉泉路','八宝山','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (68,'1号线/八通线','八宝山','八角游乐园','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (69,'1号线/八通线','八角游乐园','古城','环球度假区—苹果园');
INSERT INTO bj_subway VALUES (70,'1号线/八通线','古城','苹果园','环球度假区—苹果园');

INSERT INTO bj_subway VALUES (71,'2号线','西直门','积水潭','内环');
INSERT INTO bj_subway VALUES (72,'2号线','积水潭','鼓楼大街','内环');
INSERT INTO bj_subway VALUES (73,'2号线','鼓楼大街','安定门','内环');
INSERT INTO bj_subway VALUES (74,'2号线','安定门','雍和宫','内环');
INSERT INTO bj_subway VALUES (75,'2号线','雍和宫','东直门','内环');
INSERT INTO bj_subway VALUES (76,'2号线','东直门','东四十条','内环');
INSERT INTO bj_subway VALUES (77,'2号线','东四十条','朝阳门','内环');
INSERT INTO bj_subway VALUES (78,'2号线','朝阳门','建国门','内环');
INSERT INTO bj_subway VALUES (79,'2号线','建国门','北京站','内环');
INSERT INTO bj_subway VALUES (80,'2号线','北京站','崇文门','内环');
INSERT INTO bj_subway VALUES (81,'2号线','崇文门','前门','内环');
INSERT INTO bj_subway VALUES (82,'2号线','前门','和平门','内环');
INSERT INTO bj_subway VALUES (83,'2号线','和平门','宣武门','内环');
INSERT INTO bj_subway VALUES (84,'2号线','宣武门','长椿街','内环');
INSERT INTO bj_subway VALUES (85,'2号线','长椿街','复兴门','内环');
INSERT INTO bj_subway VALUES (86,'2号线','复兴门','阜成门','内环');
INSERT INTO bj_subway VALUES (87,'2号线','阜成门','车公庄','内环');
INSERT INTO bj_subway VALUES (88,'2号线','车公庄','西直门','内环');
INSERT INTO bj_subway VALUES (89,'2号线','车公庄','阜成门','外环');
INSERT INTO bj_subway VALUES (90,'2号线','阜成门','复兴门','外环');
INSERT INTO bj_subway VALUES (91,'2号线','复兴门','长椿街','外环');
INSERT INTO bj_subway VALUES (92,'2号线','长椿街','宣武门','外环');
INSERT INTO bj_subway VALUES (93,'2号线','宣武门','和平门','外环');
INSERT INTO bj_subway VALUES (94,'2号线','和平门','前门','外环');
INSERT INTO bj_subway VALUES (95,'2号线','前门','崇文门','外环');
INSERT INTO bj_subway VALUES (96,'2号线','崇文门','北京站','外环');
INSERT INTO bj_subway VALUES (97,'2号线','北京站','建国门','外环');
INSERT INTO bj_subway VALUES (98,'2号线','建国门','朝阳门','外环');
INSERT INTO bj_subway VALUES (99,'2号线','朝阳门','东四十条','外环');
INSERT INTO bj_subway VALUES (100,'2号线','东四十条','东直门','外环');
INSERT INTO bj_subway VALUES (101,'2号线','东直门','雍和宫','外环');
INSERT INTO bj_subway VALUES (102,'2号线','雍和宫','安定门','外环');
INSERT INTO bj_subway VALUES (103,'2号线','安定门','鼓楼大街','外环');
INSERT INTO bj_subway VALUES (104,'2号线','鼓楼大街','积水潭','外环');
INSERT INTO bj_subway VALUES (105,'2号线','积水潭','西直门','外环');
INSERT INTO bj_subway VALUES (106,'2号线','西直门','车公庄','外环');

INSERT INTO bj_subway VALUES (107,'4号线大兴线','安河桥北','北宫门','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (108,'4号线大兴线','北宫门','西苑','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (109,'4号线大兴线','西苑','圆明园','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (110,'4号线大兴线','圆明园','北京大学东门','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (111,'4号线大兴线','北京大学东门','中关村','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (112,'4号线大兴线','中关村','海淀黄庄','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (113,'4号线大兴线','海淀黄庄','人民大学','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (114,'4号线大兴线','人民大学','魏公村','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (115,'4号线大兴线','魏公村','国家图书馆','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (116,'4号线大兴线','国家图书馆','动物园','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (117,'4号线大兴线','动物园','西直门','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (118,'4号线大兴线','西直门','新街口','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (119,'4号线大兴线','新街口','平安里','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (120,'4号线大兴线','平安里','西四','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (121,'4号线大兴线','西四','灵境胡同','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (122,'4号线大兴线','灵境胡同','西单','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (123,'4号线大兴线','西单','宣武门','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (124,'4号线大兴线','宣武门','菜市口','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (125,'4号线大兴线','菜市口','陶然亭','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (126,'4号线大兴线','陶然亭','北京南站','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (127,'4号线大兴线','北京南站','马家堡','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (128,'4号线大兴线','马家堡','角门西','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (129,'4号线大兴线','角门西','公益西桥','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (130,'4号线大兴线','公益西桥','新宫','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (131,'4号线大兴线','新宫','西红门','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (132,'4号线大兴线','西红门','高米店北','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (133,'4号线大兴线','高米店北','高米店南','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (134,'4号线大兴线','高米店南','枣园','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (135,'4号线大兴线','枣园','清源路','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (136,'4号线大兴线','清源路','黄村西大街','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (137,'4号线大兴线','黄村西大街','黄村火车站','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (138,'4号线大兴线','黄村火车站','义和庄','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (139,'4号线大兴线','义和庄','生物医药基地','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (140,'4号线大兴线','生物医药基地','天宫院','安河桥北-天宫院');
INSERT INTO bj_subway VALUES (141,'4号线大兴线','天宫院','生物医药基地','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (142,'4号线大兴线','生物医药基地','义和庄','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (143,'4号线大兴线','义和庄','黄村火车站','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (144,'4号线大兴线','黄村火车站','黄村西大街','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (145,'4号线大兴线','黄村西大街','清源路','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (146,'4号线大兴线','清源路','枣园','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (147,'4号线大兴线','枣园','高米店南','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (148,'4号线大兴线','高米店南','高米店北','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (149,'4号线大兴线','高米店北','西红门','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (150,'4号线大兴线','西红门','新宫','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (151,'4号线大兴线','新宫','公益西桥','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (152,'4号线大兴线','公益西桥','角门西','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (153,'4号线大兴线','角门西','马家堡','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (154,'4号线大兴线','马家堡','北京南站','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (155,'4号线大兴线','北京南站','陶然亭','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (156,'4号线大兴线','陶然亭','菜市口','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (157,'4号线大兴线','菜市口','宣武门','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (158,'4号线大兴线','宣武门','西单','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (159,'4号线大兴线','西单','灵境胡同','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (160,'4号线大兴线','灵境胡同','西四','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (161,'4号线大兴线','西四','平安里','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (162,'4号线大兴线','平安里','新街口','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (163,'4号线大兴线','新街口','西直门','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (164,'4号线大兴线','西直门','动物园','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (165,'4号线大兴线','动物园','国家图书馆','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (166,'4号线大兴线','国家图书馆','魏公村','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (167,'4号线大兴线','魏公村','人民大学','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (168,'4号线大兴线','人民大学','海淀黄庄','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (169,'4号线大兴线','海淀黄庄','中关村','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (170,'4号线大兴线','中关村','北京大学东门','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (171,'4号线大兴线','北京大学东门','圆明园','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (172,'4号线大兴线','圆明园','西苑','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (173,'4号线大兴线','西苑','北宫门','天宫院-安河桥北');
INSERT INTO bj_subway VALUES (174,'4号线大兴线','北宫门','安河桥北','天宫院-安河桥北');

INSERT INTO bj_subway VALUES (175,'5号线','宋家庄','刘家窑','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (176,'5号线','刘家窑','蒲黄榆','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (177,'5号线','蒲黄榆','天坛东门','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (178,'5号线','天坛东门','磁器口','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (179,'5号线','磁器口','崇文门','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (180,'5号线','崇文门','东单','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (181,'5号线','东单','灯市口','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (182,'5号线','灯市口','东四','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (183,'5号线','东四','张自忠路','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (184,'5号线','张自忠路','北新桥','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (185,'5号线','北新桥','雍和宫','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (186,'5号线','雍和宫','和平里北街','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (187,'5号线','和平里北街','和平西桥','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (188,'5号线','和平西桥','惠新西街南口','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (189,'5号线','惠新西街南口','惠新西街北口','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (190,'5号线','惠新西街北口','大屯路东','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (191,'5号线','大屯路东','北苑路北','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (192,'5号线','北苑路北','立水桥南','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (193,'5号线','立水桥南','立水桥','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (194,'5号线','立水桥','天通苑南','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (195,'5号线','天通苑南','天通苑','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (196,'5号线','天通苑','天通苑北','宋家庄-天通苑北');
INSERT INTO bj_subway VALUES (197,'5号线','天通苑北','天通苑','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (198,'5号线','天通苑','天通苑南','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (199,'5号线','天通苑南','立水桥','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (200,'5号线','立水桥','立水桥南','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (201,'5号线','立水桥南','北苑路北','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (202,'5号线','北苑路北','大屯路东','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (203,'5号线','大屯路东','惠新西街北口','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (204,'5号线','惠新西街北口','惠新西街南口','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (205,'5号线','惠新西街南口','和平西桥','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (206,'5号线','和平西桥','和平里北街','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (207,'5号线','和平里北街','雍和宫','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (208,'5号线','雍和宫','北新桥','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (209,'5号线','北新桥','张自忠路','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (210,'5号线','张自忠路','东四','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (211,'5号线','东四','灯市口','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (212,'5号线','灯市口','东单','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (213,'5号线','东单','崇文门','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (214,'5号线','崇文门','磁器口','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (215,'5号线','磁器口','天坛东门','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (216,'5号线','天坛东门','蒲黄榆','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (217,'5号线','蒲黄榆','刘家窑','天通苑北-宋家庄');
INSERT INTO bj_subway VALUES (218,'5号线','刘家窑','宋家庄','天通苑北-宋家庄');

INSERT INTO bj_subway VALUES (219,'6号线','金安桥','苹果园','金安桥-潞城');
INSERT INTO bj_subway VALUES (220,'6号线','苹果园','杨庄','金安桥-潞城');
INSERT INTO bj_subway VALUES (221,'6号线','杨庄','西黄村','金安桥-潞城');
INSERT INTO bj_subway VALUES (222,'6号线','西黄村','廖公庄','金安桥-潞城');
INSERT INTO bj_subway VALUES (223,'6号线','廖公庄','田村','金安桥-潞城');
INSERT INTO bj_subway VALUES (224,'6号线','田村','海淀五路居','金安桥-潞城');
INSERT INTO bj_subway VALUES (225,'6号线','海淀五路居','慈寿寺','金安桥-潞城');
INSERT INTO bj_subway VALUES (226,'6号线','慈寿寺','花园桥','金安桥-潞城');
INSERT INTO bj_subway VALUES (227,'6号线','花园桥','白石桥南','金安桥-潞城');
INSERT INTO bj_subway VALUES (228,'6号线','白石桥南','车公庄西','金安桥-潞城');
INSERT INTO bj_subway VALUES (229,'6号线','车公庄西','车公庄','金安桥-潞城');
INSERT INTO bj_subway VALUES (230,'6号线','车公庄','平安里','金安桥-潞城');
INSERT INTO bj_subway VALUES (231,'6号线','平安里','北海北','金安桥-潞城');
INSERT INTO bj_subway VALUES (232,'6号线','北海北','南锣鼓巷','金安桥-潞城');
INSERT INTO bj_subway VALUES (233,'6号线','南锣鼓巷','东四','金安桥-潞城');
INSERT INTO bj_subway VALUES (234,'6号线','东四','朝阳门','金安桥-潞城');
INSERT INTO bj_subway VALUES (235,'6号线','朝阳门','东大桥','金安桥-潞城');
INSERT INTO bj_subway VALUES (236,'6号线','东大桥','呼家楼','金安桥-潞城');
INSERT INTO bj_subway VALUES (237,'6号线','呼家楼','金台路','金安桥-潞城');
INSERT INTO bj_subway VALUES (238,'6号线','金台路','十里堡','金安桥-潞城');
INSERT INTO bj_subway VALUES (239,'6号线','十里堡','青年路','金安桥-潞城');
INSERT INTO bj_subway VALUES (240,'6号线','青年路','褡裢坡','金安桥-潞城');
INSERT INTO bj_subway VALUES (241,'6号线','褡裢坡','黄渠','金安桥-潞城');
INSERT INTO bj_subway VALUES (242,'6号线','黄渠','常营','金安桥-潞城');
INSERT INTO bj_subway VALUES (243,'6号线','常营','草房','金安桥-潞城');
INSERT INTO bj_subway VALUES (244,'6号线','草房','物资学院路','金安桥-潞城');
INSERT INTO bj_subway VALUES (245,'6号线','物资学院路','通州北关','金安桥-潞城');
INSERT INTO bj_subway VALUES (246,'6号线','通州北关','北运河西','金安桥-潞城');
INSERT INTO bj_subway VALUES (247,'6号线','北运河西','北运河东','金安桥-潞城');
INSERT INTO bj_subway VALUES (248,'6号线','北运河东','郝家府','金安桥-潞城');
INSERT INTO bj_subway VALUES (249,'6号线','郝家府','东夏园','金安桥-潞城');
INSERT INTO bj_subway VALUES (250,'6号线','东夏园','潞城','金安桥-潞城');
INSERT INTO bj_subway VALUES (251,'6号线','潞城','东夏园','潞城-金安桥');
INSERT INTO bj_subway VALUES (252,'6号线','东夏园','郝家府','潞城-金安桥');
INSERT INTO bj_subway VALUES (253,'6号线','郝家府','北运河东','潞城-金安桥');
INSERT INTO bj_subway VALUES (254,'6号线','北运河东','北运河西','潞城-金安桥');
INSERT INTO bj_subway VALUES (255,'6号线','北运河西','通州北关','潞城-金安桥');
INSERT INTO bj_subway VALUES (256,'6号线','通州北关','物资学院路','潞城-金安桥');
INSERT INTO bj_subway VALUES (257,'6号线','物资学院路','草房','潞城-金安桥');
INSERT INTO bj_subway VALUES (258,'6号线','草房','常营','潞城-金安桥');
INSERT INTO bj_subway VALUES (259,'6号线','常营','黄渠','潞城-金安桥');
INSERT INTO bj_subway VALUES (260,'6号线','黄渠','褡裢坡','潞城-金安桥');
INSERT INTO bj_subway VALUES (261,'6号线','褡裢坡','青年路','潞城-金安桥');
INSERT INTO bj_subway VALUES (262,'6号线','青年路','十里堡','潞城-金安桥');
INSERT INTO bj_subway VALUES (263,'6号线','十里堡','金台路','潞城-金安桥');
INSERT INTO bj_subway VALUES (264,'6号线','金台路','呼家楼','潞城-金安桥');
INSERT INTO bj_subway VALUES (265,'6号线','呼家楼','东大桥','潞城-金安桥');
INSERT INTO bj_subway VALUES (266,'6号线','东大桥','朝阳门','潞城-金安桥');
INSERT INTO bj_subway VALUES (267,'6号线','朝阳门','东四','潞城-金安桥');
INSERT INTO bj_subway VALUES (268,'6号线','东四','南锣鼓巷','潞城-金安桥');
INSERT INTO bj_subway VALUES (269,'6号线','南锣鼓巷','北海北','潞城-金安桥');
INSERT INTO bj_subway VALUES (270,'6号线','北海北','平安里','潞城-金安桥');
INSERT INTO bj_subway VALUES (271,'6号线','平安里','车公庄','潞城-金安桥');
INSERT INTO bj_subway VALUES (272,'6号线','车公庄','车公庄西','潞城-金安桥');
INSERT INTO bj_subway VALUES (273,'6号线','车公庄西','白石桥南','潞城-金安桥');
INSERT INTO bj_subway VALUES (274,'6号线','白石桥南','花园桥','潞城-金安桥');
INSERT INTO bj_subway VALUES (275,'6号线','花园桥','慈寿寺','潞城-金安桥');
INSERT INTO bj_subway VALUES (276,'6号线','慈寿寺','海淀五路居','潞城-金安桥');
INSERT INTO bj_subway VALUES (277,'6号线','海淀五路居','田村','潞城-金安桥');
INSERT INTO bj_subway VALUES (278,'6号线','田村','廖公庄','潞城-金安桥');
INSERT INTO bj_subway VALUES (279,'6号线','廖公庄','西黄村','潞城-金安桥');
INSERT INTO bj_subway VALUES (280,'6号线','西黄村','杨庄','潞城-金安桥');
INSERT INTO bj_subway VALUES (281,'6号线','杨庄','苹果园','潞城-金安桥');
INSERT INTO bj_subway VALUES (282,'6号线','苹果园','金安桥','潞城-金安桥');

INSERT INTO bj_subway VALUES (283,'7号线','北京西站','湾子','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (284,'7号线','湾子','达官营','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (285,'7号线','达官营','广安门内','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (286,'7号线','广安门内','菜市口','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (287,'7号线','菜市口','虎坊桥','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (288,'7号线','虎坊桥','珠市口','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (289,'7号线','珠市口','桥湾','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (290,'7号线','桥湾','磁器口','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (291,'7号线','磁器口','广渠门内','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (292,'7号线','广渠门内','广渠门外','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (293,'7号线','广渠门外','双井','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (294,'7号线','双井','九龙山','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (295,'7号线','九龙山','大郊亭','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (296,'7号线','大郊亭','百子湾','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (297,'7号线','百子湾','化工','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (298,'7号线','化工','南楼梓庄','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (299,'7号线','南楼梓庄','欢乐谷景区','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (300,'7号线','欢乐谷景区','垡头','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (301,'7号线','垡头','双合','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (302,'7号线','双合','焦化厂','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (303,'7号线','焦化厂','黄厂','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (304,'7号线','黄厂','郎辛庄','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (305,'7号线','郎辛庄','黑庄户','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (306,'7号线','黑庄户','万盛西','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (307,'7号线','万盛西','万盛东','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (308,'7号线','万盛东','群芳','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (309,'7号线','群芳','高楼金','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (310,'7号线','高楼金','花庄','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (311,'7号线','花庄','环球度假区','北京西站-环球度假区');
INSERT INTO bj_subway VALUES (312,'7号线','环球度假区','花庄','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (313,'7号线','花庄','高楼金','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (314,'7号线','高楼金','群芳','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (315,'7号线','群芳','万盛东','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (316,'7号线','万盛东','万盛西','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (317,'7号线','万盛西','黑庄户','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (318,'7号线','黑庄户','郎辛庄','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (319,'7号线','郎辛庄','黄厂','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (320,'7号线','黄厂','焦化厂','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (321,'7号线','焦化厂','双合','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (322,'7号线','双合','垡头','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (323,'7号线','垡头','欢乐谷景区','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (324,'7号线','欢乐谷景区','南楼梓庄','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (325,'7号线','南楼梓庄','化工','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (326,'7号线','化工','百子湾','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (327,'7号线','百子湾','大郊亭','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (328,'7号线','大郊亭','九龙山','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (329,'7号线','九龙山','双井','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (330,'7号线','双井','广渠门外','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (331,'7号线','广渠门外','广渠门内','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (332,'7号线','广渠门内','磁器口','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (333,'7号线','磁器口','桥湾','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (334,'7号线','桥湾','珠市口','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (335,'7号线','珠市口','虎坊桥','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (336,'7号线','虎坊桥','菜市口','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (337,'7号线','菜市口','广安门内','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (338,'7号线','广安门内','达官营','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (339,'7号线','达官营','湾子','环球度假区-北京西站');
INSERT INTO bj_subway VALUES (340,'7号线','湾子','北京西站','环球度假区-北京西站');

INSERT INTO bj_subway VALUES (341,'8号线','朱辛庄','育知路','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (342,'8号线','育知路','平西府','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (343,'8号线','平西府','回龙观东大街','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (344,'8号线','回龙观东大街','霍营','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (345,'8号线','霍营','育新','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (346,'8号线','育新','西小口','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (347,'8号线','西小口','永泰庄','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (348,'8号线','永泰庄','林萃桥','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (349,'8号线','林萃桥','森林公园南门','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (350,'8号线','森林公园南门','奥林匹克公园','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (351,'8号线','奥林匹克公园','奥体中心','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (352,'8号线','奥体中心','北土城','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (353,'8号线','北土城','安华桥','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (354,'8号线','安华桥','安德里北街','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (355,'8号线','安德里北街','鼓楼大街','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (356,'8号线','鼓楼大街','什刹海','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (357,'8号线','什刹海','南锣鼓巷','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (358,'8号线','南锣鼓巷','中国美术馆','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (359,'8号线','中国美术馆','金鱼胡同','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (360,'8号线','金鱼胡同','王府井','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (361,'8号线','王府井','前门','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (362,'8号线','前门','珠市口','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (363,'8号线','珠市口','天桥','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (364,'8号线','天桥','永定门外','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (365,'8号线','永定门外','木樨园','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (366,'8号线','木樨园','海户屯','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (367,'8号线','海户屯','大红门南','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (368,'8号线','大红门南','和义','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (369,'8号线','和义','东高地','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (370,'8号线','东高地','火箭万源','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (371,'8号线','火箭万源','五福堂','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (372,'8号线','五福堂','德茂','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (373,'8号线','德茂','瀛海','朱辛庄-瀛海');
INSERT INTO bj_subway VALUES (374,'8号线','瀛海','德茂','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (375,'8号线','德茂','五福堂','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (376,'8号线','五福堂','火箭万源','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (377,'8号线','火箭万源','东高地','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (378,'8号线','东高地','和义','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (379,'8号线','和义','大红门南','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (380,'8号线','大红门南','海户屯','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (381,'8号线','海户屯','木樨园','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (382,'8号线','木樨园','永定门外','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (383,'8号线','永定门外','天桥','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (384,'8号线','天桥','珠市口','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (385,'8号线','珠市口','前门','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (386,'8号线','前门','王府井','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (387,'8号线','王府井','金鱼胡同','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (388,'8号线','金鱼胡同','中国美术馆','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (389,'8号线','中国美术馆','南锣鼓巷','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (390,'8号线','南锣鼓巷','什刹海','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (391,'8号线','什刹海','鼓楼大街','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (392,'8号线','鼓楼大街','安德里北街','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (393,'8号线','安德里北街','安华桥','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (394,'8号线','安华桥','北土城','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (395,'8号线','北土城','奥体中心','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (396,'8号线','奥体中心','奥林匹克公园','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (397,'8号线','奥林匹克公园','森林公园南门','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (398,'8号线','森林公园南门','林萃桥','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (399,'8号线','林萃桥','永泰庄','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (400,'8号线','永泰庄','西小口','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (401,'8号线','西小口','育新','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (402,'8号线','育新','霍营','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (403,'8号线','霍营','回龙观东大街','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (404,'8号线','回龙观东大街','平西府','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (405,'8号线','平西府','育知路','瀛海-朱辛庄');
INSERT INTO bj_subway VALUES (406,'8号线','育知路','朱辛庄','瀛海-朱辛庄');

INSERT INTO bj_subway VALUES (407,'9号线','郭公庄','丰台科技园','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (408,'9号线','丰台科技园','科怡路','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (409,'9号线','科怡路','丰台南路','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (410,'9号线','丰台南路','丰台东大街','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (411,'9号线','丰台东大街','七里庄','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (412,'9号线','七里庄','六里桥','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (413,'9号线','六里桥','六里桥东','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (414,'9号线','六里桥东','北京西站','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (415,'9号线','北京西站','军事博物馆','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (416,'9号线','军事博物馆','白堆子','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (417,'9号线','白堆子','白石桥南','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (418,'9号线','白石桥南','国家图书馆','郭公庄-国家图书馆');
INSERT INTO bj_subway VALUES (419,'9号线','国家图书馆','白石桥南','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (420,'9号线','白石桥南','白堆子','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (421,'9号线','白堆子','军事博物馆','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (422,'9号线','军事博物馆','北京西站','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (423,'9号线','北京西站','六里桥东','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (424,'9号线','六里桥东','六里桥','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (425,'9号线','六里桥','七里庄','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (426,'9号线','七里庄','丰台东大街','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (427,'9号线','丰台东大街','丰台南路','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (428,'9号线','丰台南路','科怡路','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (429,'9号线','科怡路','丰台科技园','国家图书馆-郭公庄');
INSERT INTO bj_subway VALUES (430,'9号线','丰台科技园','郭公庄','国家图书馆-郭公庄');

INSERT INTO bj_subway VALUES (431,'10号线','巴沟','苏州街','内环');
INSERT INTO bj_subway VALUES (432,'10号线','苏州街','海淀黄庄','内环');
INSERT INTO bj_subway VALUES (433,'10号线','海淀黄庄','知春里','内环');
INSERT INTO bj_subway VALUES (434,'10号线','知春里','知春路','内环');
INSERT INTO bj_subway VALUES (435,'10号线','知春路','西土城','内环');
INSERT INTO bj_subway VALUES (436,'10号线','西土城','牡丹园','内环');
INSERT INTO bj_subway VALUES (437,'10号线','牡丹园','健德门','内环');
INSERT INTO bj_subway VALUES (438,'10号线','健德门','北土城','内环');
INSERT INTO bj_subway VALUES (439,'10号线','北土城','安贞门','内环');
INSERT INTO bj_subway VALUES (440,'10号线','安贞门','惠新西街南口','内环');
INSERT INTO bj_subway VALUES (441,'10号线','惠新西街南口','芍药居','内环');
INSERT INTO bj_subway VALUES (442,'10号线','芍药居','太阳宫','内环');
INSERT INTO bj_subway VALUES (443,'10号线','太阳宫','三元桥','内环');
INSERT INTO bj_subway VALUES (444,'10号线','三元桥','亮马桥','内环');
INSERT INTO bj_subway VALUES (445,'10号线','亮马桥','农业展览馆','内环');
INSERT INTO bj_subway VALUES (446,'10号线','农业展览馆','团结湖','内环');
INSERT INTO bj_subway VALUES (447,'10号线','团结湖','呼家楼','内环');
INSERT INTO bj_subway VALUES (448,'10号线','呼家楼','金台夕照','内环');
INSERT INTO bj_subway VALUES (449,'10号线','金台夕照','国贸','内环');
INSERT INTO bj_subway VALUES (450,'10号线','国贸','双井','内环');
INSERT INTO bj_subway VALUES (451,'10号线','双井','劲松','内环');
INSERT INTO bj_subway VALUES (452,'10号线','劲松','潘家园','内环');
INSERT INTO bj_subway VALUES (453,'10号线','潘家园','十里河','内环');
INSERT INTO bj_subway VALUES (454,'10号线','十里河','分钟寺','内环');
INSERT INTO bj_subway VALUES (455,'10号线','分钟寺','成寿寺','内环');
INSERT INTO bj_subway VALUES (456,'10号线','成寿寺','宋家庄','内环');
INSERT INTO bj_subway VALUES (457,'10号线','宋家庄','石榴庄','内环');
INSERT INTO bj_subway VALUES (458,'10号线','石榴庄','大红门','内环');
INSERT INTO bj_subway VALUES (459,'10号线','大红门','角门东','内环');
INSERT INTO bj_subway VALUES (460,'10号线','角门东','角门西','内环');
INSERT INTO bj_subway VALUES (461,'10号线','角门西','草桥','内环');
INSERT INTO bj_subway VALUES (462,'10号线','草桥','纪家庙','内环');
INSERT INTO bj_subway VALUES (463,'10号线','纪家庙','首经贸','内环');
INSERT INTO bj_subway VALUES (464,'10号线','首经贸','丰台站','内环');
INSERT INTO bj_subway VALUES (465,'10号线','丰台站','泥洼','内环');
INSERT INTO bj_subway VALUES (466,'10号线','泥洼','西局','内环');
INSERT INTO bj_subway VALUES (467,'10号线','西局','六里桥','内环');
INSERT INTO bj_subway VALUES (468,'10号线','六里桥','莲花桥','内环');
INSERT INTO bj_subway VALUES (469,'10号线','莲花桥','公主坟','内环');
INSERT INTO bj_subway VALUES (470,'10号线','公主坟','西钓鱼台','内环');
INSERT INTO bj_subway VALUES (471,'10号线','西钓鱼台','慈寿寺','内环');
INSERT INTO bj_subway VALUES (472,'10号线','慈寿寺','车道沟','内环');
INSERT INTO bj_subway VALUES (473,'10号线','车道沟','长春桥','内环');
INSERT INTO bj_subway VALUES (474,'10号线','长春桥','火器营','内环');
INSERT INTO bj_subway VALUES (475,'10号线','火器营','巴沟','内环');
INSERT INTO bj_subway VALUES (476,'10号线','巴沟','火器营','外环');
INSERT INTO bj_subway VALUES (477,'10号线','火器营','长春桥','外环');
INSERT INTO bj_subway VALUES (478,'10号线','长春桥','车道沟','外环');
INSERT INTO bj_subway VALUES (479,'10号线','车道沟','慈寿寺','外环');
INSERT INTO bj_subway VALUES (480,'10号线','慈寿寺','西钓鱼台','外环');
INSERT INTO bj_subway VALUES (481,'10号线','西钓鱼台','公主坟','外环');
INSERT INTO bj_subway VALUES (482,'10号线','公主坟','莲花桥','外环');
INSERT INTO bj_subway VALUES (483,'10号线','莲花桥','六里桥','外环');
INSERT INTO bj_subway VALUES (484,'10号线','六里桥','西局','外环');
INSERT INTO bj_subway VALUES (485,'10号线','西局','泥洼','外环');
INSERT INTO bj_subway VALUES (486,'10号线','泥洼','丰台站','外环');
INSERT INTO bj_subway VALUES (487,'10号线','丰台站','首经贸','外环');
INSERT INTO bj_subway VALUES (488,'10号线','首经贸','纪家庙','外环');
INSERT INTO bj_subway VALUES (489,'10号线','纪家庙','草桥','外环');
INSERT INTO bj_subway VALUES (490,'10号线','草桥','角门西','外环');
INSERT INTO bj_subway VALUES (491,'10号线','角门西','角门东','外环');
INSERT INTO bj_subway VALUES (492,'10号线','角门东','大红门','外环');
INSERT INTO bj_subway VALUES (493,'10号线','大红门','石榴庄','外环');
INSERT INTO bj_subway VALUES (494,'10号线','石榴庄','宋家庄','外环');
INSERT INTO bj_subway VALUES (495,'10号线','宋家庄','成寿寺','外环');
INSERT INTO bj_subway VALUES (496,'10号线','成寿寺','分钟寺','外环');
INSERT INTO bj_subway VALUES (497,'10号线','分钟寺','十里河','外环');
INSERT INTO bj_subway VALUES (498,'10号线','十里河','潘家园','外环');
INSERT INTO bj_subway VALUES (499,'10号线','潘家园','劲松','外环');
INSERT INTO bj_subway VALUES (500,'10号线','劲松','双井','外环');
INSERT INTO bj_subway VALUES (501,'10号线','双井','国贸','外环');
INSERT INTO bj_subway VALUES (502,'10号线','国贸','金台夕照','外环');
INSERT INTO bj_subway VALUES (503,'10号线','金台夕照','呼家楼','外环');
INSERT INTO bj_subway VALUES (504,'10号线','呼家楼','团结湖','外环');
INSERT INTO bj_subway VALUES (505,'10号线','团结湖','农业展览馆','外环');
INSERT INTO bj_subway VALUES (506,'10号线','农业展览馆','亮马桥','外环');
INSERT INTO bj_subway VALUES (507,'10号线','亮马桥','三元桥','外环');
INSERT INTO bj_subway VALUES (508,'10号线','三元桥','太阳宫','外环');
INSERT INTO bj_subway VALUES (509,'10号线','太阳宫','芍药居','外环');
INSERT INTO bj_subway VALUES (510,'10号线','芍药居','惠新西街南口','外环');
INSERT INTO bj_subway VALUES (511,'10号线','惠新西街南口','安贞门','外环');
INSERT INTO bj_subway VALUES (512,'10号线','安贞门','北土城','外环');
INSERT INTO bj_subway VALUES (513,'10号线','北土城','健德门','外环');
INSERT INTO bj_subway VALUES (514,'10号线','健德门','牡丹园','外环');
INSERT INTO bj_subway VALUES (515,'10号线','牡丹园','西土城','外环');
INSERT INTO bj_subway VALUES (516,'10号线','西土城','知春路','外环');
INSERT INTO bj_subway VALUES (517,'10号线','知春路','知春里','外环');
INSERT INTO bj_subway VALUES (518,'10号线','知春里','海淀黄庄','外环');
INSERT INTO bj_subway VALUES (519,'10号线','海淀黄庄','苏州街','外环');
INSERT INTO bj_subway VALUES (520,'10号线','苏州街','巴沟','外环');

INSERT INTO bj_subway VALUES (521,'11号线','新首钢','北辛安','新首钢-模式口');
INSERT INTO bj_subway VALUES (522,'11号线','北辛安','金安桥','新首钢-模式口');
INSERT INTO bj_subway VALUES (523,'11号线','金安桥','模式口','新首钢-模式口');
INSERT INTO bj_subway VALUES (524,'11号线','模式口','金安桥','模式口-新首钢');
INSERT INTO bj_subway VALUES (525,'11号线','金安桥','北辛安','模式口-新首钢');
INSERT INTO bj_subway VALUES (526,'11号线','北辛安','新首钢','模式口-新首钢');

INSERT INTO bj_subway VALUES (527,'13号线','西直门','大钟寺','西直门-东直门');
INSERT INTO bj_subway VALUES (528,'13号线','大钟寺','知春路','西直门-东直门');
INSERT INTO bj_subway VALUES (529,'13号线','知春路','五道口','西直门-东直门');
INSERT INTO bj_subway VALUES (530,'13号线','五道口','上地','西直门-东直门');
INSERT INTO bj_subway VALUES (531,'13号线','上地','西二旗','西直门-东直门');
INSERT INTO bj_subway VALUES (532,'13号线','西二旗','龙泽','西直门-东直门');
INSERT INTO bj_subway VALUES (533,'13号线','龙泽','回龙观','西直门-东直门');
INSERT INTO bj_subway VALUES (534,'13号线','回龙观','霍营','西直门-东直门');
INSERT INTO bj_subway VALUES (535,'13号线','霍营','立水桥','西直门-东直门');
INSERT INTO bj_subway VALUES (536,'13号线','立水桥','北苑','西直门-东直门');
INSERT INTO bj_subway VALUES (537,'13号线','北苑','望京西','西直门-东直门');
INSERT INTO bj_subway VALUES (538,'13号线','望京西','芍药居','西直门-东直门');
INSERT INTO bj_subway VALUES (539,'13号线','芍药居','光熙门','西直门-东直门');
INSERT INTO bj_subway VALUES (540,'13号线','光熙门','柳芳','西直门-东直门');
INSERT INTO bj_subway VALUES (541,'13号线','柳芳','东直门','西直门-东直门');
INSERT INTO bj_subway VALUES (542,'13号线','东直门','柳芳','东直门-西直门');
INSERT INTO bj_subway VALUES (543,'13号线','柳芳','光熙门','东直门-西直门');
INSERT INTO bj_subway VALUES (544,'13号线','光熙门','芍药居','东直门-西直门');
INSERT INTO bj_subway VALUES (545,'13号线','芍药居','望京西','东直门-西直门');
INSERT INTO bj_subway VALUES (546,'13号线','望京西','北苑','东直门-西直门');
INSERT INTO bj_subway VALUES (547,'13号线','北苑','立水桥','东直门-西直门');
INSERT INTO bj_subway VALUES (548,'13号线','立水桥','霍营','东直门-西直门');
INSERT INTO bj_subway VALUES (549,'13号线','霍营','回龙观','东直门-西直门');
INSERT INTO bj_subway VALUES (550,'13号线','回龙观','龙泽','东直门-西直门');
INSERT INTO bj_subway VALUES (551,'13号线','龙泽','西二旗','东直门-西直门');
INSERT INTO bj_subway VALUES (552,'13号线','西二旗','上地','东直门-西直门');
INSERT INTO bj_subway VALUES (553,'13号线','上地','五道口','东直门-西直门');
INSERT INTO bj_subway VALUES (554,'13号线','五道口','知春路','东直门-西直门');
INSERT INTO bj_subway VALUES (555,'13号线','知春路','大钟寺','东直门-西直门');
INSERT INTO bj_subway VALUES (556,'13号线','大钟寺','西直门','东直门-西直门');

INSERT INTO bj_subway VALUES (557,'14号线','张郭庄','园博园','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (558,'14号线','园博园','大瓦窑','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (559,'14号线','大瓦窑','郭庄子','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (560,'14号线','郭庄子','大井','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (561,'14号线','大井','七里庄','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (562,'14号线','七里庄','西局','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (563,'14号线','西局','东管头','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (564,'14号线','东管头','丽泽商务区','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (565,'14号线','丽泽商务区','菜户营','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (566,'14号线','菜户营','西铁营','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (567,'14号线','西铁营','景风门','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (568,'14号线','景风门','北京南站','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (569,'14号线','北京南站','陶然桥','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (570,'14号线','陶然桥','永定门外','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (571,'14号线','永定门外','景泰','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (572,'14号线','景泰','蒲黄榆','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (573,'14号线','蒲黄榆','方庄','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (574,'14号线','方庄','十里河','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (575,'14号线','十里河','北工大西门','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (576,'14号线','北工大西门','平乐园','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (577,'14号线','平乐园','九龙山','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (578,'14号线','九龙山','大望路','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (579,'14号线','大望路','金台路','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (580,'14号线','金台路','朝阳公园','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (581,'14号线','朝阳公园','枣营','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (582,'14号线','枣营','东风北桥','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (583,'14号线','东风北桥','将台','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (584,'14号线','将台','高家园','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (585,'14号线','高家园','望京南','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (586,'14号线','望京南','阜通','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (587,'14号线','阜通','望京','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (588,'14号线','望京','东湖渠','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (589,'14号线','东湖渠','来广营','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (590,'14号线','来广营','善各庄','张郭庄-善各庄');
INSERT INTO bj_subway VALUES (591,'14号线','善各庄','来广营','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (592,'14号线','来广营','东湖渠','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (593,'14号线','东湖渠','望京','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (594,'14号线','望京','阜通','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (595,'14号线','阜通','望京南','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (596,'14号线','望京南','高家园','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (597,'14号线','高家园','将台','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (598,'14号线','将台','东风北桥','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (599,'14号线','东风北桥','枣营','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (600,'14号线','枣营','朝阳公园','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (601,'14号线','朝阳公园','金台路','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (602,'14号线','金台路','大望路','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (603,'14号线','大望路','九龙山','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (604,'14号线','九龙山','平乐园','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (605,'14号线','平乐园','北工大西门','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (606,'14号线','北工大西门','十里河','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (607,'14号线','十里河','方庄','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (608,'14号线','方庄','蒲黄榆','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (609,'14号线','蒲黄榆','景泰','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (610,'14号线','景泰','永定门外','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (611,'14号线','永定门外','陶然桥','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (612,'14号线','陶然桥','北京南站','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (613,'14号线','北京南站','景风门','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (614,'14号线','景风门','西铁营','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (615,'14号线','西铁营','菜户营','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (616,'14号线','菜户营','丽泽商务区','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (617,'14号线','丽泽商务区','东管头','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (618,'14号线','东管头','西局','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (619,'14号线','西局','七里庄','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (620,'14号线','七里庄','大井','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (621,'14号线','大井','郭庄子','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (622,'14号线','郭庄子','大瓦窑','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (623,'14号线','大瓦窑','园博园','善各庄-张郭庄');
INSERT INTO bj_subway VALUES (624,'14号线','园博园','张郭庄','善各庄-张郭庄');

INSERT INTO bj_subway VALUES (625,'15号线','俸伯','顺义','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (626,'15号线','顺义','石门','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (627,'15号线','石门','南法信','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (628,'15号线','南法信','后沙峪','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (629,'15号线','后沙峪','花梨坎','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (630,'15号线','花梨坎','国展','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (631,'15号线','国展','孙河','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (632,'15号线','孙河','马泉营','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (633,'15号线','马泉营','崔各庄','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (634,'15号线','崔各庄','望京','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (635,'15号线','望京','望京西','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (636,'15号线','望京西','关庄','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (637,'15号线','关庄','安立路','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (638,'15号线','安立路','奥林匹克公园','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (639,'15号线','奥林匹克公园','北沙滩','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (640,'15号线','北沙滩','六道口','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (641,'15号线','六道口','清华东路西口','俸伯-清华东路西口');
INSERT INTO bj_subway VALUES (642,'15号线','清华东路西口','六道口','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (643,'15号线','六道口','北沙滩','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (644,'15号线','北沙滩','奥林匹克公园','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (645,'15号线','奥林匹克公园','安立路','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (646,'15号线','安立路','关庄','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (647,'15号线','关庄','望京西','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (648,'15号线','望京西','望京','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (649,'15号线','望京','崔各庄','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (650,'15号线','崔各庄','马泉营','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (651,'15号线','马泉营','孙河','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (652,'15号线','孙河','国展','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (653,'15号线','国展','花梨坎','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (654,'15号线','花梨坎','后沙峪','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (655,'15号线','后沙峪','南法信','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (656,'15号线','南法信','石门','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (657,'15号线','石门','顺义','清华东路西口-俸伯');
INSERT INTO bj_subway VALUES (658,'15号线','顺义','俸伯','清华东路西口-俸伯');

INSERT INTO bj_subway VALUES (659,'16号线','北安河','温阳路','北安河-宛平城');
INSERT INTO bj_subway VALUES (660,'16号线','温阳路','稻香湖路','北安河-宛平城');
INSERT INTO bj_subway VALUES (661,'16号线','稻香湖路','屯佃','北安河-宛平城');
INSERT INTO bj_subway VALUES (662,'16号线','屯佃','永丰','北安河-宛平城');
INSERT INTO bj_subway VALUES (663,'16号线','永丰','永丰南','北安河-宛平城');
INSERT INTO bj_subway VALUES (664,'16号线','永丰南','西北旺','北安河-宛平城');
INSERT INTO bj_subway VALUES (665,'16号线','西北旺','马连洼','北安河-宛平城');
INSERT INTO bj_subway VALUES (666,'16号线','马连洼','农大南路','北安河-宛平城');
INSERT INTO bj_subway VALUES (667,'16号线','农大南路','西苑','北安河-宛平城');
INSERT INTO bj_subway VALUES (668,'16号线','西苑','万泉河桥','北安河-宛平城');
INSERT INTO bj_subway VALUES (669,'16号线','万泉河桥','苏州街','北安河-宛平城');
INSERT INTO bj_subway VALUES (670,'16号线','苏州街','苏州桥','北安河-宛平城');
INSERT INTO bj_subway VALUES (671,'16号线','苏州桥','万寿寺','北安河-宛平城');
INSERT INTO bj_subway VALUES (672,'16号线','万寿寺','国家图书馆','北安河-宛平城');
INSERT INTO bj_subway VALUES (673,'16号线','国家图书馆','二里沟','北安河-宛平城');
INSERT INTO bj_subway VALUES (674,'16号线','二里沟','甘家口','北安河-宛平城');
INSERT INTO bj_subway VALUES (675,'16号线','甘家口','玉渊潭东门','北安河-宛平城');
INSERT INTO bj_subway VALUES (676,'16号线','玉渊潭东门','木樨地','北安河-宛平城');
INSERT INTO bj_subway VALUES (677,'16号线','木樨地','达官营','北安河-宛平城');
INSERT INTO bj_subway VALUES (678,'16号线','达官营','红莲南路','北安河-宛平城');
INSERT INTO bj_subway VALUES (679,'16号线','红莲南路','东管头南','北安河-宛平城');
INSERT INTO bj_subway VALUES (680,'16号线','东管头南','丰台站','北安河-宛平城');
INSERT INTO bj_subway VALUES (681,'16号线','丰台站','丰台南路','北安河-宛平城');
INSERT INTO bj_subway VALUES (682,'16号线','丰台南路','富丰桥','北安河-宛平城');
INSERT INTO bj_subway VALUES (683,'16号线','富丰桥','看丹','北安河-宛平城');
INSERT INTO bj_subway VALUES (684,'16号线','看丹','榆树庄','北安河-宛平城');
INSERT INTO bj_subway VALUES (685,'16号线','榆树庄','洪泰庄','北安河-宛平城');
INSERT INTO bj_subway VALUES (686,'16号线','洪泰庄','宛平城','北安河-宛平城');
INSERT INTO bj_subway VALUES (687,'16号线','宛平城','洪泰庄','宛平城-北安河');
INSERT INTO bj_subway VALUES (688,'16号线','洪泰庄','榆树庄','宛平城-北安河');
INSERT INTO bj_subway VALUES (689,'16号线','榆树庄','看丹','宛平城-北安河');
INSERT INTO bj_subway VALUES (690,'16号线','看丹','富丰桥','宛平城-北安河');
INSERT INTO bj_subway VALUES (691,'16号线','富丰桥','丰台南路','宛平城-北安河');
INSERT INTO bj_subway VALUES (692,'16号线','丰台南路','丰台站','宛平城-北安河');
INSERT INTO bj_subway VALUES (693,'16号线','丰台站','东管头南','宛平城-北安河');
INSERT INTO bj_subway VALUES (694,'16号线','东管头南','红莲南路','宛平城-北安河');
INSERT INTO bj_subway VALUES (695,'16号线','红莲南路','达官营','宛平城-北安河');
INSERT INTO bj_subway VALUES (696,'16号线','达官营','木樨地','宛平城-北安河');
INSERT INTO bj_subway VALUES (697,'16号线','木樨地','玉渊潭东门','宛平城-北安河');
INSERT INTO bj_subway VALUES (698,'16号线','玉渊潭东门','甘家口','宛平城-北安河');
INSERT INTO bj_subway VALUES (699,'16号线','甘家口','二里沟','宛平城-北安河');
INSERT INTO bj_subway VALUES (700,'16号线','二里沟','国家图书馆','宛平城-北安河');
INSERT INTO bj_subway VALUES (701,'16号线','国家图书馆','万寿寺','宛平城-北安河');
INSERT INTO bj_subway VALUES (702,'16号线','万寿寺','苏州桥','宛平城-北安河');
INSERT INTO bj_subway VALUES (703,'16号线','苏州桥','苏州街','宛平城-北安河');
INSERT INTO bj_subway VALUES (704,'16号线','苏州街','万泉河桥','宛平城-北安河');
INSERT INTO bj_subway VALUES (705,'16号线','万泉河桥','西苑','宛平城-北安河');
INSERT INTO bj_subway VALUES (706,'16号线','西苑','农大南路','宛平城-北安河');
INSERT INTO bj_subway VALUES (707,'16号线','农大南路','马连洼','宛平城-北安河');
INSERT INTO bj_subway VALUES (708,'16号线','马连洼','西北旺','宛平城-北安河');
INSERT INTO bj_subway VALUES (709,'16号线','西北旺','永丰南','宛平城-北安河');
INSERT INTO bj_subway VALUES (710,'16号线','永丰南','永丰','宛平城-北安河');
INSERT INTO bj_subway VALUES (711,'16号线','永丰','屯佃','宛平城-北安河');
INSERT INTO bj_subway VALUES (712,'16号线','屯佃','稻香湖路','宛平城-北安河');
INSERT INTO bj_subway VALUES (713,'16号线','稻香湖路','温阳路','宛平城-北安河');
INSERT INTO bj_subway VALUES (714,'16号线','温阳路','北安河','宛平城-北安河');

INSERT INTO bj_subway VALUES (715,'17号线南段','十里河','周家庄','十里河-嘉会湖');
INSERT INTO bj_subway VALUES (716,'17号线南段','周家庄','十八里店','十里河-嘉会湖');
INSERT INTO bj_subway VALUES (717,'17号线南段','十八里店','北神树','十里河-嘉会湖');
INSERT INTO bj_subway VALUES (718,'17号线南段','北神树','次渠北','十里河-嘉会湖');
INSERT INTO bj_subway VALUES (719,'17号线南段','次渠北','次渠','十里河-嘉会湖');
INSERT INTO bj_subway VALUES (720,'17号线南段','次渠','嘉会湖','十里河-嘉会湖');
INSERT INTO bj_subway VALUES (721,'17号线南段','嘉会湖','次渠','嘉会湖-十里河');
INSERT INTO bj_subway VALUES (722,'17号线南段','次渠','次渠北','嘉会湖-十里河');
INSERT INTO bj_subway VALUES (723,'17号线南段','次渠北','北神树','嘉会湖-十里河');
INSERT INTO bj_subway VALUES (724,'17号线南段','北神树','十八里店','嘉会湖-十里河');
INSERT INTO bj_subway VALUES (725,'17号线南段','十八里店','周家庄','嘉会湖-十里河');
INSERT INTO bj_subway VALUES (726,'17号线南段','周家庄','十里河','嘉会湖-十里河');

INSERT INTO bj_subway VALUES (727,'17号线北段','未来科学城北','未来科学城','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (728,'17号线北段','未来科学城','天通苑东','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (729,'17号线北段','天通苑东','清河营','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (730,'17号线北段','清河营','红军营','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (731,'17号线北段','红军营','太阳宫','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (732,'17号线北段','太阳宫','西坝河','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (733,'17号线北段','西坝河','左家庄','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (734,'17号线北段','左家庄','工人体育场','未来科学城北-工人体育场');
INSERT INTO bj_subway VALUES (735,'17号线北段','工人体育场','左家庄','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (736,'17号线北段','左家庄','西坝河','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (737,'17号线北段','西坝河','太阳宫','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (738,'17号线北段','太阳宫','红军营','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (739,'17号线北段','红军营','清河营','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (740,'17号线北段','清河营','天通苑东','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (741,'17号线北段','天通苑东','未来科学城','工人体育场-未来科学城北');
INSERT INTO bj_subway VALUES (742,'17号线北段','未来科学城','未来科学城北','工人体育场-未来科学城北');

INSERT INTO bj_subway VALUES (743,'19号线','牡丹园','北太平庄','牡丹园-新宫');
INSERT INTO bj_subway VALUES (744,'19号线','北太平庄','积水潭','牡丹园-新宫');
INSERT INTO bj_subway VALUES (745,'19号线','积水潭','平安里','牡丹园-新宫');
INSERT INTO bj_subway VALUES (746,'19号线','平安里','太平桥','牡丹园-新宫');
INSERT INTO bj_subway VALUES (747,'19号线','太平桥','牛街','牡丹园-新宫');
INSERT INTO bj_subway VALUES (748,'19号线','牛街','景风门','牡丹园-新宫');
INSERT INTO bj_subway VALUES (749,'19号线','景风门','草桥','牡丹园-新宫');
INSERT INTO bj_subway VALUES (750,'19号线','草桥','新发地','牡丹园-新宫');
INSERT INTO bj_subway VALUES (751,'19号线','新发地','新宫','牡丹园-新宫');
INSERT INTO bj_subway VALUES (752,'19号线','新宫','新发地','新宫-牡丹园');
INSERT INTO bj_subway VALUES (753,'19号线','新发地','草桥','新宫-牡丹园');
INSERT INTO bj_subway VALUES (754,'19号线','草桥','景风门','新宫-牡丹园');
INSERT INTO bj_subway VALUES (755,'19号线','景风门','牛街','新宫-牡丹园');
INSERT INTO bj_subway VALUES (756,'19号线','牛街','太平桥','新宫-牡丹园');
INSERT INTO bj_subway VALUES (757,'19号线','太平桥','平安里','新宫-牡丹园');
INSERT INTO bj_subway VALUES (758,'19号线','平安里','积水潭','新宫-牡丹园');
INSERT INTO bj_subway VALUES (759,'19号线','积水潭','北太平庄','新宫-牡丹园');
INSERT INTO bj_subway VALUES (760,'19号线','北太平庄','牡丹园','新宫-牡丹园');

INSERT INTO bj_subway VALUES (761,'大兴机场线','草桥','大兴新城','草桥-大兴机场');
INSERT INTO bj_subway VALUES (762,'大兴机场线','大兴新城','大兴机场','草桥-大兴机场');
INSERT INTO bj_subway VALUES (763,'大兴机场线','大兴机场','大兴新城','大兴机场-草桥');
INSERT INTO bj_subway VALUES (764,'大兴机场线','大兴新城','草桥','大兴机场-草桥');

INSERT INTO bj_subway VALUES (765,'昌平线','昌平西山口','十三陵景区','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (766,'昌平线','十三陵景区','昌平','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (767,'昌平线','昌平','昌平东关','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (768,'昌平线','昌平东关','北邵洼','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (769,'昌平线','北邵洼','南邵','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (770,'昌平线','南邵','沙河高教园','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (771,'昌平线','沙河高教园','沙河','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (772,'昌平线','沙河','巩华城','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (773,'昌平线','巩华城','朱辛庄','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (774,'昌平线','朱辛庄','生命科学园','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (775,'昌平线','生命科学园','西二旗','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (776,'昌平线','西二旗','清河站','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (777,'昌平线','清河站','清河小营桥','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (778,'昌平线','清河小营桥','学知园','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (779,'昌平线','学知园','六道口','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (780,'昌平线','六道口','学院桥','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (781,'昌平线','学院桥','西土城','昌平西山口-西土城');
INSERT INTO bj_subway VALUES (782,'昌平线','西土城','学院桥','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (783,'昌平线','学院桥','六道口','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (784,'昌平线','六道口','学知园','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (785,'昌平线','学知园','清河小营桥','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (786,'昌平线','清河小营桥','清河站','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (787,'昌平线','清河站','西二旗','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (788,'昌平线','西二旗','生命科学园','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (789,'昌平线','生命科学园','朱辛庄','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (790,'昌平线','朱辛庄','巩华城','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (791,'昌平线','巩华城','沙河','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (792,'昌平线','沙河','沙河高教园','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (793,'昌平线','沙河高教园','南邵','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (794,'昌平线','南邵','北邵洼','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (795,'昌平线','北邵洼','昌平东关','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (796,'昌平线','昌平东关','昌平','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (797,'昌平线','昌平','十三陵景区','西土城-昌平西山口');
INSERT INTO bj_subway VALUES (798,'昌平线','十三陵景区','昌平西山口','西土城-昌平西山口');

INSERT INTO bj_subway VALUES (799,'亦庄线','宋家庄','肖村','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (800,'亦庄线','肖村','小红门','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (801,'亦庄线','小红门','旧宫','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (802,'亦庄线','旧宫','亦庄桥','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (803,'亦庄线','亦庄桥','亦庄文化园','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (804,'亦庄线','亦庄文化园','万源街','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (805,'亦庄线','万源街','荣京东街','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (806,'亦庄线','荣京东街','荣昌东街','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (807,'亦庄线','荣昌东街','同济南路','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (808,'亦庄线','同济南路','经海路','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (809,'亦庄线','经海路','次渠南','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (810,'亦庄线','次渠南','次渠','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (811,'亦庄线','次渠','亦庄火车站','宋家庄-亦庄火车站');
INSERT INTO bj_subway VALUES (812,'亦庄线','亦庄火车站','次渠','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (813,'亦庄线','次渠','次渠南','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (814,'亦庄线','次渠南','经海路','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (815,'亦庄线','经海路','同济南路','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (816,'亦庄线','同济南路','荣昌东街','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (817,'亦庄线','荣昌东街','荣京东街','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (818,'亦庄线','荣京东街','万源街','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (819,'亦庄线','万源街','亦庄文化园','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (820,'亦庄线','亦庄文化园','亦庄桥','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (821,'亦庄线','亦庄桥','旧宫','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (822,'亦庄线','旧宫','小红门','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (823,'亦庄线','小红门','肖村','亦庄火车站-宋家庄');
INSERT INTO bj_subway VALUES (824,'亦庄线','肖村','宋家庄','亦庄火车站-宋家庄');

INSERT INTO bj_subway VALUES (825,'房山线','东管头南','首经贸','东管头南-阎村东');
INSERT INTO bj_subway VALUES (826,'房山线','首经贸','花乡东桥','东管头南-阎村东');
INSERT INTO bj_subway VALUES (827,'房山线','花乡东桥','白盆窑','东管头南-阎村东');
INSERT INTO bj_subway VALUES (828,'房山线','白盆窑','郭公庄','东管头南-阎村东');
INSERT INTO bj_subway VALUES (829,'房山线','郭公庄','大葆台','东管头南-阎村东');
INSERT INTO bj_subway VALUES (830,'房山线','大葆台','稻田','东管头南-阎村东');
INSERT INTO bj_subway VALUES (831,'房山线','稻田','长阳','东管头南-阎村东');
INSERT INTO bj_subway VALUES (832,'房山线','长阳','篱笆房','东管头南-阎村东');
INSERT INTO bj_subway VALUES (833,'房山线','篱笆房','广阳城','东管头南-阎村东');
INSERT INTO bj_subway VALUES (834,'房山线','广阳城','良乡大学城北','东管头南-阎村东');
INSERT INTO bj_subway VALUES (835,'房山线','良乡大学城北','良乡大学城','东管头南-阎村东');
INSERT INTO bj_subway VALUES (836,'房山线','良乡大学城','良乡大学城西','东管头南-阎村东');
INSERT INTO bj_subway VALUES (837,'房山线','良乡大学城西','良乡南关','东管头南-阎村东');
INSERT INTO bj_subway VALUES (838,'房山线','良乡南关','苏庄','东管头南-阎村东');
INSERT INTO bj_subway VALUES (839,'房山线','苏庄','阎村东','东管头南-阎村东');
INSERT INTO bj_subway VALUES (840,'房山线','阎村东','苏庄','阎村东-东管头南');
INSERT INTO bj_subway VALUES (841,'房山线','苏庄','良乡南关','阎村东-东管头南');
INSERT INTO bj_subway VALUES (842,'房山线','良乡南关','良乡大学城西','阎村东-东管头南');
INSERT INTO bj_subway VALUES (843,'房山线','良乡大学城西','良乡大学城','阎村东-东管头南');
INSERT INTO bj_subway VALUES (844,'房山线','良乡大学城','良乡大学城北','阎村东-东管头南');
INSERT INTO bj_subway VALUES (845,'房山线','良乡大学城北','广阳城','阎村东-东管头南');
INSERT INTO bj_subway VALUES (846,'房山线','广阳城','篱笆房','阎村东-东管头南');
INSERT INTO bj_subway VALUES (847,'房山线','篱笆房','长阳','阎村东-东管头南');
INSERT INTO bj_subway VALUES (848,'房山线','长阳','稻田','阎村东-东管头南');
INSERT INTO bj_subway VALUES (849,'房山线','稻田','大葆台','阎村东-东管头南');
INSERT INTO bj_subway VALUES (850,'房山线','大葆台','郭公庄','阎村东-东管头南');
INSERT INTO bj_subway VALUES (851,'房山线','郭公庄','白盆窑','阎村东-东管头南');
INSERT INTO bj_subway VALUES (852,'房山线','白盆窑','花乡东桥','阎村东-东管头南');
INSERT INTO bj_subway VALUES (853,'房山线','花乡东桥','首经贸','阎村东-东管头南');
INSERT INTO bj_subway VALUES (854,'房山线','首经贸','东管头南','阎村东-东管头南');

INSERT INTO bj_subway VALUES (855,'首都机场线','北新桥','东直门','下行-机场');
INSERT INTO bj_subway VALUES (856,'首都机场线','东直门','三元桥','下行-机场');
INSERT INTO bj_subway VALUES (857,'首都机场线','三元桥','3号航站楼','下行-机场');
INSERT INTO bj_subway VALUES (858,'首都机场线','3号航站楼','2号航站楼','下行-机场');
INSERT INTO bj_subway VALUES (859,'首都机场线','2号航站楼','三元桥','上行-市区');
INSERT INTO bj_subway VALUES (860,'首都机场线','三元桥','东直门','上行-市区');
INSERT INTO bj_subway VALUES (861,'首都机场线','东直门','北新桥','上行-市区');

INSERT INTO bj_subway VALUES (862,'S1线','苹果园','金安桥','苹果园-石厂');
INSERT INTO bj_subway VALUES (863,'S1线','金安桥','四道桥','苹果园-石厂');
INSERT INTO bj_subway VALUES (864,'S1线','四道桥','桥户营','苹果园-石厂');
INSERT INTO bj_subway VALUES (865,'S1线','桥户营','上岸','苹果园-石厂');
INSERT INTO bj_subway VALUES (866,'S1线','上岸','栗园庄','苹果园-石厂');
INSERT INTO bj_subway VALUES (867,'S1线','栗园庄','小园','苹果园-石厂');
INSERT INTO bj_subway VALUES (868,'S1线','小园','石厂','苹果园-石厂');
INSERT INTO bj_subway VALUES (869,'S1线','石厂','小园','石厂-苹果园');
INSERT INTO bj_subway VALUES (870,'S1线','小园','栗园庄','石厂-苹果园');
INSERT INTO bj_subway VALUES (871,'S1线','栗园庄','上岸','石厂-苹果园');
INSERT INTO bj_subway VALUES (872,'S1线','上岸','桥户营','石厂-苹果园');
INSERT INTO bj_subway VALUES (873,'S1线','桥户营','四道桥','石厂-苹果园');
INSERT INTO bj_subway VALUES (874,'S1线','四道桥','金安桥','石厂-苹果园');
INSERT INTO bj_subway VALUES (875,'S1线','金安桥','苹果园','石厂-苹果园');

INSERT INTO bj_subway VALUES (876,'燕房线','阎村东','紫草坞','阎村东-燕山');
INSERT INTO bj_subway VALUES (877,'燕房线','紫草坞','阎村','阎村东-燕山');
INSERT INTO bj_subway VALUES (878,'燕房线','阎村','星城','阎村东-燕山');
INSERT INTO bj_subway VALUES (879,'燕房线','星城','大石河东','阎村东-燕山');
INSERT INTO bj_subway VALUES (880,'燕房线','大石河东','马各庄','阎村东-燕山');
INSERT INTO bj_subway VALUES (881,'燕房线','马各庄','饶乐府','阎村东-燕山');
INSERT INTO bj_subway VALUES (882,'燕房线','饶乐府','房山城关','阎村东-燕山');
INSERT INTO bj_subway VALUES (883,'燕房线','房山城关','燕山','阎村东-燕山');
INSERT INTO bj_subway VALUES (884,'燕房线','燕山','房山城关','燕山-阎村东');
INSERT INTO bj_subway VALUES (885,'燕房线','房山城关','饶乐府','燕山-阎村东');
INSERT INTO bj_subway VALUES (886,'燕房线','饶乐府','马各庄','燕山-阎村东');
INSERT INTO bj_subway VALUES (887,'燕房线','马各庄','大石河东','燕山-阎村东');
INSERT INTO bj_subway VALUES (888,'燕房线','大石河东','星城','燕山-阎村东');
INSERT INTO bj_subway VALUES (889,'燕房线','星城','阎村','燕山-阎村东');
INSERT INTO bj_subway VALUES (890,'燕房线','阎村','紫草坞','燕山-阎村东');
INSERT INTO bj_subway VALUES (891,'燕房线','紫草坞','阎村东','燕山-阎村东');

INSERT INTO bj_subway VALUES (892,'西郊线','巴沟','颐和园西门','巴沟-香山');
INSERT INTO bj_subway VALUES (893,'西郊线','颐和园西门','茶棚','巴沟-香山');
INSERT INTO bj_subway VALUES (894,'西郊线','茶棚','万安','巴沟-香山');
INSERT INTO bj_subway VALUES (895,'西郊线','万安','国家植物园','巴沟-香山');
INSERT INTO bj_subway VALUES (896,'西郊线','国家植物园','香山','巴沟-香山');
INSERT INTO bj_subway VALUES (897,'西郊线','香山','国家植物园','香山-巴沟');
INSERT INTO bj_subway VALUES (898,'西郊线','国家植物园','万安','香山-巴沟');
INSERT INTO bj_subway VALUES (899,'西郊线','万安','茶棚','香山-巴沟');
INSERT INTO bj_subway VALUES (900,'西郊线','茶棚','颐和园西门','香山-巴沟');
INSERT INTO bj_subway VALUES (901,'西郊线','颐和园西门','巴沟','香山-巴沟');

INSERT INTO bj_subway VALUES (902,'亦庄T1线','定海园','定海园西','定海园-老观里站');
INSERT INTO bj_subway VALUES (903,'亦庄T1线','定海园西','经海一路','定海园-老观里站');
INSERT INTO bj_subway VALUES (904,'亦庄T1线','经海一路','亦创会展中心','定海园-老观里站');
INSERT INTO bj_subway VALUES (905,'亦庄T1线','亦创会展中心','荣昌东街','定海园-老观里站');
INSERT INTO bj_subway VALUES (906,'亦庄T1线','荣昌东街','亦庄同仁','定海园-老观里站');
INSERT INTO bj_subway VALUES (907,'亦庄T1线','亦庄同仁','鹿圈东','定海园-老观里站');
INSERT INTO bj_subway VALUES (908,'亦庄T1线','鹿圈东','泰河路','定海园-老观里站');
INSERT INTO bj_subway VALUES (909,'亦庄T1线','泰河路','九号村','定海园-老观里站');
INSERT INTO bj_subway VALUES (910,'亦庄T1线','九号村','四海庄','定海园-老观里站');
INSERT INTO bj_subway VALUES (911,'亦庄T1线','四海庄','太和桥北','定海园-老观里站');
INSERT INTO bj_subway VALUES (912,'亦庄T1线','太和桥北','瑞合庄','定海园-老观里站');
INSERT INTO bj_subway VALUES (913,'亦庄T1线','瑞合庄','融兴街','定海园-老观里站');
INSERT INTO bj_subway VALUES (914,'亦庄T1线','融兴街','屈庄','定海园-老观里站');
INSERT INTO bj_subway VALUES (915,'亦庄T1线','屈庄','老观里站','定海园-老观里站');
INSERT INTO bj_subway VALUES (916,'亦庄T1线','老观里站','屈庄','老观里站-定海园');
INSERT INTO bj_subway VALUES (917,'亦庄T1线','屈庄','融兴街','老观里站-定海园');
INSERT INTO bj_subway VALUES (918,'亦庄T1线','融兴街','瑞合庄','老观里站-定海园');
INSERT INTO bj_subway VALUES (919,'亦庄T1线','瑞合庄','太和桥北','老观里站-定海园');
INSERT INTO bj_subway VALUES (920,'亦庄T1线','太和桥北','四海庄','老观里站-定海园');
INSERT INTO bj_subway VALUES (921,'亦庄T1线','四海庄','九号村','老观里站-定海园');
INSERT INTO bj_subway VALUES (922,'亦庄T1线','九号村','泰河路','老观里站-定海园');
INSERT INTO bj_subway VALUES (923,'亦庄T1线','泰河路','鹿圈东','老观里站-定海园');
INSERT INTO bj_subway VALUES (924,'亦庄T1线','鹿圈东','亦庄同仁','老观里站-定海园');
INSERT INTO bj_subway VALUES (925,'亦庄T1线','亦庄同仁','荣昌东街','老观里站-定海园');
INSERT INTO bj_subway VALUES (926,'亦庄T1线','荣昌东街','亦创会展中心','老观里站-定海园');
INSERT INTO bj_subway VALUES (927,'亦庄T1线','亦创会展中心','经海一路','老观里站-定海园');
INSERT INTO bj_subway VALUES (928,'亦庄T1线','经海一路','定海园西','老观里站-定海园');
INSERT INTO bj_subway VALUES (929,'亦庄T1线','定海园西','定海园','老观里站-定海园');

-- 新地铁线路
-- SELECT 'INSERT INTO bj_subway VALUES ('||(SELECT max(station_id+s1.id) FROM bj_subway)||',''5号线'','''||s1.station_name||''','''||s2.station_name||''',''宋家庄-天通苑北'');'
-- FROM station s1
-- JOIN station s2 ON s1.id = s2.id -1;

-- 复制回程
SELECT 'INSERT INTO bj_subway VALUES ('||(SELECT max(station_id*2+1) FROM bj_subway)-station_id||
       ','''||line_name||''','''||next_station||''','''||station_name||''',''大兴机场-草桥'');'
FROM bj_subway
WHERE line_name = '大兴机场线'
ORDER BY station_id DESC ;



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
