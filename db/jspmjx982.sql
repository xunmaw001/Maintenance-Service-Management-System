-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmjx982
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615811020973 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-15 12:18:37',1,1,'提问1','回复1',1),(52,'2021-03-15 12:18:37',2,2,'提问2','回复2',2),(53,'2021-03-15 12:18:37',3,3,'提问3','回复3',3),(54,'2021-03-15 12:18:37',4,4,'提问4','回复4',4),(55,'2021-03-15 12:18:37',5,5,'提问5','回复5',5),(56,'2021-03-15 12:18:37',6,6,'提问6','回复6',6),(1615811020972,'2021-03-15 12:23:40',1615810944567,NULL,'‍你好\r\n','请问有什么能帮你的\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmjx982/upload/1615810881708.jpg'),(2,'picture2','http://localhost:8080/jspmjx982/upload/1615810892878.jpg'),(3,'picture3','http://localhost:8080/jspmjx982/upload/1615810903830.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615811008585 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-15 12:18:37','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-15 12:18:37','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-15 12:18:37','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-15 12:18:37','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-15 12:18:37','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-15 12:18:37','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615811008584,'2021-03-15 12:23:27','sdsfd','<p>sdfsddsgg</p>',0,1615810944567,'11','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qichexinxi`
--

DROP TABLE IF EXISTS `qichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichexinghao` varchar(200) DEFAULT NULL COMMENT '汽车型号',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `pailiang` varchar(200) DEFAULT NULL COMMENT '排量',
  `shichangzhidaojia` varchar(200) DEFAULT NULL COMMENT '市场指导价',
  `qichexiangqing` longtext COMMENT '汽车详情',
  `mendiandizhi` varchar(200) DEFAULT NULL COMMENT '门店地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615811239292 DEFAULT CHARSET=utf8 COMMENT='汽车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qichexinxi`
--

LOCK TABLES `qichexinxi` WRITE;
/*!40000 ALTER TABLE `qichexinxi` DISABLE KEYS */;
INSERT INTO `qichexinxi` VALUES (21,'2021-03-15 12:18:36','汽车型号1','http://localhost:8080/jspmjx982/upload/1615810774152.jpg','品牌1','车型1','排量1','市场指导价1','汽车详情1\r\n','门店地址1','13823888881'),(22,'2021-03-15 12:18:36','汽车型号2','http://localhost:8080/jspmjx982/upload/1615810790590.jpg','品牌2','车型2','排量2','市场指导价2','汽车详情2\r\n','门店地址2','13823888882'),(23,'2021-03-15 12:18:36','汽车型号3','http://localhost:8080/jspmjx982/upload/1615810806844.jpg','品牌3','车型3','排量3','市场指导价3','汽车详情3\r\n','门店地址3','13823888883'),(24,'2021-03-15 12:18:36','汽车型号4','http://localhost:8080/jspmjx982/upload/1615810820927.jpg','品牌4','车型4','排量4','市场指导价4','汽车详情4\r\n','门店地址4','13823888884'),(25,'2021-03-15 12:18:36','汽车型号5','http://localhost:8080/jspmjx982/upload/1615810836294.jpg','品牌5','车型5','排量5','市场指导价5','汽车详情5\r\n','门店地址5','13823888885'),(26,'2021-03-15 12:18:36','汽车型号6','http://localhost:8080/jspmjx982/upload/1615810861442.jpg','品牌6','车型6','排量6','市场指导价6','汽车详情6\r\n','门店地址6','13823888886'),(1615811239291,'2021-03-15 12:27:18','奥迪A8L','http://localhost:8080/jspmjx982/upload/1615811206299.jpg','奥迪','2021款 A8L 50 TFSI quattro 舒适型','2.0T','80.3万','sdgsfsfgsdgsg\r\n','','');
/*!40000 ALTER TABLE `qichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijiayuyue`
--

DROP TABLE IF EXISTS `shijiayuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijiayuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `qichexinghao` varchar(200) DEFAULT NULL COMMENT '汽车型号',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chexing` varchar(200) DEFAULT NULL COMMENT '车型',
  `mendiandizhi` varchar(200) DEFAULT NULL COMMENT '门店地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810987093 DEFAULT CHARSET=utf8 COMMENT='试驾预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijiayuyue`
--

LOCK TABLES `shijiayuyue` WRITE;
/*!40000 ALTER TABLE `shijiayuyue` DISABLE KEYS */;
INSERT INTO `shijiayuyue` VALUES (31,'2021-03-15 12:18:36','用户名1','用户姓名1','手机号码1','汽车型号1','品牌1','车型1','门店地址1','联系方式1','2021-03-15 20:18:36','备注1','是',''),(32,'2021-03-15 12:18:36','用户名2','用户姓名2','手机号码2','汽车型号2','品牌2','车型2','门店地址2','联系方式2','2021-03-15 20:18:36','备注2','是',''),(33,'2021-03-15 12:18:36','用户名3','用户姓名3','手机号码3','汽车型号3','品牌3','车型3','门店地址3','联系方式3','2021-03-15 20:18:36','备注3','是',''),(34,'2021-03-15 12:18:36','用户名4','用户姓名4','手机号码4','汽车型号4','品牌4','车型4','门店地址4','联系方式4','2021-03-15 20:18:36','备注4','是',''),(35,'2021-03-15 12:18:36','用户名5','用户姓名5','手机号码5','汽车型号5','品牌5','车型5','门店地址5','联系方式5','2021-03-15 20:18:36','备注5','是',''),(36,'2021-03-15 12:18:36','用户名6','用户姓名6','手机号码6','汽车型号6','品牌6','车型6','门店地址6','联系方式6','2021-03-15 20:18:36','备注6','是',''),(1615810987092,'2021-03-15 12:23:06','11','杨先生','13823899999','汽车型号1','品牌1','车型1','门店地址1','13823888881','2021-03-16 10:00:00','','是','sdgsgg');
/*!40000 ALTER TABLE `shijiayuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','179v3eoz5vb1ipdrygwh9x95ju8o1gqd','2021-03-15 12:19:22','2021-03-15 13:25:09'),(2,1615810944567,'11','yonghu','用户','s1yhvakff0jf42209xfhg5vyj4a6on5b','2021-03-15 12:22:36','2021-03-15 13:24:49');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-15 12:18:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weixiubaoyang`
--

DROP TABLE IF EXISTS `weixiubaoyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weixiubaoyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiudanhao` varchar(200) DEFAULT NULL COMMENT '维修单号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `weixiuxiangmu` varchar(200) DEFAULT NULL COMMENT '维修项目',
  `jine` varchar(200) DEFAULT NULL COMMENT '金额',
  `weixiuriqi` date DEFAULT NULL COMMENT '维修日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixiudanhao` (`weixiudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615811074805 DEFAULT CHARSET=utf8 COMMENT='维修保养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weixiubaoyang`
--

LOCK TABLES `weixiubaoyang` WRITE;
/*!40000 ALTER TABLE `weixiubaoyang` DISABLE KEYS */;
INSERT INTO `weixiubaoyang` VALUES (41,'2021-03-15 12:18:36','维修单号1','用户名1','用户姓名1','手机号码1','维修项目1','金额1','2021-03-15','备注1','未支付'),(42,'2021-03-15 12:18:36','维修单号2','用户名2','用户姓名2','手机号码2','维修项目2','金额2','2021-03-15','备注2','未支付'),(43,'2021-03-15 12:18:36','维修单号3','用户名3','用户姓名3','手机号码3','维修项目3','金额3','2021-03-15','备注3','未支付'),(44,'2021-03-15 12:18:36','维修单号4','用户名4','用户姓名4','手机号码4','维修项目4','金额4','2021-03-15','备注4','未支付'),(45,'2021-03-15 12:18:37','维修单号5','用户名5','用户姓名5','手机号码5','维修项目5','金额5','2021-03-15','备注5','未支付'),(46,'2021-03-15 12:18:37','维修单号6','用户名6','用户姓名6','手机号码6','维修项目6','金额6','2021-03-15','备注6','未支付'),(1615811074804,'2021-03-15 12:24:34','1615811055','11','杨先生','13823899999','汽车保养','850','2021-03-16','','已支付');
/*!40000 ALTER TABLE `weixiubaoyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615810944568 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-15 12:18:36','用户1','123456','用户姓名1','http://localhost:8080/jspmjx982/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-15 12:18:36','用户2','123456','用户姓名2','http://localhost:8080/jspmjx982/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-15 12:18:36','用户3','123456','用户姓名3','http://localhost:8080/jspmjx982/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-15 12:18:36','用户4','123456','用户姓名4','http://localhost:8080/jspmjx982/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-15 12:18:36','用户5','123456','用户姓名5','http://localhost:8080/jspmjx982/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-15 12:18:36','用户6','123456','用户姓名6','http://localhost:8080/jspmjx982/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1615810944567,'2021-03-15 12:22:24','11','123456','杨先生',NULL,NULL,'13823899999','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-18 15:14:31
