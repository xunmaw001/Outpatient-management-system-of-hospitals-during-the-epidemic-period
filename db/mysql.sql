DROP DATABASE IF EXISTS ssm57wsx;

CREATE DATABASE ssm57wsx default character set utf8mb4 collate utf8mb4_general_ci;

USE ssm57wsx;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`xiangpian` varchar(200)    COMMENT '相片',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`shouji` varchar(200)    COMMENT '手机',
	`zhuzhi` varchar(200)    COMMENT '住址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`gonghao` varchar(200) NOT NULL UNIQUE   COMMENT '工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`xiangpian` varchar(200)    COMMENT '相片',
	`keshi` varchar(200)    COMMENT '科室',
	`feiyong` int    COMMENT '费用',
	`gongzuoshijian` varchar(200)    COMMENT '工作时间',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`dianhua` varchar(200)    COMMENT '电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生';

DROP TABLE IF EXISTS `yiqinggonggao`;

CREATE TABLE `yiqinggonggao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bianhao` varchar(200)  UNIQUE   COMMENT '编号',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`tupian` varchar(200)    COMMENT '图片',
	`neirong` longtext    COMMENT '内容',
	`faburiqi` date    COMMENT '发布日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='疫情公告';

DROP TABLE IF EXISTS `yiyuanxinxi`;

CREATE TABLE `yiyuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bianhao` varchar(200)  UNIQUE   COMMENT '编号',
	`yiyuanmingcheng` varchar(200) NOT NULL   COMMENT '医院名称',
	`tupian` varchar(200)    COMMENT '图片',
	`yiyuanfengcai` longtext    COMMENT '医院风采',
	`chumingdu` varchar(200)    COMMENT '出名度',
	`shijianriqi` date    COMMENT '始建日期',
	`gongzuoshijian` varchar(200)    COMMENT '工作时间',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`xiangxidizhi` varchar(200)    COMMENT '详细地址',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院信息';

DROP TABLE IF EXISTS `xingdongguiji`;

CREATE TABLE `xingdongguiji` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`chuxingdidian` longtext    COMMENT '出行地点',
	`chuxingshijian` varchar(200)    COMMENT '出行时间',
	`xianzaizhuangkuang` varchar(200)    COMMENT '现在状况',
	`dengjiriqi` date    COMMENT '登记日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行动轨迹';

DROP TABLE IF EXISTS `yiyangbaogao`;

CREATE TABLE `yiyangbaogao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bianhao` varchar(200)  UNIQUE   COMMENT '编号',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`baogaoneirong` longtext    COMMENT '报告内容',
	`baogaoriqi` date    COMMENT '报告日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异样报告';

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`keshi` varchar(200) NOT NULL   COMMENT '科室',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='科室信息';

DROP TABLE IF EXISTS `yuyuexinxi`;

CREATE TABLE `yuyuexinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bianhao` varchar(200)  UNIQUE   COMMENT '编号',
	`yiyuanmingcheng` varchar(200)    COMMENT '医院名称',
	`gonghao` varchar(200) NOT NULL   COMMENT '工号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`keshi` varchar(200)    COMMENT '科室',
	`feiyong` varchar(200)    COMMENT '费用',
	`bingqingqingkuang` longtext    COMMENT '病情情况',
	`yuyueshijian` datetime    COMMENT '预约时间',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预约信息';

DROP TABLE IF EXISTS `zaixianliaotian`;

CREATE TABLE `zaixianliaotian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`mingcheng` varchar(200)    COMMENT '名称',
	`gonghao` varchar(200) NOT NULL   COMMENT '工号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`liaotianneirong` longtext    COMMENT '聊天内容',
	`riqi` date    COMMENT '日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线聊天';

DROP TABLE IF EXISTS `liaotianhuifu`;

CREATE TABLE `liaotianhuifu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`mingcheng` varchar(200)    COMMENT '名称',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`liaotianhuifu` longtext    COMMENT '聊天回复',
	`huifuriqi` date    COMMENT '回复日期',
	`gonghao` varchar(200)    COMMENT '工号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='聊天回复';

DROP TABLE IF EXISTS `yichangbaogao`;

CREATE TABLE `yichangbaogao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`bianhao` varchar(200)  UNIQUE   COMMENT '编号',
	`mingcheng` varchar(200) NOT NULL   COMMENT '名称',
	`yiqingqingkuang` longtext    COMMENT '疫情情况',
	`riqi` date    COMMENT '日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='异常报告';

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

DROP TABLE IF EXISTS `discussyisheng`;

CREATE TABLE `discussyisheng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生评论表';

DROP TABLE IF EXISTS `discussyiyuanxinxi`;

CREATE TABLE `discussyiyuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院信息评论表';


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

