/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dianzibingli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianzibingli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianzibingli`;

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `bingli_types` int(11) DEFAULT NULL COMMENT '病例类型 Search111',
  `ruyuan_types` int(11) DEFAULT NULL COMMENT '入院类型 Search111',
  `ruyuan_time` timestamp NULL DEFAULT NULL COMMENT '入院时间 Search111',
  `bingli_file` varchar(200) DEFAULT NULL COMMENT '病例文件',
  `bingli_content` text COMMENT '诊断',
  `bingli_yeson_types` int(11) DEFAULT NULL COMMENT '状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='病例';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`huanzhe_id`,`bingli_types`,`ruyuan_types`,`ruyuan_time`,`bingli_file`,`bingli_content`,`bingli_yeson_types`,`create_time`) values (1,1,3,2,'2021-05-19 00:00:00','http://localhost:8080/dianzibingli/file/download?fileName=1621474714403.txt','患者1的诊断详情\r\n',1,'2021-05-20 09:38:52'),(2,2,4,2,'2021-05-21 00:00:00','http://localhost:8080/dianzibingli/file/download?fileName=1621475561870.txt','患者2的诊断详情\r\n',1,'2021-05-20 09:52:55');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-17 21:09:06'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-17 21:09:06'),(3,'bingli_types','病例类型名称',1,'病例类型1',NULL,'2021-05-17 21:09:06'),(4,'bingli_types','病例类型名称',2,'病例类型2',NULL,'2021-05-17 21:09:06'),(5,'bingli_types','病例类型名称',3,'病例类型3',NULL,'2021-05-17 21:09:06'),(6,'bingli_types','病例类型名称',4,'病例类型4',NULL,'2021-05-17 21:09:06'),(7,'bingli_yeson_types','审核状态',1,'待审核',NULL,'2021-05-17 21:09:06'),(8,'bingli_yeson_types','审核状态',2,'通过',NULL,'2021-05-17 21:09:06'),(9,'bingli_yeson_types','审核状态',3,'不通过',NULL,'2021-05-17 21:09:06'),(10,'jiankang_types','健康状况',1,'健康',NULL,'2021-05-17 21:09:06'),(11,'jiankang_types','健康状况',2,'亚健康',NULL,'2021-05-17 21:09:06'),(12,'jiankang_types','健康状况',3,'不健康',NULL,'2021-05-17 21:09:06'),(13,'xunxi_types','讯息类型名称',1,'讯息类型1',NULL,'2021-05-17 21:09:06'),(14,'xunxi_types','讯息类型名称',2,'讯息类型2',NULL,'2021-05-17 21:09:06'),(15,'xunxi_types','讯息类型名称',3,'讯息类型3',NULL,'2021-05-17 21:09:06'),(16,'xunxi_types','讯息类型名称',4,'讯息类型4',NULL,'2021-05-18 10:13:04'),(17,'ruyuan_types','入院类型名称',1,'门诊',NULL,'2021-05-19 21:00:26'),(18,'ruyuan_types','入院类型名称',2,'急诊',NULL,'2021-05-19 21:00:26'),(19,'ruyuan_types','入院类型名称',3,'其他',NULL,'2021-05-19 21:00:26'),(20,'huli_types','护理类型名称',1,'护理类型1',NULL,'2021-05-19 21:00:26'),(21,'huli_types','护理类型名称',2,'护理类型2',NULL,'2021-05-19 21:00:26'),(22,'huli_types','护理类型名称',3,'护理类型3',NULL,'2021-05-19 21:00:26'),(23,'jiancha_types','检查类型名称',1,'胸部CT检查',NULL,'2021-05-19 21:00:26'),(24,'jiancha_types','检查类型名称',2,'脑部CT检查',NULL,'2021-05-19 21:00:26'),(25,'jiancha_types','检查类型名称',3,'腿部CT检查',NULL,'2021-05-19 21:00:26'),(26,'yizhu_types','医嘱类型名称',1,'医嘱类型1',NULL,'2021-05-19 21:00:26'),(27,'yizhu_types','医嘱类型名称',2,'医嘱类型2',NULL,'2021-05-19 21:00:26'),(28,'yizhu_types','医嘱类型名称',3,'医嘱类型3',NULL,'2021-05-19 21:00:26'),(29,'shoushu_types','手术类型名称',1,'手术类型1',NULL,'2021-05-19 21:15:17'),(30,'shoushu_types','手术类型名称',2,'手术类型2',NULL,'2021-05-19 21:15:17'),(31,'shoushu_types','手术类型名称',3,'手术类型3',NULL,'2021-05-19 21:15:17'),(32,'yizhu_types','医嘱类型名称',4,'医嘱类型4',NULL,'2021-05-20 09:52:08');

/*Table structure for table `huanzhe` */

DROP TABLE IF EXISTS `huanzhe`;

CREATE TABLE `huanzhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `huanzhe_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `huanzhe_phone` varchar(200) DEFAULT NULL COMMENT '患者手机号 Search111 ',
  `huanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '患者身份证号 Search111 ',
  `huanzhe_address` varchar(200) DEFAULT NULL COMMENT '现住地址',
  `huanzhe_time` timestamp NULL DEFAULT NULL COMMENT '出生年月',
  `huanzhe_photo` varchar(200) DEFAULT NULL COMMENT '患者照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `huanzhe` */

insert  into `huanzhe`(`id`,`username`,`password`,`huanzhe_name`,`huanzhe_phone`,`huanzhe_id_number`,`huanzhe_address`,`huanzhe_time`,`huanzhe_photo`,`sex_types`,`create_time`) values (1,'a1','123456','患者1','17703786901','410224199610232001','现住地址','2021-05-11 00:00:00','http://localhost:8080/dianzibingli/file/download?fileName=1621474646559.jpg',1,'2021-05-20 09:37:31'),(2,'a2','123456','患者2','17703786902','410224199610232002','现住地址2','2021-05-10 00:00:00','http://localhost:8080/dianzibingli/file/download?fileName=1621474678183.jpg',2,'2021-05-20 09:38:00'),(3,'a9','123456','张9','17703786909','410224199610232009','现住地址9','2021-05-02 00:00:00','http://localhost:8080/dianzibingli/file/download?fileName=1621475916733.jpg',2,'2021-05-20 09:59:28');

/*Table structure for table `huli` */

DROP TABLE IF EXISTS `huli`;

CREATE TABLE `huli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `huli_name` varchar(200) DEFAULT NULL COMMENT '护理名字 Search111',
  `huli_types` int(11) DEFAULT NULL COMMENT '护理类型 Search111',
  `huli_time` timestamp NULL DEFAULT NULL COMMENT '护理时间 Search111',
  `huli_content` text COMMENT '护理详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='护理记录';

/*Data for the table `huli` */

insert  into `huli`(`id`,`huanzhe_id`,`huli_name`,`huli_types`,`huli_time`,`huli_content`,`create_time`) values (1,1,'护理1',3,'2021-05-21 00:00:00','护理1的详情\r\n','2021-05-20 09:39:48'),(2,2,'护理2',3,'2021-05-22 00:00:00','护理2的详情\r\n','2021-05-20 09:49:43');

/*Table structure for table `jiancha` */

DROP TABLE IF EXISTS `jiancha`;

CREATE TABLE `jiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `jiancha_name` varchar(200) DEFAULT NULL COMMENT '检查名字 Search111',
  `jiancha_types` int(11) DEFAULT NULL COMMENT '检查类型 Search111',
  `jiancha_time` timestamp NULL DEFAULT NULL COMMENT '检查时间 Search111',
  `jiancha_content` text COMMENT '检查详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='检查记录';

/*Data for the table `jiancha` */

insert  into `jiancha`(`id`,`huanzhe_id`,`jiancha_name`,`jiancha_types`,`jiancha_time`,`jiancha_content`,`create_time`) values (1,1,'患者1的脑部ct检查',2,'2021-05-21 00:00:00','患者1的脑部ct检查详情\r\n','2021-05-20 09:40:28'),(2,2,'患者2的脑部ct检查',3,'2021-05-22 00:00:00','患者2的脑部ct检查的详情\r\n','2021-05-20 09:50:20');

/*Table structure for table `jiankangrizhi` */

DROP TABLE IF EXISTS `jiankangrizhi`;

CREATE TABLE `jiankangrizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `jiankangrizhi_time` varchar(200) DEFAULT NULL COMMENT '日期 Search111',
  `yinshi` varchar(200) DEFAULT NULL COMMENT '饮食状况 Search111',
  `jiankang_types` int(11) DEFAULT NULL COMMENT '健康状况 Search111',
  `xuetang` int(11) DEFAULT NULL COMMENT '血糖',
  `xueya` int(11) DEFAULT NULL COMMENT '血压',
  `xuezhi` int(11) DEFAULT NULL COMMENT '血脂',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '评价人',
  `jiankangrizhi_content` text COMMENT '评价建议',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='健康日记';

/*Data for the table `jiankangrizhi` */

insert  into `jiankangrizhi`(`id`,`huanzhe_id`,`jiankangrizhi_time`,`yinshi`,`jiankang_types`,`xuetang`,`xueya`,`xuezhi`,`yisheng_id`,`jiankangrizhi_content`,`insert_time`,`create_time`) values (1,1,'2021-05-04','良好',1,75,74,76,NULL,NULL,'2021-05-18 10:16:41','2021-05-18 10:16:41'),(2,1,'2021-05-05','好',2,79,78,77,1,'这次控制的很不错\r\n','2021-05-18 10:17:13','2021-05-18 10:17:13');

/*Table structure for table `meirituijian` */

DROP TABLE IF EXISTS `meirituijian`;

CREATE TABLE `meirituijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirituijian_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111 ',
  `meirituijian_time` varchar(200) DEFAULT NULL COMMENT '日期 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `meirituijian_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='每日推荐';

/*Data for the table `meirituijian` */

insert  into `meirituijian`(`id`,`meirituijian_name`,`meirituijian_time`,`insert_time`,`meirituijian_content`,`create_time`) values (3,'名称1','2021-05-18','2021-05-18 10:05:16','推荐详情\r\n','2021-05-18 10:05:16'),(4,'每日推荐2','2021-05-20','2021-05-18 10:12:13','每日推荐2的详情\r\n','2021-05-18 10:12:13');

/*Table structure for table `shoushu` */

DROP TABLE IF EXISTS `shoushu`;

CREATE TABLE `shoushu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `shoushu_name` varchar(200) DEFAULT NULL COMMENT '手术名字 Search111',
  `shoushu_types` int(11) DEFAULT NULL COMMENT '手术类型 Search111',
  `shoushu_time` timestamp NULL DEFAULT NULL COMMENT '手术时间 Search111',
  `shoushu_content` text COMMENT '手术详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='手术记录';

/*Data for the table `shoushu` */

insert  into `shoushu`(`id`,`huanzhe_id`,`shoushu_name`,`shoushu_types`,`shoushu_time`,`shoushu_content`,`create_time`) values (1,1,'手术名字1',2,'2021-05-21 03:00:02','这是某某某手术\r\n','2021-05-20 09:39:29'),(2,2,'手术2',2,'2021-05-12 00:00:00','手术2的详情\r\n','2021-05-20 09:49:21');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','y5urwsz9850tztgkfj9moocbow5f7ayo','2021-05-18 09:36:00','2021-05-20 10:28:36'),(2,1,'a1','huanzhe','患者','xuvf0zwdopjdmmvigpno0cfqaejgqg5q','2021-05-18 10:13:11','2021-05-20 10:54:56'),(3,1,'a11','yisheng','医生','fe4lkefq4vaoe2csnn2clky1ulu7ng9n','2021-05-18 10:17:27','2021-05-20 10:52:19'),(4,4,'a8','huanzhe','患者','98z9jstsqss0oricsn2vz55pvlpxrzhl','2021-05-18 10:25:09','2021-05-18 11:25:09'),(5,3,'a9','huanzhe','患者','zoqlbdmmh02m2n8e1jhdd4eifegdisx5','2021-05-20 09:59:34','2021-05-20 10:59:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xunxi` */

DROP TABLE IF EXISTS `xunxi`;

CREATE TABLE `xunxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunxi_name` varchar(200) DEFAULT NULL COMMENT '讯息名称 Search111 ',
  `xunxi_types` int(11) DEFAULT NULL COMMENT '讯息类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `xunxi_content` text COMMENT '讯息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='医院讯息';

/*Data for the table `xunxi` */

insert  into `xunxi`(`id`,`xunxi_name`,`xunxi_types`,`insert_time`,`xunxi_content`,`create_time`) values (1,'讯息1',1,'2021-05-18 10:05:34','讯息详情1\r\n','2021-05-18 10:05:34'),(2,'讯息2',2,'2021-05-18 10:12:29','讯息i2de详情\r\n','2021-05-18 10:12:29');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号 Search111 ',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 Search111 ',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_name`,`yisheng_phone`,`yisheng_id_number`,`yisheng_photo`,`sex_types`,`create_time`) values (1,'a11','123456','医生11','17703786911','410224199610232011','http://localhost:8080/dianzibingli/file/download?fileName=1621302393002.jpg',2,'2021-05-18 09:46:34'),(2,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/dianzibingli/file/download?fileName=1621303884425.jpg',1,'2021-05-18 10:11:28');

/*Table structure for table `yizhu` */

DROP TABLE IF EXISTS `yizhu`;

CREATE TABLE `yizhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanzhe_id` int(11) DEFAULT NULL COMMENT '患者',
  `yizhu_name` varchar(200) DEFAULT NULL COMMENT '医嘱名字 Search111',
  `yizhu_types` int(11) DEFAULT NULL COMMENT '医嘱类型 Search111',
  `yizhu_time` timestamp NULL DEFAULT NULL COMMENT '医嘱时间 Search111',
  `yizhu_content` text COMMENT '医嘱详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='医嘱';

/*Data for the table `yizhu` */

insert  into `yizhu`(`id`,`huanzhe_id`,`yizhu_name`,`yizhu_types`,`yizhu_time`,`yizhu_content`,`create_time`) values (1,1,'医嘱1',1,'2021-05-21 00:00:00','医嘱详情\r\n','2021-05-20 09:47:45'),(2,2,'患者2的医嘱',2,'2021-05-21 00:00:00','医嘱2的详情\r\n','2021-05-20 09:50:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
