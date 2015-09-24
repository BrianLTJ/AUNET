-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 �?09 �?24 �?13:11
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `aunet`
--
CREATE DATABASE IF NOT EXISTS `aunet` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `aunet`;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_access`
--

CREATE TABLE IF NOT EXISTS `aunet_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aunet_access`
--

INSERT INTO `aunet_access` (`role_id`, `node_id`, `level`, `module`) VALUES
(5, 59, 3, NULL),
(5, 48, 2, NULL),
(5, 47, 3, NULL),
(4, 70, 3, NULL),
(4, 68, 3, NULL),
(4, 69, 3, NULL),
(4, 62, 2, NULL),
(5, 46, 3, NULL),
(5, 60, 3, NULL),
(5, 61, 3, NULL),
(5, 45, 2, NULL),
(5, 36, 3, NULL),
(5, 37, 3, NULL),
(5, 38, 3, NULL),
(5, 72, 3, NULL),
(5, 63, 3, NULL),
(5, 34, 2, NULL),
(5, 40, 3, NULL),
(5, 41, 3, NULL),
(5, 39, 2, NULL),
(5, 70, 3, NULL),
(5, 68, 3, NULL),
(5, 69, 3, NULL),
(5, 62, 2, NULL),
(5, 33, 1, NULL),
(5, 35, 1, NULL),
(5, 89, 3, NULL),
(5, 88, 2, NULL),
(5, 86, 1, NULL),
(4, 33, 1, NULL),
(5, 58, 3, NULL),
(5, 50, 3, NULL),
(5, 49, 3, NULL),
(4, 104, 3, NULL),
(4, 103, 2, NULL),
(4, 91, 1, NULL),
(5, 59, 3, NULL),
(5, 48, 2, NULL),
(5, 47, 3, NULL),
(4, 70, 3, NULL),
(4, 68, 3, NULL),
(4, 69, 3, NULL),
(4, 62, 2, NULL),
(5, 46, 3, NULL),
(5, 60, 3, NULL),
(5, 61, 3, NULL),
(5, 45, 2, NULL),
(5, 36, 3, NULL),
(5, 37, 3, NULL),
(5, 38, 3, NULL),
(5, 72, 3, NULL),
(5, 63, 3, NULL),
(5, 34, 2, NULL),
(5, 40, 3, NULL),
(5, 41, 3, NULL),
(5, 39, 2, NULL),
(5, 70, 3, NULL),
(5, 68, 3, NULL),
(5, 69, 3, NULL),
(5, 62, 2, NULL),
(5, 33, 1, NULL),
(5, 35, 1, NULL),
(5, 89, 3, NULL),
(5, 88, 2, NULL),
(5, 86, 1, NULL),
(4, 33, 1, NULL),
(5, 58, 3, NULL),
(5, 50, 3, NULL),
(5, 49, 3, NULL),
(4, 104, 3, NULL),
(4, 103, 2, NULL),
(4, 91, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_advise`
--

CREATE TABLE IF NOT EXISTS `aunet_advise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `qq` varchar(9) DEFAULT NULL,
  `title` varchar(15) NOT NULL DEFAULT ' ',
  `content` text NOT NULL,
  `feedback` tinyint(1) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `aunet_advise`
--

INSERT INTO `aunet_advise` (`id`, `name`, `phone`, `qq`, `title`, `content`, `feedback`, `time`) VALUES
(7, 'aaa', 'aaa', 'aaa', 'aaa', 'aaaa', 1, '2015-04-25 08:42:48'),
(9, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 1, '2015-04-28 10:54:31');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_announce`
--

CREATE TABLE IF NOT EXISTS `aunet_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `aunet_announce`
--

INSERT INTO `aunet_announce` (`id`, `uid`, `title`, `time`) VALUES
(2, 1, '明天社团网上线', 1429942058);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_attr`
--

CREATE TABLE IF NOT EXISTS `aunet_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(10) NOT NULL DEFAULT '',
  `color` char(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `aunet_attr`
--

INSERT INTO `aunet_attr` (`id`, `name`, `color`) VALUES
(2, '精华', 'green'),
(4, '最新', 'red');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_buildingclassroom`
--

CREATE TABLE IF NOT EXISTS `aunet_buildingclassroom` (
  `AssociationName` varchar(256) NOT NULL,
  `ActivityName` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `Place` varchar(256) NOT NULL,
  `ParticipantNumber` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_buildingclassroom2`
--

CREATE TABLE IF NOT EXISTS `aunet_buildingclassroom2` (
  `Faculty` varchar(256) NOT NULL,
  `ClassroomCapacity` varchar(256) NOT NULL,
  `ApplicantName` varchar(256) NOT NULL,
  `ApplicantTypeSelect` varchar(256) NOT NULL,
  `ClassroomTypeSelect` varchar(256) NOT NULL,
  `OfficePhoneNumber` varchar(256) NOT NULL,
  `CellphoneNumber` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `PlaceSelect` varchar(256) NOT NULL,
  `Week` varchar(256) NOT NULL,
  `Day` varchar(256) NOT NULL,
  `LessonSelect` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `Compere` varchar(256) NOT NULL,
  `Unit` varchar(256) NOT NULL,
  `Occupation` varchar(256) NOT NULL,
  `LectureContent` varchar(256) NOT NULL,
  `LectureName` varchar(256) NOT NULL,
  `LectureUnit` varchar(256) NOT NULL,
  `LectureOccupation` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_cate`
--

CREATE TABLE IF NOT EXISTS `aunet_cate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL DEFAULT '',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `aunet_cate`
--

INSERT INTO `aunet_cate` (`id`, `name`, `pid`, `sort`) VALUES
(10, '社联', 0, 100),
(13, '社团', 0, 100),
(18, '法语', 13, 100);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_colorprinting`
--

CREATE TABLE IF NOT EXISTS `aunet_colorprinting` (
  `AssociationName` varchar(256) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `ActivityDate` varchar(256) NOT NULL,
  `UseTime` varchar(256) NOT NULL,
  `UsePlace` varchar(256) NOT NULL,
  `Commercial` varchar(256) NOT NULL,
  `Remarks` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_design`
--

CREATE TABLE IF NOT EXISTS `aunet_design` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(15) NOT NULL DEFAULT '',
  `content` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(15) DEFAULT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `aunet_design`
--

INSERT INTO `aunet_design` (`id`, `time`, `content`, `phone`, `done`) VALUES
(7, '2015.3.1', '测试', '13018060139', 0),
(6, '2015.2.1', '测试', '13018060139', 0),
(9, '2015.1.2', '测试', '13018060139', 0),
(10, '2015.1.1', '测试', '13018060139', 0);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_doc`
--

CREATE TABLE IF NOT EXISTS `aunet_doc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` char(50) NOT NULL DEFAULT '',
  `remark` varchar(32) NOT NULL DEFAULT '',
  `user` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `aunet_doc`
--

INSERT INTO `aunet_doc` (`id`, `filename`, `remark`, `user`, `time`) VALUES
(30, './Upload/UploadsDoc/test/54e07c4258005.docx', '社团网总体需求.docx', 'test', 1423998018),
(29, './Upload/UploadsDoc/admin/54e05d1a08a86.docx', '社团网总体需求.docx', 'admin', 1423990042),
(28, './Upload/UploadsDoc/admin/54e05d1a0869d.docx', '社团网.docx', 'admin', 1423990042),
(27, './Upload/UploadsDoc/admin/54e05d1a07ecd.docx', '[社团部]社团网场地物资借用及相关功能与要求.docx', 'admin', 1423990042),
(26, './Upload/UploadsDoc/admin/54e05b90b5a1f.docx', '社团网.docx', 'admin', 1423989648),
(31, './Upload/UploadsDoc/admin/54e093cf597e7.docx', '社团网总体需求.docx', 'admin', 1424004047);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_eastthird`
--

CREATE TABLE IF NOT EXISTS `aunet_eastthird` (
  `AssociationName` varchar(256) NOT NULL,
  `ActivityName` varchar(256) NOT NULL,
  `ParticipantNumber` varchar(256) NOT NULL,
  `Date` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `Sponsor` varchar(256) NOT NULL,
  `SponsorWay` varchar(256) NOT NULL,
  `ResponsiblePeople` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `AssociationOpinion` varchar(256) NOT NULL,
  `AUOpnion` varchar(256) NOT NULL,
  `AUer` varchar(256) NOT NULL,
  `AUPhone` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_event`
--

CREATE TABLE IF NOT EXISTS `aunet_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` char(255) NOT NULL,
  `pic` text NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `year` varchar(4) NOT NULL DEFAULT ' ',
  `month` varchar(4) NOT NULL DEFAULT '',
  `day` varchar(2) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `aunet_event`
--

INSERT INTO `aunet_event` (`id`, `content`, `pic`, `time`, `year`, `month`, `day`) VALUES
(4, 'ddd', '/Upload/Event/1989/12/16/554a3c7366019.jpg', 1430928499, '1989', '12', '16');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_news`
--

CREATE TABLE IF NOT EXISTS `aunet_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL DEFAULT '',
  `content` text,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pic` text NOT NULL,
  `src` text NOT NULL,
  `text` text,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- 转存表中的数据 `aunet_news`
--

INSERT INTO `aunet_news` (`id`, `title`, `content`, `time`, `cid`, `del`, `pic`, `src`, `text`) VALUES
(67, '111', '<p>11111<br/></p>', 1430066145, 10, 0, ' ', '', '11111'),
(66, 'asdf', '<p>asdfasdf<img src="/AUNET./Upload/news/image/1/20150425/553b4cfb36ae5.png" title="553b4cfb36ae5.png" alt="下载.png"/>asdf11111</p>', 1429949702, 10, 0, '/AUNET./Upload/news/image/1/20150425/553b4cfb36ae5.png', ' /AUNET./Upload/news/image/1/20150425/553b4cfb36ae5.png', 'asdfasdfasdf11111');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_news_attr`
--

CREATE TABLE IF NOT EXISTS `aunet_news_attr` (
  `nid` int(10) unsigned NOT NULL,
  `aid` int(10) unsigned NOT NULL,
  KEY `nid` (`nid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aunet_news_attr`
--

INSERT INTO `aunet_news_attr` (`nid`, `aid`) VALUES
(2, 1),
(3, 1),
(3, 2),
(5, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(8, 4),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(17, 4),
(21, 4),
(22, 2),
(29, 4),
(28, 2),
(30, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(39, 2),
(40, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 4),
(47, 2),
(47, 4),
(48, 2),
(49, 2),
(50, 4),
(51, 4),
(52, 2),
(53, 2),
(55, 2),
(56, 2),
(57, 4),
(58, 2),
(60, 2),
(61, 2),
(62, 2),
(65, 2),
(66, 2),
(67, 2);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_node`
--

CREATE TABLE IF NOT EXISTS `aunet_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- 转存表中的数据 `aunet_node`
--

INSERT INTO `aunet_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`) VALUES
(33, 'Admin', '后台', 1, NULL, 1, 0, 1),
(34, 'News', '新闻管理', 1, NULL, 1, 33, 2),
(35, 'Home', '前台', 1, NULL, 1, 0, 1),
(36, 'news_index', '文章列表', 1, NULL, 1, 34, 3),
(37, 'addNews', '添加新闻', 1, NULL, 1, 34, 3),
(38, 'trash', '回收站', 1, NULL, 1, 34, 3),
(39, 'Upload', '资料上传', 1, NULL, 1, 33, 2),
(40, 'upload_index', '上传附件', 1, NULL, 1, 39, 3),
(41, 'doc_list', '资料列表', 1, NULL, 1, 39, 3),
(46, 'attr_index', '属性列表', 1, NULL, 1, 45, 3),
(45, 'NewsAttribute', '属性管理', 1, NULL, 1, 33, 2),
(47, 'addAttr', '添加属性', 1, NULL, 1, 45, 3),
(48, 'Category', '分类管理', 1, NULL, 1, 33, 2),
(49, 'cate_index', '分类列表', 1, NULL, 1, 48, 3),
(50, 'addCate', '添加分类', 1, NULL, 1, 48, 3),
(51, 'Rbac', '权限管理', 1, NULL, 1, 33, 2),
(52, 'role', '角色列表', 1, NULL, 1, 51, 3),
(53, 'node', '节点列表', 1, NULL, 1, 51, 3),
(54, 'user', '用户列表', 1, NULL, 1, 51, 3),
(66, 'access', '配置权限', 1, NULL, 1, 51, 3),
(65, 'addNode', '添加节点', 1, NULL, 1, 51, 3),
(64, 'addUser', '添加用户', 1, NULL, 1, 51, 3),
(58, 'editCate', '编辑分类', 1, NULL, 1, 48, 3),
(59, 'deleteCate', '删除分类及其子分类', 1, NULL, 1, 48, 3),
(60, 'editAttr', '编辑属性', 1, NULL, 1, 45, 3),
(61, 'deleteAttr', '删除属性', 1, NULL, 1, 45, 3),
(62, 'Forecast', '社联大事记', 1, NULL, 1, 33, 2),
(63, 'delete', '删除新闻', 1, NULL, 1, 34, 3),
(67, 'addRole', '添加角色', 1, NULL, 1, 51, 3),
(68, 'delForecast', '删除预告', 1, NULL, 1, 62, 3),
(69, 'editForecast', '修改预告', 1, NULL, 1, 62, 3),
(70, 'addForecast', '添加预告', 1, NULL, 1, 62, 3),
(71, 'lock', '锁定用户', 1, NULL, 1, 51, 3),
(72, 'clearCache', '清除缓存', 1, NULL, 1, 34, 3),
(103, 'Material', '物资系统', 1, NULL, 1, 91, 2),
(104, 'material_index', '物资系统界面', 1, NULL, 1, 103, 3),
(94, 'Design', '设计委任', 1, NULL, 1, 0, 1),
(105, 'Grade', '评分系统', 1, NULL, 1, 97, 2),
(106, 'grade_index', '评分系统界面', 1, NULL, 1, 105, 3),
(107, 'Userdel', '删除用户', 1, NULL, 8, 51, 3),
(91, 'Material', '物资系统', 1, NULL, 1, 0, 1),
(97, 'Grade', '评分系统', 1, NULL, 1, 0, 1),
(101, 'design_index', '设计委任界面', 1, NULL, 1, 100, 3),
(100, 'Design', '设计委任', 1, NULL, 1, 94, 2);

-- --------------------------------------------------------

--
-- 表的结构 `aunet_otherplace`
--

CREATE TABLE IF NOT EXISTS `aunet_otherplace` (
  `AssociationName` varchar(256) NOT NULL,
  `Path` varchar(256) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_otherstuff`
--

CREATE TABLE IF NOT EXISTS `aunet_otherstuff` (
  `AssociationName` varchar(256) NOT NULL,
  `Path` varchar(256) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_roadshow`
--

CREATE TABLE IF NOT EXISTS `aunet_roadshow` (
  `AssociationName` varchar(256) NOT NULL,
  `ActivityName` varchar(256) NOT NULL,
  `ParticipantNumber` varchar(256) NOT NULL,
  `Date` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `NomalClassrom` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `Sponsor` varchar(256) NOT NULL,
  `SponsorWay` varchar(256) NOT NULL,
  `ResponsiblePeople` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `AssociationOpinion` varchar(256) NOT NULL,
  `AUOpnion` varchar(256) NOT NULL,
  `AUer` varchar(256) NOT NULL,
  `AUPhone` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_role`
--

CREATE TABLE IF NOT EXISTS `aunet_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `aunet_role`
--

INSERT INTO `aunet_role` (`id`, `name`, `pid`, `status`, `remark`) VALUES
(4, 'Editor', NULL, 1, '编辑'),
(5, 'Home', NULL, 1, '前台');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_role_user`
--

CREATE TABLE IF NOT EXISTS `aunet_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `aunet_role_user`
--

INSERT INTO `aunet_role_user` (`role_id`, `user_id`) VALUES
(4, '5'),
(4, '6'),
(5, '6'),
(4, '7');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_specialplace`
--

CREATE TABLE IF NOT EXISTS `aunet_specialplace` (
  `AssociationName` varchar(256) NOT NULL,
  `ActivityName` varchar(256) NOT NULL,
  `ParticipantNumber` varchar(256) NOT NULL,
  `Date` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `NomalClassrom` varchar(256) NOT NULL,
  `SystemInquire` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `Sponsor` varchar(256) NOT NULL,
  `SponsorWay` varchar(256) NOT NULL,
  `ResponsiblePeople` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `AssociationOpinion` varchar(256) NOT NULL,
  `AUOpnion` varchar(256) NOT NULL,
  `AUer` varchar(256) NOT NULL,
  `AUPhone` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_sportcourt`
--

CREATE TABLE IF NOT EXISTS `aunet_sportcourt` (
  `AssociationName` varchar(256) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `StudentNumber` varchar(256) NOT NULL,
  `School` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `ActivityDate` varchar(256) NOT NULL,
  `UseTime` varchar(256) NOT NULL,
  `Remarks` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_studentcenter`
--

CREATE TABLE IF NOT EXISTS `aunet_studentcenter` (
  `AssociationName` varchar(256) NOT NULL,
  `ActivityName` varchar(256) NOT NULL,
  `ParticipantNumber` varchar(256) NOT NULL,
  `Date` varchar(256) NOT NULL,
  `Time` varchar(256) NOT NULL,
  `NomalClassrom` varchar(256) NOT NULL,
  `SystemInquire` varchar(256) NOT NULL,
  `LectureClassrom` varchar(256) NOT NULL,
  `ActivityContent` varchar(256) NOT NULL,
  `Sponsor` varchar(256) NOT NULL,
  `SponsorWay` varchar(256) NOT NULL,
  `ResponsiblePeople` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `AssociationOpinion` varchar(256) NOT NULL,
  `AUOpnion` varchar(256) NOT NULL,
  `AUer` varchar(256) NOT NULL,
  `AUPhone` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `aunet_stuff`
--

CREATE TABLE IF NOT EXISTS `aunet_stuff` (
  `AssociationName` varchar(256) NOT NULL,
  `ActivityName` varchar(256) NOT NULL,
  `Place` varchar(256) NOT NULL,
  `UseDate` varchar(256) NOT NULL,
  `ParticipantNumber` varchar(256) NOT NULL,
  `ProjectorNumber` varchar(256) NOT NULL,
  `ProjectorDate` varchar(256) NOT NULL,
  `Electricity` varchar(256) NOT NULL,
  `DeskNumber` varchar(256) NOT NULL,
  `ChairNumber` varchar(256) NOT NULL,
  `ReturnDate` varchar(256) NOT NULL,
  `SchoolbusDesk` varchar(256) NOT NULL,
  `SchoolbusChair` varchar(256) NOT NULL,
  `ResponsiblePeople` varchar(256) NOT NULL,
  `Phone` varchar(256) NOT NULL,
  `AssociationOpinion` varchar(256) NOT NULL,
  `AUOpinion` varchar(256) NOT NULL,
  `AUResponsiblePeople` varchar(256) NOT NULL,
  `AUPhone` varchar(256) NOT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `Username` varchar(64) NOT NULL,
  `ReviewState` int(4) NOT NULL,
  `ReviewAdvice` varchar(256) NOT NULL,
  `CreateTime` char(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `aunet_stuff`
--

INSERT INTO `aunet_stuff` (`AssociationName`, `ActivityName`, `Place`, `UseDate`, `ParticipantNumber`, `ProjectorNumber`, `ProjectorDate`, `Electricity`, `DeskNumber`, `ChairNumber`, `ReturnDate`, `SchoolbusDesk`, `SchoolbusChair`, `ResponsiblePeople`, `Phone`, `AssociationOpinion`, `AUOpinion`, `AUResponsiblePeople`, `AUPhone`, `id`, `Username`, `ReviewState`, `ReviewAdvice`, `CreateTime`) VALUES
('test', 'test', 'test', 'test', '10', '15', '11111', '', '', '', '', '', '', 'ted', '13018160135', 'fdaf', 'fdaf', 'adsf', '13018060139', 1, 'admin', 0, '', '2015年9月24日 19:10:04');

-- --------------------------------------------------------

--
-- 表的结构 `aunet_user`
--

CREATE TABLE IF NOT EXISTS `aunet_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL,
  `loginip` varchar(30) NOT NULL,
  `lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `aunet_user`
--

INSERT INTO `aunet_user` (`id`, `username`, `password`, `logintime`, `loginip`, `lock`, `remark`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1443092685, '127.0.0.1', 0, NULL),
(7, 'test', '098f6bcd4621d373cade4e832627b4f6', 1434380153, '127.0.0.1', 0, NULL);
--
-- 数据库: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- 表的结构 `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- 数据库: `data`
--
CREATE DATABASE IF NOT EXISTS `data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data`;
--
-- 数据库: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"aunet","table":"aunet_design"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"pma_pdf_pages"},{"db":"phpmyadmin","table":"pma_recent"},{"db":"phpmyadmin","table":"pma_relation"},{"db":"cdcol","table":"cds"},{"db":"mysql","table":"user"},{"db":"mysql","table":"help_relation"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 表的结构 `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-08-21 08:18:27', '{"lang":"zh_CN"}');
--
-- 数据库: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- 存储过程
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;
--
-- 数据库: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- 表的结构 `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- 转存表中的数据 `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
