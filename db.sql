/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuandiancan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuandiancan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuandiancan`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005766678 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1620005721396,'2021-05-03 09:35:21',1614430386281,'河南省郑州市金水区经八路街道金水路101号建设厅家属院','张2','17703786962','否'),(1620005766677,'2021-05-03 09:36:05',1614430386281,'河南省开封市通许县咸平街道商业路122号','张22','17703786222','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005838740 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (19,'picture2','http://localhost:8080/xiaoyuandiancan/upload/1615604883959.jpg'),(22,'picture2','http://localhost:8080/xiaoyuandiancan/upload/1620004987162.jpg'),(23,'picture2','http://localhost:8080/xiaoyuandiancan/upload/1620005520144.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005553868 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1620005553867,'2021-05-03 09:32:33',1620004741334,1614430386281,'好吃的很','谢谢');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (1,1614430386281,1620004684709,'使用',45,'2021-05-03 09:36:23','2021-05-03 09:36:23'),(2,1614430386281,1620004684709,'添加',5,'2021-05-03 09:36:23','2021-05-03 09:36:23'),(3,1614430386281,1620005353432,'添加',13,'2021-05-03 09:37:02','2021-05-03 09:37:02'),(4,1614430386281,1620004684709,'添加',2,'2021-05-03 09:37:33','2021-05-03 09:37:33'),(5,1614430386281,1620005353432,'添加',5,'2021-05-03 09:37:33','2021-05-03 09:37:33');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-04-30 22:39:58','新闻标题1','http://localhost:8080/xiaoyuandiancan/upload/news_picture1.jpg','内容1'),(82,'2021-04-30 22:39:58','新闻标题2','http://localhost:8080/xiaoyuandiancan/upload/news_picture2.jpg','内容2'),(83,'2021-04-30 22:39:58','新闻标题3','http://localhost:8080/xiaoyuandiancan/upload/news_picture3.jpg','内容3'),(84,'2021-04-30 22:39:58','新闻标题4','http://localhost:8080/xiaoyuandiancan/upload/news_picture4.jpg','内容4'),(85,'2021-04-30 22:39:58','新闻标题5','http://localhost:8080/xiaoyuandiancan/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005853663 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1620005783947,'2021-05-03 09:36:23','2021539362347081119','shangpinxinxi',1614430386281,1620004684709,'炒鸡蛋','http://localhost:8080/xiaoyuandiancan/upload/1620004648357.jpg',5,10,9,50,45,1,'已完成','河南省开封市通许县咸平街道商业路122号'),(1620005798369,'2021-05-03 09:36:38','202153936386332015','shangpinxinxi',1614430386281,1620004802907,'酱爆鸡丁','http://localhost:8080/xiaoyuandiancan/upload/1620004748628.jpg',1,15,13,15,13,1,'已退款','河南省开封市通许县咸平街道商业路122号'),(1620005823046,'2021-05-03 09:37:02','202153937244886660','shangpinxinxi',1614430386281,1620005353432,'麻辣鸡丝','http://localhost:8080/xiaoyuandiancan/upload/1620005322720.jpg',13,16,14,208,182,1,'已完成','河南省开封市通许县咸平街道商业路122号'),(1620005853554,'2021-05-03 09:37:33','2021539373286355673','shangpinxinxi',1614430386281,1620005353432,'麻辣鸡丝','http://localhost:8080/xiaoyuandiancan/upload/1620005322720.jpg',5,16,14,80,70,1,'已支付','河南省开封市通许县咸平街道商业路122号'),(1620005853662,'2021-05-03 09:37:33','2021539373281561984','shangpinxinxi',1614430386281,1620004684709,'炒鸡蛋','http://localhost:8080/xiaoyuandiancan/upload/1620004648357.jpg',2,10,9,20,18,1,'已发货','河南省开封市通许县咸平街道商业路122号');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005306429 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-04-30 22:39:58','商品分类1'),(22,'2021-04-30 22:39:58','商品分类2'),(23,'2021-04-30 22:39:58','商品分类3'),(24,'2021-04-30 22:39:58','商品分类4'),(25,'2021-04-30 22:39:58','商品分类5'),(26,'2021-04-30 22:39:58','商品分类6'),(1620005306428,'2021-05-03 09:28:26','川菜');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005353433 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1620004684709,'2021-05-03 09:18:04','1620004642','炒鸡蛋','商品分类1','93',NULL,'大份','炒鸡蛋详情\r\n','http://localhost:8080/xiaoyuandiancan/upload/1620004648357.jpg','2021-05-03 09:37:32',5,10,9,1,1),(1620004741334,'2021-05-03 09:19:01','1620004689','干锅花菜','商品分类2','110',NULL,'大份','干锅花菜的详情\r\n','http://localhost:8080/xiaoyuandiancan/upload/1620004695054.jpg','2021-05-03 09:37:44',4,11,10,0,1),(1620004802907,'2021-05-03 09:20:02','1620004744','酱爆鸡丁','商品分类3','99',NULL,'大份','宫保鸡丁的详情\r\n','http://localhost:8080/xiaoyuandiancan/upload/1620004748628.jpg','2021-05-03 09:37:56',5,15,13,0,1),(1620005353432,'2021-05-03 09:29:13','1620005311','麻辣鸡丝','川菜','83',NULL,'大份','麻辣鸡丝的详情\r\n','http://localhost:8080/xiaoyuandiancan/upload/1620005322720.jpg','2021-05-03 09:37:32',10,16,14,1,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1389031823851147267 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1389031823851147266,'202153937244886660','不好吃','2021-05-03 09:39:28',1,2,'要的折扣太多','2021-05-03 09:39:56','2021-05-03 09:39:28');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620005870056 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620005865219,'2021-05-03 09:37:44',1614430386281,1620004741334,'shangpinxinxi','干锅花菜','http://localhost:8080/xiaoyuandiancan/upload/1620004695054.jpg'),(1620005870055,'2021-05-03 09:37:49',1614430386281,1620004802907,'shangpinxinxi','酱爆鸡丁','http://localhost:8080/xiaoyuandiancan/upload/1620004748628.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'admin','users','管理员','cptinlv45qtw1684b2tml7n7gizy2o77','2021-03-13 09:42:19','2021-05-03 10:25:45'),(15,1614430386281,'a2','yonghu','用户','fqaexvumd4u30zpqcs19bqt3l0ny4pjl','2021-05-03 09:24:05','2021-05-03 10:44:09'),(16,1620006027525,'a7','yonghu','用户','n3vsacbh8pt2jsoobm5i05gtzd727xia','2021-05-03 09:40:35','2021-05-03 10:40:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-04-30 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620006027526 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-04-30 22:39:58','a2','a2','123456','男','13823888883','229992@qq.ccom',1115,92),(1614431342348,'2021-04-30 22:39:58','a4','a4','123456','男','a41','22850@qq.com',98,52),(1615339905628,'2021-04-30 22:39:58','a3','a3','123456','男','13823888883','77389000222@qq.com',1926,3),(1620005282193,'2021-05-03 09:28:02','a6','张66','123456','女','17703786966','66@qq.com',0,0),(1620006027525,'2021-05-03 09:40:27','a7','张7','123456',NULL,'17703786967','77@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
