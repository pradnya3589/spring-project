/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - restapistarter_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restapistarter_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `restapistarter_db`;

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKj9vkma9pkho8of1bwxnt5rvgb` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `authority` */

insert  into `authority`(`id`,`name`) values 
(1,'COMPANY_CREATE'),
(2,'COMPANY_READ'),
(3,'COMPANY_UPDATE'),
(4,'COMPANY_DELETE'),
(5,'DEPARTMENT_CREATE'),
(6,'DEPARTMENT_READ'),
(7,'DEPARTMENT_UPDATE'),
(8,'DEPARTMENT_DELETE');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `text` longtext NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh4c7lvsc298whoyd4w9ta25cr` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `comments` */

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `company_id` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`company_id`,`employee_id`),
  UNIQUE KEY `UK_toga0mhsow9uddb96icomq65q` (`email`),
  UNIQUE KEY `UK_g6512s2t9cous2oxa17he4irp` (`phone_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(6);

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `notes` */

/*Table structure for table `oauth_access_token` */

DROP TABLE IF EXISTS `oauth_access_token`;

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oauth_access_token` */

insert  into `oauth_access_token`(`token_id`,`token`,`authentication_id`,`user_name`,`client_id`,`authentication`,`refresh_token`) values 
('c6e478354ae06f3652be1e0e77e8b5f0','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0f`Îç{xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$a645749a-e554-4d69-8acc-09c99e1c2213sq\0~\0	w\0\0f˙≈â˘xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$f423e9b7-166a-4a9f-8c97-c667ef624327','7a150a95b28e54c23e293a11ef4a9596','reader','spring-security-oauth2-read-write-client','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\01com.tmkcomputers.apistarter.models.auth.Authorityd\Z;—¶¸\0L\0idt\0Ljava/lang/Long;L\0namet\0Ljava/lang/String;xpsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0t\0COMPANY_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_READxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0(spring-security-oauth2-read-write-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0(spring-security-oauth2-read-write-clientt\0usernamet\0readerxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0,w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0Ù\0L\0roleq\0~\0xpt\0USERxsq\0~\0!?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0,w\0\0\0?@\0\0\0\0\0t\0resource-server-rest-apixsq\0~\0,w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0;sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0!?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0#q\0~\0$q\0~\0%q\0~\0&q\0~\0\'q\0~\0(x\0psr\0,com.tmkcomputers.apistarter.models.auth.User%:l5W‘\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0authoritiesq\0~\0L\0idq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0sr\0/org.hibernate.collection.internal.PersistentBagec˝? Ç\0\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÈ”‹M©;•\0\nZ\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Bxp\0ˇˇˇˇ\0\0q\0~\0q\0~\0?t\08com.tmkcomputers.apistarter.models.auth.User.authoritiespsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0t\0<$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSet\0reader','429864336fdd9ae4b707ab54b2edfad4'),
('0c1edc6aa564f7f2762af079af6aa170','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0f`ˇ|œxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$27536e23-652e-4e57-8aa4-dd4eeb79f82asq\0~\0	w\0\0f˙ŸyNxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$6aefea30-1054-45a3-9955-84288809db5f','d557e74143287f87984f133c7409755d','admin','spring-security-oauth2-read-write-client','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\01com.tmkcomputers.apistarter.models.auth.Authorityd\Z;—¶¸\0L\0idt\0Ljava/lang/Long;L\0namet\0Ljava/lang/String;xpsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0t\0COMPANY_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_DELETEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_DELETExq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0-xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0+L\0scopeq\0~\0-xpt\0(spring-security-oauth2-read-write-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0+xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0(spring-security-oauth2-read-write-clientt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0>w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0Ù\0L\0roleq\0~\0xpt\0USERxsq\0~\03?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0>w\0\0\0?@\0\0\0\0\0t\0resource-server-rest-apixsq\0~\0>w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'xq\0~\0Msr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\03?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\05q\0~\06q\0~\07q\0~\08q\0~\09q\0~\0:x\0psr\0,com.tmkcomputers.apistarter.models.auth.User%:l5W‘\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0authoritiesq\0~\0L\0idq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0sr\0/org.hibernate.collection.internal.PersistentBagec˝? Ç\0\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÈ”‹M©;•\0\nZ\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Txp\0ˇˇˇˇ\0\0q\0~\0q\0~\0Qt\08com.tmkcomputers.apistarter.models.auth.User.authoritiespsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'xsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'xq\0~\0t\0<$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035hat\0admin','cbfd58453dc6336e60d2682e825f3f04');

/*Table structure for table `oauth_client_details` */

DROP TABLE IF EXISTS `oauth_client_details`;

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oauth_client_details` */

insert  into `oauth_client_details`(`client_id`,`resource_ids`,`client_secret`,`scope`,`authorized_grant_types`,`web_server_redirect_uri`,`authorities`,`access_token_validity`,`refresh_token_validity`,`additional_information`,`autoapprove`) values 
('spring-security-oauth2-read-client','resource-server-rest-api','$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km','read','password,authorization_code,refresh_token,implicit',NULL,'USER',10800,2592000,NULL,NULL),
('spring-security-oauth2-read-write-client','resource-server-rest-api','$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W','read,write','password,authorization_code,refresh_token,implicit',NULL,'USER',10800,2592000,NULL,NULL);

/*Table structure for table `oauth_client_token` */

DROP TABLE IF EXISTS `oauth_client_token`;

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oauth_client_token` */

/*Table structure for table `oauth_code` */

DROP TABLE IF EXISTS `oauth_code`;

CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oauth_code` */

/*Table structure for table `oauth_refresh_token` */

DROP TABLE IF EXISTS `oauth_refresh_token`;

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oauth_refresh_token` */

insert  into `oauth_refresh_token`(`token_id`,`token`,`authentication`) values 
('429864336fdd9ae4b707ab54b2edfad4','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$a645749a-e554-4d69-8acc-09c99e1c2213sr\0java.util.DatehjÅKYt\0\0xpw\0\0f˙≈â˘x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\01com.tmkcomputers.apistarter.models.auth.Authorityd\Z;—¶¸\0L\0idt\0Ljava/lang/Long;L\0namet\0Ljava/lang/String;xpsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0t\0COMPANY_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_READxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0(spring-security-oauth2-read-write-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0(spring-security-oauth2-read-write-clientt\0usernamet\0readerxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0,w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0Ù\0L\0roleq\0~\0xpt\0USERxsq\0~\0!?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0,w\0\0\0?@\0\0\0\0\0t\0resource-server-rest-apixsq\0~\0,w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0;sr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\0!?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0#q\0~\0$q\0~\0%q\0~\0&q\0~\0\'q\0~\0(x\0psr\0,com.tmkcomputers.apistarter.models.auth.User%:l5W‘\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0authoritiesq\0~\0L\0idq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0sr\0/org.hibernate.collection.internal.PersistentBagec˝? Ç\0\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÈ”‹M©;•\0\nZ\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Bxp\0ˇˇˇˇ\0\0q\0~\0q\0~\0?t\08com.tmkcomputers.apistarter.models.auth.User.authoritiespsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\0t\0<$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSet\0reader'),
('cbfd58453dc6336e60d2682e825f3f04','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$27536e23-652e-4e57-8aa4-dd4eeb79f82asr\0java.util.DatehjÅKYt\0\0xpw\0\0f˙ŸyNx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\01com.tmkcomputers.apistarter.models.auth.Authorityd\Z;—¶¸\0L\0idt\0Ljava/lang/Long;L\0namet\0Ljava/lang/String;xpsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0t\0COMPANY_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0COMPANY_DELETEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_CREATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_READsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_UPDATEsq\0~\0\rsq\0~\0\0\0\0\0\0\0\0t\0DEPARTMENT_DELETExq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0-xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0+L\0scopeq\0~\0-xpt\0(spring-security-oauth2-read-write-clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0+xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0	client_idt\0(spring-security-oauth2-read-write-clientt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0>w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0Ù\0L\0roleq\0~\0xpt\0USERxsq\0~\03?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xppsq\0~\0>w\0\0\0?@\0\0\0\0\0t\0resource-server-rest-apixsq\0~\0>w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0Ù\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'xq\0~\0Msr\0java.util.LinkedHashMap4¿N\\l¿˚\0Z\0accessOrderxq\0~\03?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\05q\0~\06q\0~\07q\0~\08q\0~\09q\0~\0:x\0psr\0,com.tmkcomputers.apistarter.models.auth.User%:l5W‘\0Z\0accountExpiredZ\0\raccountLockedZ\0credentialsExpiredZ\0enabledL\0authoritiesq\0~\0L\0idq\0~\0L\0passwordq\0~\0L\0usernameq\0~\0xp\0\0\0sr\0/org.hibernate.collection.internal.PersistentBagec˝? Ç\0\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÈ”‹M©;•\0\nZ\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedZ\0\risTempSessionL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Txp\0ˇˇˇˇ\0\0q\0~\0q\0~\0Qt\08com.tmkcomputers.apistarter.models.auth.User.authoritiespsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'xsq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0q\0~\0!q\0~\0$q\0~\0\'xq\0~\0t\0<$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035hat\0admin');

/*Table structure for table `post_tags` */

DROP TABLE IF EXISTS `post_tags`;

CREATE TABLE `post_tags` (
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  KEY `FKm6cfovkyqvu5rlm6ahdx3eavj` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `post_tags` */

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `content` longtext NOT NULL,
  `description` varchar(250) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mchce1gm7f6otpphxd6ixsdps` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `posts` */

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_121cwhh4hlnc550mh1tgm6a80` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tags` */

/*Table structure for table `testaddress` */

DROP TABLE IF EXISTS `testaddress`;

CREATE TABLE `testaddress` (
  `id` bigint(20) NOT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `testaddress` */

/*Table structure for table `testcar` */

DROP TABLE IF EXISTS `testcar`;

CREATE TABLE `testcar` (
  `id` bigint(20) NOT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjqp14dkmi2lh5kjavv4t0dkqy` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `testcar` */

/*Table structure for table `testcompany` */

DROP TABLE IF EXISTS `testcompany`;

CREATE TABLE `testcompany` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKs7t58ycldrjrftpun092tkhu7` (`name`),
  UNIQUE KEY `UKixtsdj8726b0kjxbks6mwaetn` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `testcompany` */

insert  into `testcompany`(`id`,`name`) values 
(1,'TMK Computers'),
(2,'TMK Pictures'),
(4,'Netflix');

/*Table structure for table `testdepartment` */

DROP TABLE IF EXISTS `testdepartment`;

CREATE TABLE `testdepartment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh1m88q0f7sc0mk76kju4kcn6f` (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `testdepartment` */

insert  into `testdepartment`(`id`,`name`,`company_id`) values 
(3,'Editing',2),
(5,'Entertainment',4);

/*Table structure for table `testemployee` */

DROP TABLE IF EXISTS `testemployee`;

CREATE TABLE `testemployee` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKga73hdtpb67twlr9c1i337tyt` (`address_id`),
  KEY `FKbejtwvg9bxus2mffsm3swj3u9` (`department_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `testemployee` */

/*Table structure for table `testoffice` */

DROP TABLE IF EXISTS `testoffice`;

CREATE TABLE `testoffice` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKak81m3gkj8xq5t48xuflbj0kn` (`address_id`),
  KEY `FK4ffkmqmlnyv67ld0dctcvjsfj` (`department_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `testoffice` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_expired` bit(1) DEFAULT NULL,
  `account_locked` bit(1) DEFAULT NULL,
  `credentials_expired` bit(1) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKcfu5mc57wynm82447fk7rs4dw` (`user_name`),
  UNIQUE KEY `UK6lxhe9wd43lnqsdpb7p2tyydf` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`account_expired`,`account_locked`,`credentials_expired`,`enabled`,`password`,`user_name`) values 
(1,'\0','\0','\0','','$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha','admin'),
(2,'\0','\0','\0','','$2a$08$dwYz8O.qtUXboGosJFsS4u19LHKW7aCQ0LXXuNlRfjjGKwj5NfKSe','reader'),
(3,'\0','\0','\0','','$2a$08$kPjzxewXRGNRiIuL4FtQH.mhMn7ZAFBYKB3ROz.J24IX8vDAcThsG','modifier'),
(4,'\0','\0','\0','','$2a$08$vVXqh6S8TqfHMs1SlNTu/.J25iUCrpGBpyGExA.9yI.IlDRadR6Ea','reader2');

/*Table structure for table `user_phone_numbers` */

DROP TABLE IF EXISTS `user_phone_numbers`;

CREATE TABLE `user_phone_numbers` (
  `user_id` bigint(20) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  KEY `FKjnwj7m5dph0urds5ymb7ca3d3` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_phone_numbers` */

/*Table structure for table `user_profiles` */

DROP TABLE IF EXISTS `user_profiles`;

CREATE TABLE `user_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `house_number` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_e5h89rk3ijvdmaiig4srogdc6` (`user_id`),
  UNIQUE KEY `UK_dqltqkaw58m11jbov0udx8xqg` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_profiles` */

/*Table structure for table `users_authorities` */

DROP TABLE IF EXISTS `users_authorities`;

CREATE TABLE `users_authorities` (
  `user_id` bigint(20) NOT NULL,
  `authority_id` bigint(20) NOT NULL,
  KEY `FKac1qasdciwqra319h2pa72gh6` (`authority_id`),
  KEY `FKr0831xdfdp0ulvxfc854mfuct` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `users_authorities` */

insert  into `users_authorities`(`user_id`,`authority_id`) values 
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(2,2),
(2,6),
(3,3),
(3,7),
(4,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
