# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: pencilcms_db
# Generation Time: 2012-12-23 17:38:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table pencil_file_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_file_folders`;

CREATE TABLE `pencil_file_folders` (
  `file_id` bigint(20) unsigned NOT NULL,
  `folder_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_files`;

CREATE TABLE `pencil_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `mime` varchar(32) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_folders`;

CREATE TABLE `pencil_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_galleries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_galleries`;

CREATE TABLE `pencil_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_gallery_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_gallery_images`;

CREATE TABLE `pencil_gallery_images` (
  `gallery_id` bigint(20) unsigned NOT NULL,
  `image_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`gallery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_group`;

CREATE TABLE `pencil_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_group_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_group_images`;

CREATE TABLE `pencil_group_images` (
  `group_id` bigint(20) unsigned NOT NULL,
  `image_id` bigint(20) unsigned NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_group_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_group_profiles`;

CREATE TABLE `pencil_group_profiles` (
  `group_id` bigint(20) unsigned NOT NULL,
  `description` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_images`;

CREATE TABLE `pencil_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) unsigned NOT NULL,
  `original_image` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(24) DEFAULT NULL,
  `crop` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_page_blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_page_blocks`;

CREATE TABLE `pencil_page_blocks` (
  `page_id` bigint(20) unsigned NOT NULL,
  `block` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_page_descriptors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_page_descriptors`;

CREATE TABLE `pencil_page_descriptors` (
  `page_id` bigint(20) unsigned NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `description` text,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_pages`;

CREATE TABLE `pencil_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `template` varchar(64) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_revision_page_blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_revision_page_blocks`;

CREATE TABLE `pencil_revision_page_blocks` (
  `page_id` bigint(20) unsigned NOT NULL,
  `block` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_revision_page_descriptors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_revision_page_descriptors`;

CREATE TABLE `pencil_revision_page_descriptors` (
  `page_id` bigint(20) unsigned NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `description` text,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_revision_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_revision_pages`;

CREATE TABLE `pencil_revision_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `template` varchar(64) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_revisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_revisions`;

CREATE TABLE `pencil_revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_tag_entities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_tag_entities`;

CREATE TABLE `pencil_tag_entities` (
  `tag_id` bigint(20) unsigned NOT NULL,
  `entity_model` varchar(255) NOT NULL DEFAULT '',
  `entity_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_tags`;

CREATE TABLE `pencil_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_user_facebook
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_user_facebook`;

CREATE TABLE `pencil_user_facebook` (
  `user_id` bigint(20) unsigned NOT NULL,
  `facebook_id` bigint(20) unsigned NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_user_groups`;

CREATE TABLE `pencil_user_groups` (
  `user_id` bigint(20) unsigned NOT NULL,
  `group_id` bigint(20) unsigned NOT NULL,
  `role_bit` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_user_images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_user_images`;

CREATE TABLE `pencil_user_images` (
  `user_id` bigint(20) unsigned NOT NULL,
  `image_id` bigint(20) unsigned NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_user_logins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_user_logins`;

CREATE TABLE `pencil_user_logins` (
  `uid` char(16) NOT NULL DEFAULT '',
  `user_id` bigint(20) unsigned NOT NULL,
  `session_id` char(32) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_user_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_user_profiles`;

CREATE TABLE `pencil_user_profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_ext` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table pencil_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pencil_users`;

CREATE TABLE `pencil_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `password` char(64) NOT NULL DEFAULT '',
  `key` char(64) NOT NULL DEFAULT '',
  `type` tinyint(4) DEFAULT NULL,
  `is_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
