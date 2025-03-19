/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssm57wsx

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-09-24 15:42:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssm57wsx/upload/1600844117779.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssm57wsx/upload/1600856868547.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssm57wsx/upload/1600837717609.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssm57wsx/upload/1600856901667.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssm57wsx/upload/1600843797640.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', 'http://localhost:8080/ssm57wsx/upload/1600856888912.jpg');

-- ----------------------------
-- Table structure for `discussyisheng`
-- ----------------------------
DROP TABLE IF EXISTS `discussyisheng`;
CREATE TABLE `discussyisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859846238 DEFAULT CHARSET=utf8 COMMENT='医生评论表';

-- ----------------------------
-- Records of discussyisheng
-- ----------------------------
INSERT INTO `discussyisheng` VALUES ('1600859846237', '2020-09-23 19:17:26', '1600843383664', '李医生对每个病人都很好 很尽职', '1600859117878');

-- ----------------------------
-- Table structure for `discussyiyuanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussyiyuanxinxi`;
CREATE TABLE `discussyiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600860155323 DEFAULT CHARSET=utf8 COMMENT='医院信息评论表';

-- ----------------------------
-- Records of discussyiyuanxinxi
-- ----------------------------
INSERT INTO `discussyiyuanxinxi` VALUES ('1600843516024', '2020-09-23 14:45:15', '1600837531479', '1212', '1600836139434');
INSERT INTO `discussyiyuanxinxi` VALUES ('1600860155322', '2020-09-23 19:22:35', '1600837531479', '112121212', '1600859117878');

-- ----------------------------
-- Table structure for `keshixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859361421 DEFAULT CHARSET=utf8 COMMENT='科室信息';

-- ----------------------------
-- Records of keshixinxi
-- ----------------------------
INSERT INTO `keshixinxi` VALUES ('1600836580478', '2020-09-23 12:49:39', '小儿科');
INSERT INTO `keshixinxi` VALUES ('1600836589979', '2020-09-23 12:49:49', '牙科');
INSERT INTO `keshixinxi` VALUES ('1600859353344', '2020-09-23 19:09:12', '妇科');
INSERT INTO `keshixinxi` VALUES ('1600859361420', '2020-09-23 19:09:21', '神经科');

-- ----------------------------
-- Table structure for `liaotianhuifu`
-- ----------------------------
DROP TABLE IF EXISTS `liaotianhuifu`;
CREATE TABLE `liaotianhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `liaotianhuifu` longtext COMMENT '聊天回复',
  `huifuriqi` date DEFAULT NULL COMMENT '回复日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600860276559 DEFAULT CHARSET=utf8 COMMENT='聊天回复';

-- ----------------------------
-- Records of liaotianhuifu
-- ----------------------------
INSERT INTO `liaotianhuifu` VALUES ('1600853896093', '2020-09-23 17:38:15', '牙科资讯', '001', '小米', '那您过来医院我仔细检查下', '2020-09-30', '001', '王医生');
INSERT INTO `liaotianhuifu` VALUES ('1600860276558', '2020-09-23 19:24:35', '李医生好', '003', '小王', '好的，关于你孩子的病，最好带到医院来检查会比较好', '2020-09-29', '002', '李医生');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859883485 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1600843510870', '2020-09-23 14:45:10', '1600836139434', '1600837531479', 'yiyuanxinxi', '人民医院', 'http://localhost:8080/ssm57wsx/upload/1600837527838.jpg');
INSERT INTO `storeup` VALUES ('1600859816972', '2020-09-23 19:16:56', '1600859117878', '1600836671434', 'yisheng', '王医生', 'http://localhost:8080/ssm57wsx/upload/1600836636820.jpg');
INSERT INTO `storeup` VALUES ('1600859883484', '2020-09-23 19:18:03', '1600859117878', '1600837531479', 'yiyuanxinxi', '人民医院', 'http://localhost:8080/ssm57wsx/upload/1600837527838.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'zku8p2ncnw9r2x1pi8mvm0055jg9gkdu', '2020-09-23 12:40:19', '2020-09-23 20:25:10');
INSERT INTO `token` VALUES ('2', '1600836139434', '001', 'yonghu', '用户', 'em055fdc83a690w57oxu0nfkmnsfd57a', '2020-09-23 12:58:44', '2020-09-23 20:31:18');
INSERT INTO `token` VALUES ('3', '1600836671434', '001', 'yisheng', '医生', 'ugwh3g1u73mtwcu89rr4fqrtti8sf55w', '2020-09-23 17:37:11', '2020-09-23 18:37:11');
INSERT INTO `token` VALUES ('4', '1600859117878', '003', 'yonghu', '用户', 'bjjfczzvuona7w7y2wmfcod07118zc61', '2020-09-23 19:12:26', '2020-09-23 20:24:47');
INSERT INTO `token` VALUES ('5', '1600859171898', '003', 'yisheng', '医生', 'futk2k1douph0p7rpdqyaqpbecwop8sb', '2020-09-23 19:15:59', '2020-09-23 20:15:59');
INSERT INTO `token` VALUES ('6', '1600843383664', '002', 'yisheng', '医生', 'i7bmj319of8xdqf68nx9xspa6hnflpuq', '2020-09-23 19:22:56', '2020-09-23 20:23:32');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-09-23 12:36:05');

-- ----------------------------
-- Table structure for `xingdongguiji`
-- ----------------------------
DROP TABLE IF EXISTS `xingdongguiji`;
CREATE TABLE `xingdongguiji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `chuxingdidian` longtext COMMENT '出行地点',
  `chuxingshijian` varchar(200) DEFAULT NULL COMMENT '出行时间',
  `xianzaizhuangkuang` varchar(200) DEFAULT NULL COMMENT '现在状况',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859643913 DEFAULT CHARSET=utf8 COMMENT='行动轨迹';

-- ----------------------------
-- Records of xingdongguiji
-- ----------------------------
INSERT INTO `xingdongguiji` VALUES ('1600837116071', '2020-09-23 12:58:35', '用户出行状况', '上海-深圳-北京', '1月1日-15日', '良好', '2020-01-01', '001', '小米', '15214121412');
INSERT INTO `xingdongguiji` VALUES ('1600859643912', '2020-09-23 19:14:03', '9月份上半月行动轨迹', '1号在深圳待了三天，然后去了上海，在上海呆了一个礼拜，就回到了深圳', '9月1-15号', '差', '2020-09-15', '003', '小王', '15214121412');

-- ----------------------------
-- Table structure for `yichangbaogao`
-- ----------------------------
DROP TABLE IF EXISTS `yichangbaogao`;
CREATE TABLE `yichangbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `yiqingqingkuang` longtext COMMENT '疫情情况',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600860418558 DEFAULT CHARSET=utf8 COMMENT='异常报告';

-- ----------------------------
-- Records of yichangbaogao
-- ----------------------------
INSERT INTO `yichangbaogao` VALUES ('1600860418557', '2020-09-23 19:26:57', '1600860349396', '15号一个人有异常', '15有个人发信息说身体有异常，经过检查发现出现疫情的情况，特上报社区需要马上进行隔离治疗跟善后工作', '2020-09-15');

-- ----------------------------
-- Table structure for `yiqinggonggao`
-- ----------------------------
DROP TABLE IF EXISTS `yiqinggonggao`;
CREATE TABLE `yiqinggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859336238 DEFAULT CHARSET=utf8 COMMENT='疫情公告';

-- ----------------------------
-- Records of yiqinggonggao
-- ----------------------------
INSERT INTO `yiqinggonggao` VALUES ('1600836949398', '2020-09-23 12:55:49', '1600836720537', '国内最新疫情状况 ', 'http://localhost:8080/ssm57wsx/upload/1600836886513.jpg', '自疫情发生以来，中国政府及时展开对疫情的控制和防范，得到了很好的控制效果目前疫情已经基本得到了很好的控制。', '2020-09-30');
INSERT INTO `yiqinggonggao` VALUES ('1600838081624', '2020-09-23 13:14:40', '1600838019580', '疫情虽然得到控制，但我们还不能放松', 'http://localhost:8080/ssm57wsx/upload/1600838030883.jpg', '疫情虽然得到了较好的控制，但目前还没有很好的根治方法，我们依旧要做好防范工作，不能松懈', '2020-09-30');
INSERT INTO `yiqinggonggao` VALUES ('1600859336237', '2020-09-23 19:08:55', '1600859212566', '全民度过疫情需要众志成城', 'http://localhost:8080/ssm57wsx/upload/1600859232136.jpg', '要全面控制疫情，需要全国人民共同抗争，全面配合党和国家，做好更方面的疫情防护工作，这将是一场持久战，一个人松懈都可能会造成严重的后果。。。。', '2020-09-30');

-- ----------------------------
-- Table structure for `yisheng`
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859171899 DEFAULT CHARSET=utf8 COMMENT='医生';

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES ('1600836671434', '2020-09-23 12:51:11', '001', '001', '王医生', '男', 'http://localhost:8080/ssm57wsx/upload/1600836636820.jpg', '牙科', '20', '9-11点，14-18点', '441214121412141214', '15214121412');
INSERT INTO `yisheng` VALUES ('1600843383664', '2020-09-23 14:43:03', '002', '002', '李医生', '女', 'http://localhost:8080/ssm57wsx/upload/1600843354320.jpg', '小儿科', '15', '9-12点，14-18点', '441214121412141214', '15214121412');
INSERT INTO `yisheng` VALUES ('1600859171898', '2020-09-23 19:06:11', '003', '003', '刘医生', '女', 'http://localhost:8080/ssm57wsx/upload/1600859774514.jpg', '妇科', '12', '9-12点,14-20点', '441214121412141214', '15214121412');

-- ----------------------------
-- Table structure for `yiyangbaogao`
-- ----------------------------
DROP TABLE IF EXISTS `yiyangbaogao`;
CREATE TABLE `yiyangbaogao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `baogaoneirong` longtext COMMENT '报告内容',
  `baogaoriqi` date DEFAULT NULL COMMENT '报告日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859700817 DEFAULT CHARSET=utf8 COMMENT='异样报告';

-- ----------------------------
-- Records of yiyangbaogao
-- ----------------------------
INSERT INTO `yiyangbaogao` VALUES ('1600838330949', '2020-09-23 13:18:50', '1600838290764', '身体状况报告', '从深圳回来感到呼吸困难，又发烧的迹象', '2020-09-01', '001', '小米', '是', '好的，待在那里那都不要去，我们会马上派人过去检测');
INSERT INTO `yiyangbaogao` VALUES ('1600859700816', '2020-09-23 19:15:00', '1600859649041', '异样报告', '15号从上海回来之后就出现了不舒服的症状，有发烧，咳嗽感冒的症状', '2020-09-15', '003', '小王', '是', '好的你待在家里不要出去，我们马上会派人过去检查');

-- ----------------------------
-- Table structure for `yiyuanxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yiyuanxinxi`;
CREATE TABLE `yiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yiyuanfengcai` longtext COMMENT '医院风采',
  `chumingdu` varchar(200) DEFAULT NULL COMMENT '出名度',
  `shijianriqi` date DEFAULT NULL COMMENT '始建日期',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859471678 DEFAULT CHARSET=utf8 COMMENT='医院信息';

-- ----------------------------
-- Records of yiyuanxinxi
-- ----------------------------
INSERT INTO `yiyuanxinxi` VALUES ('1600837531479', '2020-09-23 13:05:31', '1600837505833', '人民医院', 'http://localhost:8080/ssm57wsx/upload/1600837527838.jpg', '<p><img src=\"http://localhost:8080/ssm57wsx/upload/1600837570131.jpg\"><img src=\"http://localhost:8080/ssm57wsx/upload/1600837575351.jpg\"><img src=\"http://localhost:8080/ssm57wsx/upload/1600837579786.jpg\">各种设备都是最新的，设备齐全，医生敬业，专治各种疑难杂症</p>', '5星', '2020-09-30', '全天', '15214121412', '人名南路', '2', '1');
INSERT INTO `yiyuanxinxi` VALUES ('1600837956413', '2020-09-23 13:12:36', '1600837871798', '妇幼保健院', 'http://localhost:8080/ssm57wsx/upload/1600837982730.jpg', '<p><img src=\"http://localhost:8080/ssm57wsx/upload/1600837915829.jpg\"><img src=\"http://localhost:8080/ssm57wsx/upload/1600837920440.jpg\">设备齐全，医资雄厚，全天看诊</p>', '3星', '2020-09-02', '全天', '15214121412', '环市北路', '0', '0');
INSERT INTO `yiyuanxinxi` VALUES ('1600859471677', '2020-09-23 19:11:10', '1600859398382', '爱明门诊', 'http://localhost:8080/ssm57wsx/upload/1600859418573.jpg', '<p><img src=\"http://localhost:8080/ssm57wsx/upload/1600859445335.jpg\"><img src=\"http://localhost:8080/ssm57wsx/upload/1600859449533.jpg\"><img src=\"http://localhost:8080/ssm57wsx/upload/1600859454576.jpg\">这里可以写一些医院的介绍，主治什么病或者一些有关医院的将的一些信息</p>', '1星', '2020-09-17', '全天', '15214121412', '环市西路', '0', '0');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859117879 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1600836139434', '2020-09-23 12:42:19', '001', '001', '小米', '男', 'http://localhost:8080/ssm57wsx/upload/1600836117825.png', '441214121412141214', '15214141214', '北京市');
INSERT INTO `yonghu` VALUES ('1600859117878', '2020-09-23 19:05:17', '003', '003', '小王', '男', 'http://localhost:8080/ssm57wsx/upload/1600859566328.png', '441214121412141214', '15214121412', '人名路');

-- ----------------------------
-- Table structure for `yuyuexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yuyuexinxi`;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `bingqingqingkuang` longtext COMMENT '病情情况',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1600860690785 DEFAULT CHARSET=utf8 COMMENT='预约信息';

-- ----------------------------
-- Records of yuyuexinxi
-- ----------------------------
INSERT INTO `yuyuexinxi` VALUES ('1600860142878', '2020-09-23 19:22:22', '1600837505833', '人民医院', '002', '李医生', '小儿科', '15', '李医生我小孩现在病情有点严重，想预约下午4点的时间', '2020-09-23 16:00:00', '003', '小王', '15214121412', '是', '好，那你再四点前赶紧到医院来，马上就给你孩子做检查', '已支付');
INSERT INTO `yuyuexinxi` VALUES ('1600860690784', '2020-09-23 19:31:30', '1600859398382', '爱明门诊', '001', '王医生', '牙科', '20', '', null, '001', '小米', '15214141214', '', '', '');

-- ----------------------------
-- Table structure for `zaixianliaotian`
-- ----------------------------
DROP TABLE IF EXISTS `zaixianliaotian`;
CREATE TABLE `zaixianliaotian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mingcheng` varchar(200) DEFAULT NULL COMMENT '名称',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `liaotianneirong` longtext COMMENT '聊天内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1600859747740 DEFAULT CHARSET=utf8 COMMENT='在线聊天';

-- ----------------------------
-- Records of zaixianliaotian
-- ----------------------------
INSERT INTO `zaixianliaotian` VALUES ('1600853825639', '2020-09-23 17:37:05', '牙科资讯', '001', '王医生', '王医生我牙齿疼，具人什么原因', '2020-09-30', '001', '小米');
INSERT INTO `zaixianliaotian` VALUES ('1600859747739', '2020-09-23 19:15:47', '李医生好', '002', '李医生', '李医生你好，我想询问XX信息', '2020-09-30', '003', '小王');
