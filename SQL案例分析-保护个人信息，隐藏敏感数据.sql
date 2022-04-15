-- 视频地址：https://www.bilibili.com/video/BV1y94y1d7v7

-- 创建示例表
CREATE TABLE users
    ( id        INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY
    , name      VARCHAR(50) NOT NULL
    , phone     VARCHAR(20) NOT NULL
    , id_card   VARCHAR(500) NOT NULL
    );
INSERT INTO users VALUES (1, '张三', '13512345678', '320101200206014057');
INSERT INTO users VALUES (2, '李一飞', '+8613512340000', '320101199901011212');
INSERT INTO users VALUES (3, '诸葛不亮', '+861013512341234', '32010119880202567X');

-- MySQL
# 隐藏姓名
SELECT name "隐藏之前",
       CASE char_length(name)
         WHEN 2 THEN concat('*', substr(name, 2, 1))
         WHEN 3 THEN concat(substr(name, 1, char_length(name)-2), '*', substr(name, -1, 1))
         ELSE concat(substr(name, 1, char_length(name)-2), '**')
       END "隐藏之后"
FROM users;

# 隐藏手机号
SELECT phone "隐藏之前",
       insert(phone, char_length(phone)-7, 4, '****') "隐藏之后"
FROM users;

# 隐藏身份证号
SELECT id_card "隐藏之前",
       insert(id_card, 7, 8, '*******') "隐藏之后"
FROM users;
