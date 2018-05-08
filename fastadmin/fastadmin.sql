/*
Navicat MySQL Data Transfer

Source Server         : 101.200.91.203
Source Server Version : 50169
Source Host           : 101.200.91.203:3306
Source Database       : fastadmin

Target Server Type    : MYSQL
Target Server Version : 50169
File Encoding         : 65001

Date: 2018-05-08 22:54:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES ('1', 'admin', 'Admin', '41999e6df8c0af0de5dfb54d9353b6d3', 'b61559', '/uploads/20180508/9dbbbf884bd292036142f1a218a3aae6.jpg', 'admin@admin.com', '0', '1525789775', '1492186163', '1525789775', 'd911e326-c039-4c7f-9db2-3f8d2f9008bf', 'normal');
INSERT INTO `fa_admin` VALUES ('2', 'admin2', 'admin2', '9a28ce07ce875fbd14172a9ca5357d3c', '2dHDmj', '/assets/img/avatar.png', 'admin2@fastadmin.net', '0', '1525789724', '1492186163', '1525789755', '', 'normal');
INSERT INTO `fa_admin` VALUES ('3', 'admin3', 'admin3', '1c11f945dfcd808a130a8c2a8753fe62', 'WOKJEn', '/assets/img/avatar.png', 'admin3@fastadmin.net', '0', '1501980868', '1492186201', '1501982377', '', 'normal');
INSERT INTO `fa_admin` VALUES ('4', 'admin22', 'admin22', '1c1a0aa0c3c56a8c1a908aab94519648', 'Aybcn5', '/assets/img/avatar.png', 'admin22@fastadmin.net', '0', '0', '1492186240', '1492186240', '', 'normal');
INSERT INTO `fa_admin` VALUES ('5', 'admin32', 'admin32', 'ade94d5d7a7033afa7d84ac3066d0a02', 'FvYK0u', '/assets/img/avatar.png', 'admin32@fastadmin.net', '0', '0', '1492186263', '1492186263', '', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志表';

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES ('1', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525522203');
INSERT INTO `fa_admin_log` VALUES ('2', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525522219');
INSERT INTO `fa_admin_log` VALUES ('3', '1', 'admin', '/1.0.0.20180417_full/public/admin/ajax/upload', '', '{\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20180505123054.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525522361');
INSERT INTO `fa_admin_log` VALUES ('4', '1', 'admin', '/1.0.0.20180417_full/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20180505\\/9dbbbf884bd292036142f1a218a3aae6.jpg\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525522363');
INSERT INTO `fa_admin_log` VALUES ('5', '1', 'admin', '/1.0.0.20180417_full/public/admin/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"name\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{\\\"backend\\\":\\\"zh-cn\\\",\\\"frontend\\\":\\\"zh-cn\\\"}\",\"fixedpage\":\"dashboard\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525522397');
INSERT INTO `fa_admin_log` VALUES ('6', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/add?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"sales\",\"title\":\"\\u9500\\u552e\\u7ba1\\u7406\",\"icon\":\"fa fa-male\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525523917');
INSERT INTO `fa_admin_log` VALUES ('7', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525523919');
INSERT INTO `fa_admin_log` VALUES ('8', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/add?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"sales\\/index\",\"title\":\"\\u9500\\u552e\\u5217\\u8868\",\"icon\":\"fa fa-address-book\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525524741');
INSERT INTO `fa_admin_log` VALUES ('9', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525524742');
INSERT INTO `fa_admin_log` VALUES ('10', '0', 'Unknown', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"4ebb5704c7b82382d484ad0ac801d4b1\",\"username\":\"root\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525585296');
INSERT INTO `fa_admin_log` VALUES ('11', '0', 'Unknown', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"866b7aa6b7d2228cb46ceb2698239b1d\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525585308');
INSERT INTO `fa_admin_log` VALUES ('12', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"a658038fa09572d9fb341783b3b9171d\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525585314');
INSERT INTO `fa_admin_log` VALUES ('13', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"5d8a052bee6a66d3735f400b452068a7\",\"username\":\"admin\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525587219');
INSERT INTO `fa_admin_log` VALUES ('14', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/del/ids/86', '权限管理 规则管理 删除', '{\"action\":\"del\",\"ids\":\"86\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525611950');
INSERT INTO `fa_admin_log` VALUES ('15', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525611951');
INSERT INTO `fa_admin_log` VALUES ('16', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/del/ids/85', '权限管理 规则管理 删除', '{\"action\":\"del\",\"ids\":\"85\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525611958');
INSERT INTO `fa_admin_log` VALUES ('17', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525611959');
INSERT INTO `fa_admin_log` VALUES ('18', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/add?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"sales\",\"title\":\"\\u9500\\u552e\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"200\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525612310');
INSERT INTO `fa_admin_log` VALUES ('19', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525612311');
INSERT INTO `fa_admin_log` VALUES ('20', '1', 'admin', '/1.0.0.20180417_full/public/admin/sales/edit/ids/13?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"sales_name\":\"\\u674e\\u4e45\\u751f\"},\"ids\":\"13\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525612374');
INSERT INTO `fa_admin_log` VALUES ('21', '0', 'Unknown', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"fda18e0303da4aa126827cb23a368e47\",\"username\":\"liuchao\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525619929');
INSERT INTO `fa_admin_log` VALUES ('22', '0', 'Unknown', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"d6993c830a21ba438af36b0a1fb196a4\",\"username\":\"admin\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525619942');
INSERT INTO `fa_admin_log` VALUES ('23', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"828156b9a636d84f111597017285ee75\",\"username\":\"admin\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525619951');
INSERT INTO `fa_admin_log` VALUES ('24', '1', 'admin', '/1.0.0.20180417_full/public/admin/ajax/upload', '', '{\"name\":\"5550B6BA-DD59-4F2C-A411-39AD7186D06F.jpeg\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525620078');
INSERT INTO `fa_admin_log` VALUES ('25', '1', 'admin', '/1.0.0.20180417_full/public/admin/ajax/upload', '', '{\"name\":\"0D8CD263-CDDA-4473-A21F-9675B4E46A56.jpeg\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525620086');
INSERT INTO `fa_admin_log` VALUES ('26', '1', 'admin', '/1.0.0.20180417_full/public/admin/ajax/upload', '', '{\"name\":\"2E96695F-B75C-4757-92FB-8F267893263A.jpeg\"}', '192.168.1.2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E216 MicroMessenger/6.6.6 NetType/WIFI Language/zh_CN', '1525620101');
INSERT INTO `fa_admin_log` VALUES ('27', '1', 'admin', '/1.0.0.20180417_full/public/admin/source/cpid/edit/ids/85?dialog=1', 'source 合作渠道 编辑', '{\"dialog\":\"1\",\"row\":{\"cpid\":\"10038\",\"name\":\"\\u8463\\u632f\\u56fd\",\"key\":\"sasasasaas\",\"note\":\"\",\"ip\":\"\"},\"ids\":\"85\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525620997');
INSERT INTO `fa_admin_log` VALUES ('28', '1', 'admin', '/1.0.0.20180417_full/public/admin/source/cpid/edit/ids/85?dialog=1', 'source 合作渠道 编辑', '{\"dialog\":\"1\",\"row\":{\"cpid\":\"10038\",\"name\":\"\\u8463\\u632f\\u56fd\",\"key\":\"dfdf33g5jr4r57k90\",\"note\":\"\",\"ip\":\"\"},\"ids\":\"85\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525621053');
INSERT INTO `fa_admin_log` VALUES ('29', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/edit/ids/88?dialog=1', '权限管理 规则管理 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"source\",\"title\":\"\\u6e20\\u9053\\u7ba1\\u7406\",\"icon\":\"fa fa-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"88\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525621141');
INSERT INTO `fa_admin_log` VALUES ('30', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525621143');
INSERT INTO `fa_admin_log` VALUES ('31', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525621270');
INSERT INTO `fa_admin_log` VALUES ('32', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"1,2,4,6,7,8,9,10,11,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,87,90,5,89,88\",\"pid\":\"1\",\"name\":\"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec4\",\"status\":\"normal\"},\"ids\":\"2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525621323');
INSERT INTO `fa_admin_log` VALUES ('33', '2', 'admin2', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"02b5e47728fb2c4457b0addeef372776\",\"username\":\"admin2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525621350');
INSERT INTO `fa_admin_log` VALUES ('34', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login?url=%2F1.0.0.20180417_full%2Fpublic%2Fadmin%2Fsales%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/1.0.0.20180417_full\\/public\\/admin\\/sales?ref=addtabs\",\"__token__\":\"ea5d53dd37f7883a188dc239f49fcf2d\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624072');
INSERT INTO `fa_admin_log` VALUES ('35', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/add?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"87\",\"name\":\"sales\\/index\",\"title\":\"\\u9500\\u552e\\u5217\\u8868\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624138');
INSERT INTO `fa_admin_log` VALUES ('36', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624139');
INSERT INTO `fa_admin_log` VALUES ('37', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624174');
INSERT INTO `fa_admin_log` VALUES ('38', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"8,29,30,31,32,33,34,90,2,89,88\",\"pid\":\"1\",\"name\":\"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec4\",\"status\":\"normal\"},\"ids\":\"2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624224');
INSERT INTO `fa_admin_log` VALUES ('39', '2', 'admin2', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"b90e1c72495bee0115b46dccca038e76\",\"username\":\"admin2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624243');
INSERT INTO `fa_admin_log` VALUES ('40', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"c0a8e6046d342ba02ce2db39304ddf65\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624289');
INSERT INTO `fa_admin_log` VALUES ('41', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624320');
INSERT INTO `fa_admin_log` VALUES ('42', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"8,29,30,31,32,33,34,87,88,89,90,91,92,93,94,95,2\",\"pid\":\"1\",\"name\":\"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec4\",\"status\":\"normal\"},\"ids\":\"2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624383');
INSERT INTO `fa_admin_log` VALUES ('43', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"9a66e05dbd3f8aadcc7b66dedcaddc16\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624410');
INSERT INTO `fa_admin_log` VALUES ('44', '2', 'admin2', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"d2e905dfeae73d950607ec5ab927c001\",\"username\":\"admin2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624425');
INSERT INTO `fa_admin_log` VALUES ('45', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"2542cb86deea0ec0cf8a6380d2251703\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624528');
INSERT INTO `fa_admin_log` VALUES ('46', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624541');
INSERT INTO `fa_admin_log` VALUES ('47', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/del/ids/95', '权限管理 规则管理 删除', '{\"action\":\"del\",\"ids\":\"95\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624569');
INSERT INTO `fa_admin_log` VALUES ('48', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624572');
INSERT INTO `fa_admin_log` VALUES ('49', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/del/ids/87', '权限管理 规则管理 删除', '{\"action\":\"del\",\"ids\":\"87\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624578');
INSERT INTO `fa_admin_log` VALUES ('50', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624581');
INSERT INTO `fa_admin_log` VALUES ('51', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624735');
INSERT INTO `fa_admin_log` VALUES ('52', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"8,29,30,31,32,33,34,88,89,90,91,92,93,94,96,97,98,99,100,101,2\",\"pid\":\"1\",\"name\":\"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec4\",\"status\":\"normal\"},\"ids\":\"2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624752');
INSERT INTO `fa_admin_log` VALUES ('53', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/rule/edit/ids/96?dialog=1', '权限管理 规则管理 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"sales\",\"title\":\"\\u9500\\u552e\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"96\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624790');
INSERT INTO `fa_admin_log` VALUES ('54', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624793');
INSERT INTO `fa_admin_log` VALUES ('55', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"430e354f3d9cf13e99af8b86a3d4c67a\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624828');
INSERT INTO `fa_admin_log` VALUES ('56', '2', 'admin2', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"8197d11453a6ca0a562b2d3d4c40f317\",\"username\":\"admin2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525624874');
INSERT INTO `fa_admin_log` VALUES ('57', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"d6d1496a5db055a3296be44396f74d87\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525660020');
INSERT INTO `fa_admin_log` VALUES ('58', '1', 'admin', '/1.0.0.20180417_full/public/admin/ajax/upload', '', '{\"name\":\"u=2446433071,1459367241&amp;fm=27&amp;gp=0.jpg\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525660169');
INSERT INTO `fa_admin_log` VALUES ('59', '1', 'admin', '/1.0.0.20180417_full/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20180507\\/6611928b59c337cb23111b32cd679ec1.jpg\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525660171');
INSERT INTO `fa_admin_log` VALUES ('60', '1', 'admin', '/FastAdmin/public/admin/auth/rule/edit/ids/102?dialog=1', '权限管理 规则管理 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"sales\",\"title\":\"\\u9500\\u552e\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"102\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525661148');
INSERT INTO `fa_admin_log` VALUES ('61', '1', 'admin', '/FastAdmin/public/admin/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525661149');
INSERT INTO `fa_admin_log` VALUES ('62', '1', 'admin', '/FastAdmin/public/admin/auth/rule/add?dialog=1', '权限管理 规则管理 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"102\",\"name\":\"sales\\/index\",\"title\":\"\\u9500\\u552e\\u5217\\u8868\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525661198');
INSERT INTO `fa_admin_log` VALUES ('63', '1', 'admin', '/FastAdmin/public/admin/index/login?url=%2FFastAdmin%2Fpublic%2Fadmin%2Findex%2Flogout', '登录', '{\"url\":\"\\/FastAdmin\\/public\\/admin\\/index\\/logout\",\"__token__\":\"3a5e1e18af6af024ded91e1ed449a1f3\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525661304');
INSERT INTO `fa_admin_log` VALUES ('64', '0', 'Unknown', '/FastAdmin/public/admin/index/login', '登录', '{\"__token__\":\"08fa0a1eb199f2968020fb3e67ccf36e\",\"username\":\"root\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525661309');
INSERT INTO `fa_admin_log` VALUES ('65', '1', 'admin', '/FastAdmin/public/admin/index/login', '登录', '{\"__token__\":\"740fafb077f3efe277546fd7264d0470\",\"username\":\"admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525661317');
INSERT INTO `fa_admin_log` VALUES ('66', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login.html', '登录', '{\"__token__\":\"20d007c688bdb0b44b42ffc477a05f89\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789417');
INSERT INTO `fa_admin_log` VALUES ('67', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789477');
INSERT INTO `fa_admin_log` VALUES ('68', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789493');
INSERT INTO `fa_admin_log` VALUES ('69', '1', 'admin', '/1.0.0.20180417_full/public/admin/ajax/upload', '', '{\"name\":\"\\u5fae\\u4fe1\\u56fe\\u7247_20180505123054.jpg\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789676');
INSERT INTO `fa_admin_log` VALUES ('70', '1', 'admin', '/1.0.0.20180417_full/public/admin/general.profile/update', '常规管理 个人配置 更新个人信息', '{\"row\":{\"avatar\":\"\\/uploads\\/20180508\\/9dbbbf884bd292036142f1a218a3aae6.jpg\",\"email\":\"admin@admin.com\",\"nickname\":\"Admin\",\"password\":\"\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789678');
INSERT INTO `fa_admin_log` VALUES ('71', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789694');
INSERT INTO `fa_admin_log` VALUES ('72', '1', 'admin', '/1.0.0.20180417_full/public/admin/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{\"dialog\":\"1\",\"row\":{\"rules\":\"8,29,30,31,32,33,34,114,115,116,117,118,119,2\",\"pid\":\"1\",\"name\":\"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec4\",\"status\":\"normal\"},\"ids\":\"2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789710');
INSERT INTO `fa_admin_log` VALUES ('73', '2', 'admin2', '/1.0.0.20180417_full/public/admin/index/login', '登录', '{\"__token__\":\"a9e23f21b261acf61491a318c95227ef\",\"username\":\"admin2\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789724');
INSERT INTO `fa_admin_log` VALUES ('74', '1', 'admin', '/1.0.0.20180417_full/public/admin/index/login?url=%2F1.0.0.20180417_full%2Fpublic%2Fadmin%2Fgeneral%2Fprofile%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/1.0.0.20180417_full\\/public\\/admin\\/general\\/profile?ref=addtabs\",\"__token__\":\"4ce6dd8fe8b58cb234b0e5cb29ec2700\",\"username\":\"admin\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:59.0) Gecko/20100101 Firefox/59.0', '1525789775');

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='附件表';

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES ('1', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES ('2', '/uploads/20180505/9dbbbf884bd292036142f1a218a3aae6.jpg', '1080', '1920', 'jpg', '0', '226169', 'image/jpeg', '', '1525522361', '1525522361', '1525522361', 'local', '785bb07e12557a49cb0a329320642d3ff6ace71f');
INSERT INTO `fa_attachment` VALUES ('3', '/uploads/20180507/6611928b59c337cb23111b32cd679ec1.jpg', '534', '300', 'jpg', '0', '21289', 'image/jpeg', '', '1525660169', '1525660169', '1525660169', 'local', '8ae3bbb57692d76fba2e187f6054b2257efea2d4');
INSERT INTO `fa_attachment` VALUES ('4', '/uploads/20180508/9dbbbf884bd292036142f1a218a3aae6.jpg', '1080', '1920', 'jpg', '0', '226169', 'image/jpeg', '', '1525789676', '1525789676', '1525789676', 'local', '785bb07e12557a49cb0a329320642d3ff6ace71f');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分组表';

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `fa_auth_group` VALUES ('2', '1', '二级管理组', '8,29,30,31,32,33,34,114,115,116,117,118,119,2', '1490883540', '1525789710', 'normal');
INSERT INTO `fa_auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `fa_auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `fa_auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES ('1', '1');
INSERT INTO `fa_auth_group_access` VALUES ('2', '2');
INSERT INTO `fa_auth_group_access` VALUES ('3', '3');
INSERT INTO `fa_auth_group_access` VALUES ('4', '5');
INSERT INTO `fa_auth_group_access` VALUES ('5', '5');

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES ('1', 'file', '0', 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', '1', '1497429920', '1497429920', '143', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-list', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('4', 'file', '0', 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', '1', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('13', 'file', '1', 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '136', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('14', 'file', '1', 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '135', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('15', 'file', '1', 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '133', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('16', 'file', '1', 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '134', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('17', 'file', '1', 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '132', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('55', 'file', '4', 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('56', 'file', '4', 'addon/add', 'Add', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('57', 'file', '4', 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('58', 'file', '4', 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('59', 'file', '4', 'addon/local', 'Local install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('60', 'file', '4', 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('61', 'file', '4', 'addon/install', 'Install', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('62', 'file', '4', 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('63', 'file', '4', 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('64', 'file', '4', 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('65', 'file', '4', 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1502035509', '1502035509', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('66', 'file', '0', 'user', 'User', 'fa fa-list', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('67', 'file', '66', 'user/user', 'User', 'fa fa-user', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('68', 'file', '67', 'user/user/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('69', 'file', '67', 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('70', 'file', '67', 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('71', 'file', '67', 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('72', 'file', '67', 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('73', 'file', '66', 'user/group', 'User group', 'fa fa-users', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('74', 'file', '73', 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('75', 'file', '73', 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('76', 'file', '73', 'user/group/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('77', 'file', '73', 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('78', 'file', '73', 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('79', 'file', '66', 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '1', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('80', 'file', '79', 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('81', 'file', '79', 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('82', 'file', '79', 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('83', 'file', '79', 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('84', 'file', '79', 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1516374729', '1516374729', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('114', 'file', '0', 'sales', '销售管理', 'fa fa-circle-o', '', '', '1', '1525663029', '1525663029', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('115', 'file', '114', 'sales/index', '查看', 'fa fa-circle-o', '', '', '0', '1525663029', '1525663029', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('116', 'file', '114', 'sales/add', '添加', 'fa fa-circle-o', '', '', '0', '1525663029', '1525663029', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('117', 'file', '114', 'sales/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1525663029', '1525663029', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('118', 'file', '114', 'sales/del', '删除', 'fa fa-circle-o', '', '', '0', '1525663029', '1525663029', '0', 'normal');
INSERT INTO `fa_auth_rule` VALUES ('119', 'file', '114', 'sales/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1525663029', '1525663029', '0', 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表';

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `fa_category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `fa_category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `fa_category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `fa_category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `fa_category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `fa_category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `fa_category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `fa_category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `fa_category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `fa_category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `fa_category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `fa_category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '后台管理', '', 'required', '');
INSERT INTO `fa_config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(20) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- ----------------------------
-- Records of fa_ems
-- ----------------------------

-- ----------------------------
-- Table structure for fa_sales
-- ----------------------------
DROP TABLE IF EXISTS `fa_sales`;
CREATE TABLE `fa_sales` (
  `sales_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '销售id',
  `sales_name` varchar(50) DEFAULT NULL COMMENT '销售名字',
  `createtime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fa_sales
-- ----------------------------
INSERT INTO `fa_sales` VALUES ('2', '周盼盼', '1524900308');
INSERT INTO `fa_sales` VALUES ('4', '刘文森', '1524900824');
INSERT INTO `fa_sales` VALUES ('5', '李振宇', '1524900836');
INSERT INTO `fa_sales` VALUES ('6', '孙灵', '1524900846');
INSERT INTO `fa_sales` VALUES ('7', '袁艳萍', '1524900876');
INSERT INTO `fa_sales` VALUES ('8', '逯宽', '1524900900');
INSERT INTO `fa_sales` VALUES ('9', '候洪亮', '1524900922');
INSERT INTO `fa_sales` VALUES ('10', '王双', '1524901133');
INSERT INTO `fa_sales` VALUES ('1', '爱盈利', '1524903706');
INSERT INTO `fa_sales` VALUES ('12', '刘洪泽', '1524903728');
INSERT INTO `fa_sales` VALUES ('13', '李久生', '1524965216');

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- ----------------------------
-- Records of fa_sms
-- ----------------------------

-- ----------------------------
-- Table structure for fa_source_cpid
-- ----------------------------
DROP TABLE IF EXISTS `fa_source_cpid`;
CREATE TABLE `fa_source_cpid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpid` int(5) NOT NULL COMMENT 'cpid ',
  `name` varchar(255) NOT NULL COMMENT '渠道名称',
  `key` varchar(255) NOT NULL COMMENT '通信密钥',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `ip` varchar(255) DEFAULT NULL COMMENT 'IP白名单',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpid` (`cpid`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='合作渠道';

-- ----------------------------
-- Records of fa_source_cpid
-- ----------------------------
INSERT INTO `fa_source_cpid` VALUES ('1', '517', '风暴秒赚', '356058973e054935fc94dfdb37714c03', '', '118.190.100.176,118.190.100.204,114.215.45.192,114.215.46.216');
INSERT INTO `fa_source_cpid` VALUES ('2', '512', '云测（天天钱庄）', 'ee755bdd4adb8ac6270ef476fefab245', null, null);
INSERT INTO `fa_source_cpid` VALUES ('3', '217', '闯奇', '', 'reqtype,device,isbreak获取不到', '120.27.224.133,115.29.165.234');
INSERT INTO `fa_source_cpid` VALUES ('5', '909', '懒猫', '', 'device, isbreak 获取不到不做回调', '120.27.134.58,120.27.136.181,120.55.189.43,121.199.6.13,114.55.107.65,47.97.7.145,118.31.247.93');
INSERT INTO `fa_source_cpid` VALUES ('6', '707', '鼠宝', 'e970917296255e1a6cb4cbbee0b84e9e', 'device, isbreak 传的 固定值不做回调', '139.196.139.168,139.196.96.165,139.196.88.150,139.196.96.128');
INSERT INTO `fa_source_cpid` VALUES ('7', '501', '热葫芦', 'e7c2d47e41fb162fb97047de357e0518', '不做回调', null);
INSERT INTO `fa_source_cpid` VALUES ('14', '207', 'imoney', 'ba39cf7b14e502e07ef4da149111ff2d', '', '47.93.173.110,60.205.106.42,39.106.248.76,123.56.204.242');
INSERT INTO `fa_source_cpid` VALUES ('16', '533', '搜猴', '', null, null);
INSERT INTO `fa_source_cpid` VALUES ('17', '212', '今日赚', '', null, null);
INSERT INTO `fa_source_cpid` VALUES ('18', '303', '掌上互动', 'b6bfb188a9abe1a3e7fc408054798e85', null, null);
INSERT INTO `fa_source_cpid` VALUES ('22', '213', '清墨网络（小鱼）', '53a0dfa13892df377856c4852326c641', null, null);
INSERT INTO `fa_source_cpid` VALUES ('24', '465', '铜板墙', '70daf7797f93d8f134f04cea70c3dbcd', null, null);
INSERT INTO `fa_source_cpid` VALUES ('26', '963', '快感锁屏', '', null, '120.79.15.220');
INSERT INTO `fa_source_cpid` VALUES ('31', '1362', '触金', 'e71cad110b03f0ff0a703abf1eca959f', null, null);
INSERT INTO `fa_source_cpid` VALUES ('32', '1356', '熊猫', '98a069a8dde0193af8313549cab790f1', null, null);
INSERT INTO `fa_source_cpid` VALUES ('33', '1456', '应用猎人', '1488f544c3a14fccb24c056fd27a0613', null, '139.129.193.158,139.129.194.79,118.190.91.111');
INSERT INTO `fa_source_cpid` VALUES ('37', '3698', '小鱼', '', null, null);
INSERT INTO `fa_source_cpid` VALUES ('38', '365', '来赚', 'f78d886f8b2e3a1aa719cdfa9e517f12', null, null);
INSERT INTO `fa_source_cpid` VALUES ('40', '936', '钱小卡', '8fa14cdd754f91cc6554c9e71929cce7', null, null);
INSERT INTO `fa_source_cpid` VALUES ('41', '622', '钱咖', '', null, null);
INSERT INTO `fa_source_cpid` VALUES ('50', '333', '肥牛', '13c53dfb929ddd2b7b40ad72e88c7bbf', '', '114.55.67.111,120.27.151.230,114.55.116.87');
INSERT INTO `fa_source_cpid` VALUES ('61', '10016', '应用喵', '', '', '39.108.52.175');
INSERT INTO `fa_source_cpid` VALUES ('52', '145', '应用猿', '8ae0c260a6430f871194ce9dcfd59981', '', '120.76.75.81');
INSERT INTO `fa_source_cpid` VALUES ('53', '456', '赚客', 'a92b5b6eba863aadb88976bda41e0691', '', null);
INSERT INTO `fa_source_cpid` VALUES ('54', '10010', '500赚', '322d49f341dc952335e44f8fcb91b1fd', '', null);
INSERT INTO `fa_source_cpid` VALUES ('55', '10011', '点点时代', '4d3ef46ecd5710c2a31adab4bac15f19', '', null);
INSERT INTO `fa_source_cpid` VALUES ('56', '10012', '蚂蚁小咖', '5cd5f0a61790f95612c211a0cd571e4d', '', null);
INSERT INTO `fa_source_cpid` VALUES ('58', '10013', '七彩糖', '3e1cf03c3c242891f78f031634cd49b1', '', null);
INSERT INTO `fa_source_cpid` VALUES ('59', '10014', '聚点', '842e8f737e3ff4a106739cad0c1d679c', '', '123.56.205.234');
INSERT INTO `fa_source_cpid` VALUES ('60', '10015', '巨宝朋', '50aa1e32b233b20fc6dd63f8fcb345fe', '', null);
INSERT INTO `fa_source_cpid` VALUES ('62', '10017', '狐狸赚', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('63', '10018', 'High赚', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('64', '10019', '青绿', '93df0d2ef025d1523dd5b75422282ade', '', null);
INSERT INTO `fa_source_cpid` VALUES ('65', '10020', '七麦', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('66', '10021', '快乐赚', '8086e6975b91962d514435167b2184c5', '', null);
INSERT INTO `fa_source_cpid` VALUES ('67', '10022', '钱小咖', '53255df4c80e48ac135bbba61949392e', '', null);
INSERT INTO `fa_source_cpid` VALUES ('68', '10023', '金手指', '87ffb766e9d5cc64b2467e2f87a55949', '', null);
INSERT INTO `fa_source_cpid` VALUES ('69', '666', '测试', '', '', '127.0.0.1');
INSERT INTO `fa_source_cpid` VALUES ('70', '10024', '易赚', '2ea5b702ce332499fa2aff833c4af4a4', '', null);
INSERT INTO `fa_source_cpid` VALUES ('71', '10025', '赚钱宝', '806c4b6c25c4c8bd815f3384a583eae3', '', null);
INSERT INTO `fa_source_cpid` VALUES ('72', '10026', '巨掌', 'ce5513a0661e7571a785637afbcc7df7', '', null);
INSERT INTO `fa_source_cpid` VALUES ('73', '10027', '钱大师', '1bc476dc6f97d3747e70d528cd08b0e6', '', null);
INSERT INTO `fa_source_cpid` VALUES ('74', '10028', '聚告', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('75', '10029', '钱脉', '855e4bb9acb5b3c2f4230850b563a155', '', null);
INSERT INTO `fa_source_cpid` VALUES ('76', '10030', '有为互动', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('77', '10031', '应用雷达', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('78', '10032', '友邦', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('79', '10033', '来福', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('80', '10034', '杭州优量', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('81', '10035', '凡卓', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('82', '10093', '顶当', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('83', '10036', '卓泰', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('84', '10037', '印象', '', '', null);
INSERT INTO `fa_source_cpid` VALUES ('85', '10038', '董振国', 'dfdf33g5jr4r57k90', '', '');

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '加入时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/assets/img/avatar.png', '0', '0', '2017-04-15', '', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1516171614', '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='会员规则表';

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `fa_user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `fa_user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `fa_user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `fa_user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `fa_user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `fa_user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `fa_user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `fa_user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `fa_user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `fa_user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `fa_user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分变动表';

-- ----------------------------
-- Records of fa_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员Token表';

-- ----------------------------
-- Records of fa_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES ('1', '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', '1', '1520425318', '0', '0', 'normal');
