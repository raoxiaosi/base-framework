/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.33 : Database - rain_log_dev
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`rain_log_dev` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `rain_log_dev`;

/*Table structure for table `user_login_logout_log` */

DROP TABLE IF EXISTS `user_login_logout_log`;

CREATE TABLE `user_login_logout_log` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `user_name` varchar(200) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(100) DEFAULT NULL COMMENT '手机号码',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型 1-登录 2-登出',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip',
  `country` varchar(100) DEFAULT NULL COMMENT '国家',
  `province` varchar(100) DEFAULT NULL COMMENT '省份',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `area` varchar(100) DEFAULT NULL COMMENT '区县',
  `isp` varchar(100) DEFAULT NULL COMMENT '互联网服务提供商',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_type` varchar(20) DEFAULT NULL COMMENT '用户类型',
  `wx_openid` varchar(100) DEFAULT NULL COMMENT '微信openID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统用户登录登出日志';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
