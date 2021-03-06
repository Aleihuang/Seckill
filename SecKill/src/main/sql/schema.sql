--数据库初始化

CREATE DATABASE seckill;
use seckill;
CREATE TABLE seckill(
seckill_id bigint NOT NULL AUTO_INCREMENT COMMENT '商品库存ID',
name varchar(120) NOT NULL COMMENT '商品名称',
number int NOT NULL COMMENT '库存数量',
create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
start_time timestamp NOT NULL COMMENT '秒杀开启时间',
end_time timestamp NOT NULL COMMENT '秒杀结束时间',
PRIMARY KEY(seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 CHARSET=utf8 COMMENT="秒杀库存表";

--初始化数据
insert into seckill(name,number,start_time,end_time)
values
    ('1000元秒杀iphone',100,'2019-08-01 00:00:00','2019-08-01 00:09:00'),
    ('500元秒杀ipad',200,'2019-08-01 00:00:00','2019-08-01 00:09:00'),
    ('300元秒杀小米8',300,'2019-08-01 00:00:00','2019-08-01 00:09:00'),
    ('200元秒杀红米',400,'2019-08-01 00:00:00','2019-08-01 00:09:00');


--秒杀成功明细表
create table success_killed(
seckill_id bigint NOT NULL COMMENT '秒杀商品ID',
user_phone bigint NOT NULL COMMENT '用户手机号',
state tinyint NOT NULL DEFAULT -1 COMMENT '状态标志 -1:无效 0：成功  1:已付款 2：已发货 3：已收货',
create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
PRIMARY KEY(seckill_id,user_phone),--/*联合主键*/
key idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT="秒杀库存表";

--连接数据库控制台
mysql -uroot -p'admin'