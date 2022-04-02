-- 视频地址：https://www.bilibili.com/video/BV1Ar4y167kG
-- 创建权限表t_permission
CREATE TABLE t_permission (
	permission_id INTEGER NOT NULL PRIMARY KEY,
	permission_name VARCHAR(100) NULL UNIQUE,
	parent_permission INTEGER NULL,
	sort_order INTEGER NULL DEFAULT 100
);
INSERT INTO t_permission VALUES (1, '系统管理', NULL, 1);
INSERT INTO t_permission VALUES (2, '员工管理', NULL, 11);
INSERT INTO t_permission VALUES (3, '查看员工信息', 2, 12);
INSERT INTO t_permission VALUES (4, '修改员工信息', 2, 13);

-- 创建用户表t_user
CREATE TABLE t_user (
	user_id INTEGER NOT NULL PRIMARY KEY,
	user_name VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(200) NOT NULL,
	last_login timestamp
);
INSERT INTO t_user VALUES (1, 'Admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@shuguo.com', NULL);
INSERT INTO t_user VALUES (2, 'Tony', 'eee7ac208064d408e84ab5e26d24b278', 'tony@shuguo.com', NULL);

-- 创建用户权限表t_user_permission
CREATE TABLE t_user_permission (
	user_id INTEGER NOT NULL,
	permission_id INTEGER NOT NULL,
	CONSTRAINT pk_user_permission PRIMARY KEY (user_id, permission_id),
	CONSTRAINT fk_user_permission_user FOREIGN KEY (user_id) REFERENCES t_user(user_id),
	CONSTRAINT fk_user_permission_permission FOREIGN KEY (permission_id) REFERENCES t_permission(permission_id)
);
INSERT INTO t_user_permission VALUES (2, 2);
INSERT INTO t_user_permission VALUES (2, 3);

-- 创建角色表t_role
CREATE TABLE t_role (
	role_id INTEGER NOT NULL PRIMARY KEY,
	role_name  VARCHAR(50) NOT NULL UNIQUE
);
INSERT INTO t_role VALUES (1, '系统管理员');
INSERT INTO t_role VALUES (2, '人力资源专员');

-- 创建角色权限表t_role_permission
CREATE TABLE t_role_permission (
	role_id INTEGER NOT NULL,
	permission_id INTEGER NOT NULL,
	CONSTRAINT pk_role_permission PRIMARY KEY (role_id, permission_id),
	CONSTRAINT fk_role_permission_user FOREIGN KEY (role_id) REFERENCES t_role(role_id),
	CONSTRAINT fk_role_permission_permission FOREIGN KEY (permission_id) REFERENCES t_permission(permission_id)
);
INSERT INTO t_role_permission VALUES (1, 1);
INSERT INTO t_role_permission VALUES (2, 2);
INSERT INTO t_role_permission VALUES (2, 3);
INSERT INTO t_role_permission VALUES (2, 4);

-- 创建用户角色表t_user_role
CREATE TABLE t_user_role (
	user_id INTEGER NOT NULL,
	role_id INTEGER NOT NULL,
	CONSTRAINT pk_user_role PRIMARY KEY (user_id, role_id),
	CONSTRAINT fk_user_role_user FOREIGN KEY (user_id) REFERENCES t_user(user_id),
	CONSTRAINT fk_user_role_role FOREIGN KEY (role_id) REFERENCES t_role(role_id)
);
INSERT INTO t_user_role VALUES (1, 1);
INSERT INTO t_user_role VALUES (2, 2);
