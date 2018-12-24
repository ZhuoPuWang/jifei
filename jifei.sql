/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jifei

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-10-30 10:49:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_activ
-- ----------------------------
DROP TABLE IF EXISTS `tp_activ`;
CREATE TABLE `tp_activ` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(5) DEFAULT NULL COMMENT '活动类型1充值优惠2满减活动',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `state` int(5) DEFAULT '0' COMMENT '0关闭1开启',
  `consume` decimal(10,0) DEFAULT '0' COMMENT '消费金额',
  `discount` decimal(10,0) DEFAULT '0' COMMENT '优惠金额金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_activ
-- ----------------------------
INSERT INTO `tp_activ` VALUES ('7', '1', '1', '0', '1', '500', '111');
INSERT INTO `tp_activ` VALUES ('8', '1', '1', '0', '0', '123', '123');
INSERT INTO `tp_activ` VALUES ('9', '1', '1', '0', '1', '750', '1');
INSERT INTO `tp_activ` VALUES ('10', '1', '1', '0', '1', '700', '1');
INSERT INTO `tp_activ` VALUES ('11', '1', '1', '0', '1', '650', '1');

-- ----------------------------
-- Table structure for tp_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------
INSERT INTO `tp_admin_access` VALUES ('3', '125', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '124', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '123', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '122', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '121', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '120', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '119', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '118', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '117', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '116', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '115', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '114', '3', '66');
INSERT INTO `tp_admin_access` VALUES ('3', '66', '2', '1');
INSERT INTO `tp_admin_access` VALUES ('3', '154', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '153', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '113', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '112', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '111', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '110', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '109', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '108', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '107', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '106', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '105', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '104', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '103', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '102', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '101', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '100', '3', '65');
INSERT INTO `tp_admin_access` VALUES ('3', '65', '2', '1');
INSERT INTO `tp_admin_access` VALUES ('3', '152', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '99', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '98', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '97', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '96', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '95', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '94', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '93', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '92', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '91', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '90', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '89', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '88', '3', '64');
INSERT INTO `tp_admin_access` VALUES ('3', '64', '2', '1');
INSERT INTO `tp_admin_access` VALUES ('3', '8', '3', '6');
INSERT INTO `tp_admin_access` VALUES ('3', '7', '3', '6');
INSERT INTO `tp_admin_access` VALUES ('3', '6', '2', '1');
INSERT INTO `tp_admin_access` VALUES ('3', '1', '1', '0');

-- ----------------------------
-- Table structure for tp_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` VALUES ('1', '系统管理', '&#xe61d;', '2', '0', '', '0', '1450752856', '1481180175');
INSERT INTO `tp_admin_group` VALUES ('2', '工具', '&#xe616;', '3', '0', '', '0', '1476016712', '1481180175');
INSERT INTO `tp_admin_group` VALUES ('3', '分店管理', '', '50', '1', '', '0', '1540116374', '1540116374');
INSERT INTO `tp_admin_group` VALUES ('4', '店铺设置', '&amp;#xe61d;', '50', '1', '', '0', '1540191790', '1540191790');
INSERT INTO `tp_admin_group` VALUES ('5', '用户管理', '&amp;#xe62c', '50', '1', '', '0', '1540193182', '1540193182');
INSERT INTO `tp_admin_group` VALUES ('6', '排钟管理', '&amp;#xe611;', '50', '1', '', '0', '1540202279', '1540202279');

-- ----------------------------
-- Table structure for tp_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `isdelete` (`isdelete`),
  KEY `sort` (`sort`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` VALUES ('1', '0', '1', 'Admin', '后台管理', '后台管理，不可更改', '1', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('2', '1', '1', 'AdminGroup', '分组管理', ' ', '2', '1', '1', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('3', '1', '1', 'AdminNode', '节点管理', ' ', '2', '1', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('4', '1', '1', 'AdminRole', '角色管理', ' ', '2', '1', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('5', '1', '3', 'AdminUser', '用户管理', '', '2', '1', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('6', '1', '0', 'Index', '首页', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('7', '6', '0', 'welcome', '欢迎页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('8', '6', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('9', '1', '2', 'Generate', '代码自动生成', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('10', '1', '2', 'Demo/excel', 'Excel一键导出', '', '2', '0', '2', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('11', '1', '2', 'Demo/download', '下载', '', '2', '0', '3', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('12', '1', '2', 'Demo/downloadImage', '远程图片下载', '', '2', '0', '4', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('13', '1', '2', 'Demo/mail', '邮件发送', '', '2', '0', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('14', '1', '2', 'Demo/qiniu', '七牛上传', '', '2', '0', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('15', '1', '2', 'Demo/hashids', 'ID加密', '', '2', '0', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('16', '1', '2', 'Demo/layer', '丰富弹层', '', '2', '0', '8', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('17', '1', '2', 'Demo/tableFixed', '表格溢出', '', '2', '0', '9', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('18', '1', '2', 'Demo/ueditor', '百度编辑器', '', '2', '0', '10', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('19', '1', '2', 'Demo/imageUpload', '图片上传', '', '2', '0', '11', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('20', '1', '2', 'Demo/qrcode', '二维码生成', '', '2', '0', '12', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('21', '1', '1', 'NodeMap', '节点图', '', '2', '1', '5', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('22', '1', '1', 'WebLog', '操作日志', '', '2', '1', '6', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('23', '1', '1', 'LoginLog', '登录日志', '', '2', '1', '7', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('59', '1', '2', 'one.two.three.Four/index', '多级节点', '', '2', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('24', '23', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('25', '22', '0', 'index', '列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('26', '22', '0', 'detail', '详情', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('27', '21', '0', 'load', '自动导入', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('28', '21', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('29', '5', '0', 'add', '添加', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('30', '21', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('31', '21', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('32', '9', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('33', '9', '0', 'generate', '生成方法', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('34', '5', '0', 'password', '修改密码', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('35', '5', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('36', '5', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('37', '5', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('38', '4', '0', 'user', '用户列表', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('39', '4', '0', 'access', '授权', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('40', '4', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('41', '4', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('42', '4', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('43', '4', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('44', '4', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('45', '3', '0', 'load', '节点快速导入测试', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('46', '3', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('47', '3', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('48', '3', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('49', '3', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('50', '3', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('51', '2', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('52', '2', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('53', '2', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('54', '2', '0', 'forbid', '默认禁用操作', '', '3', '0', '51', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('55', '2', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('56', '1', '2', 'one', '一级菜单', '', '2', '1', '13', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('60', '56', '2', 'two', '二级', '', '3', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('61', '60', '2', 'three', '三级菜单', '', '4', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('62', '61', '2', 'Four', '四级菜单', '', '5', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('63', '1', '4', 'SetMail', '套餐管理', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('64', '1', '5', 'User', '用户列表', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('65', '1', '6', 'Bells', '排钟列表', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('66', '1', '3', 'Teacher', '技师管理', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('67', '5', '0', 'delete', '删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('68', '5', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('69', '5', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('70', '5', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('71', '5', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('72', '5', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('73', '5', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('74', '5', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('75', '5', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('76', '63', '0', 'del', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('77', '63', '0', 'index', '首页', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('78', '63', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('79', '63', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('80', '63', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('81', '63', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('82', '63', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('83', '63', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('84', '63', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('85', '63', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('86', '63', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('87', '63', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('88', '64', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('89', '64', '0', 'edit', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('90', '64', '0', 'add', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('91', '64', '0', 'del', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('92', '64', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('93', '64', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('94', '64', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('95', '64', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('96', '64', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('97', '64', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('98', '64', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('99', '64', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('100', '65', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('101', '65', '0', 'order_list', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('102', '65', '0', 'jie', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('103', '65', '0', 'add', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('104', '65', '0', 'addclock', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('105', '65', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('106', '65', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('107', '65', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('108', '65', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('109', '65', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('110', '65', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('111', '65', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('112', '65', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('113', '65', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('114', '66', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('115', '66', '0', 'edit', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('116', '66', '0', 'add', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('117', '66', '0', 'del', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('118', '66', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('119', '66', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('120', '66', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('121', '66', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('122', '66', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('123', '66', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('124', '66', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('125', '66', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('126', '1', '4', 'Combination', '附加项目', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('128', '1', '4', 'Activ', '活动管理', '', '2', '1', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('129', '126', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('130', '126', '0', 'del', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('131', '126', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('132', '126', '0', 'add', '添加', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('133', '126', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('134', '126', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('135', '126', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('136', '126', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('137', '126', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('138', '126', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('139', '126', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('140', '126', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('141', '128', '0', 'index', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('142', '128', '0', 'add', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('143', '128', '0', 'recycleBin', '回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('144', '128', '0', 'edit', '编辑', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('145', '128', '0', 'delete', '默认删除操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('146', '128', '0', 'recycle', '从回收站恢复', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('147', '128', '0', 'forbid', '默认禁用操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('148', '128', '0', 'resume', '默认恢复操作', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('149', '128', '0', 'deleteForever', '永久删除', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('150', '128', '0', 'clear', '清空回收站', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('151', '128', '0', 'saveOrder', '保存排序', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('152', '64', '0', 'Recharge', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('153', '65', '0', 'fjie', '未定义', '', '3', '0', '50', '1', '0');
INSERT INTO `tp_admin_node` VALUES ('154', '65', '0', 'lockedit', '未定义', '', '3', '0', '50', '1', '0');

-- ----------------------------
-- Table structure for tp_admin_node_load
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='节点快速导入';

-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` VALUES ('4', '编辑', 'edit', '1');
INSERT INTO `tp_admin_node_load` VALUES ('5', '添加', 'add', '1');
INSERT INTO `tp_admin_node_load` VALUES ('6', '首页', 'index', '1');
INSERT INTO `tp_admin_node_load` VALUES ('7', '删除', 'delete', '1');

-- ----------------------------
-- Table structure for tp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`),
  KEY `isdelete` (`isdelete`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` VALUES ('3', '0', '分店', '', '1', '0', '1540116689', '1540116689');

-- ----------------------------
-- Table structure for tp_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------
INSERT INTO `tp_admin_role_user` VALUES ('3', '4');

-- ----------------------------
-- Table structure for tp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountpassword` (`account`,`password`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` VALUES ('1', 'admin', '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', '1540619225', '127.0.0.1', '403', 'tianpian0805@gmail.com', '13121126169', '我是超级管理员', '1', '0', '1222907803', '1451033528');
INSERT INTO `tp_admin_user` VALUES ('2', 'demo', '测试', 'e10adc3949ba59abbe56e057f20f883e', '1481206367', '127.0.0.1', '5', '', '', '', '1', '0', '1476777133', '1477399793');
INSERT INTO `tp_admin_user` VALUES ('3', 'xian', 'xiandian', 'e10adc3949ba59abbe56e057f20f883e', '1540116972', '127.0.0.1', '2', '', '', '', '1', '0', '1540116810', '1540116810');
INSERT INTO `tp_admin_user` VALUES ('4', 'lintong', '临潼店', 'e10adc3949ba59abbe56e057f20f883e', '1540619656', '127.0.0.1', '5', '', '', '', '1', '0', '1540191602', '1540191639');

-- ----------------------------
-- Table structure for tp_bells
-- ----------------------------
DROP TABLE IF EXISTS `tp_bells`;
CREATE TABLE `tp_bells` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `son_id` int(11) DEFAULT NULL,
  `createtime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bells
-- ----------------------------
INSERT INTO `tp_bells` VALUES ('10', '1', '0', '4', '1540375080');
INSERT INTO `tp_bells` VALUES ('11', '1', '0', '4', '1540461540');
INSERT INTO `tp_bells` VALUES ('12', '1', '0', '1', '1540539900');
INSERT INTO `tp_bells` VALUES ('13', '1', '0', '1', '1538987880');
INSERT INTO `tp_bells` VALUES ('14', '1', '0', '1', '1540618140');
INSERT INTO `tp_bells` VALUES ('15', '1', '0', '4', '1543556580');
INSERT INTO `tp_bells` VALUES ('16', '1', '0', '4', '1540791840');
INSERT INTO `tp_bells` VALUES ('17', '1', '0', '4', '1539668700');
INSERT INTO `tp_bells` VALUES ('18', '1', '0', '4', '1540878300');

-- ----------------------------
-- Table structure for tp_bells_list
-- ----------------------------
DROP TABLE IF EXISTS `tp_bells_list`;
CREATE TABLE `tp_bells_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `son_id` int(11) DEFAULT NULL COMMENT '分店id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `teacher_id` int(11) DEFAULT NULL COMMENT '技师id',
  `mail_id` int(11) DEFAULT NULL COMMENT '套餐id',
  `state` int(5) DEFAULT '1' COMMENT '是否会员0已完成1未完成',
  `bells_id` int(11) DEFAULT NULL,
  `record` text COMMENT '备注',
  `starttime` int(20) DEFAULT NULL COMMENT '上种时间',
  `com_id` varchar(255) DEFAULT NULL COMMENT '附加项目',
  `money` decimal(10,0) DEFAULT NULL COMMENT '订单总额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_bells_list
-- ----------------------------
INSERT INTO `tp_bells_list` VALUES ('39', null, '14', '11', '2', '0', '16', null, '1540619065', ',2,4', '186');
INSERT INTO `tp_bells_list` VALUES ('35', null, '14', '9', '3', '0', '12', null, '1540546932', ',6', '346');
INSERT INTO `tp_bells_list` VALUES ('37', null, '0', '9', '2', '1', '14', null, '1540618155', ',2,4', '186');
INSERT INTO `tp_bells_list` VALUES ('38', null, '14', '11', '0', '1', '15', null, '1540619000', ',2,4,6,8', '266');
INSERT INTO `tp_bells_list` VALUES ('40', null, '12', '11', '0', '1', '17', null, '1540619110', ',', '0');
INSERT INTO `tp_bells_list` VALUES ('41', null, '0', '11', '3', '0', '18', null, '1540619123', ',6,8', '326');

-- ----------------------------
-- Table structure for tp_combination
-- ----------------------------
DROP TABLE IF EXISTS `tp_combination`;
CREATE TABLE `tp_combination` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '套餐名称',
  `lengthtime` varchar(255) DEFAULT NULL COMMENT '套餐时长',
  `price` varchar(255) DEFAULT NULL COMMENT '套餐价格',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_combination
-- ----------------------------
INSERT INTO `tp_combination` VALUES ('2', '全身按摩', '60', '68', '1', '0');
INSERT INTO `tp_combination` VALUES ('3', '精油开背', '45', '118', '1', '0');
INSERT INTO `tp_combination` VALUES ('4', '拔罐', '10', '30', '1', '0');
INSERT INTO `tp_combination` VALUES ('5', '刮痧', '10', '30', '1', '0');
INSERT INTO `tp_combination` VALUES ('6', '局部按摩', '30', '40', '1', '0');
INSERT INTO `tp_combination` VALUES ('7', '艾灸', '30', '58', '1', '0');
INSERT INTO `tp_combination` VALUES ('8', '火疗', '45', '128', '1', '0');
INSERT INTO `tp_combination` VALUES ('9', '精油SPA', '120', '388', '1', '0');
INSERT INTO `tp_combination` VALUES ('10', '中药精油推拿', '60', '158', '1', '0');
INSERT INTO `tp_combination` VALUES ('11', '砭石腹疗', '30', '68', '1', '0');
INSERT INTO `tp_combination` VALUES ('12', '砭石卵巢保养', '128', '60', '1', '0');
INSERT INTO `tp_combination` VALUES ('13', '淋巴排毒', '45', '88', '1', '0');

-- ----------------------------
-- Table structure for tp_file
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_file
-- ----------------------------

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
INSERT INTO `tp_login_log` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-21 18:05:48');
INSERT INTO `tp_login_log` VALUES ('2', '3', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-21 18:14:13');
INSERT INTO `tp_login_log` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-21 18:15:56');
INSERT INTO `tp_login_log` VALUES ('4', '3', '127.0.0.1', '本机地址 本机地址  ', 'IE(11.0)', 'Windows 10', '2018-10-21 18:16:12');
INSERT INTO `tp_login_log` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-22 14:41:57');
INSERT INTO `tp_login_log` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-23 09:33:55');
INSERT INTO `tp_login_log` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-24 09:32:54');
INSERT INTO `tp_login_log` VALUES ('8', '4', '127.0.0.1', '本机地址 本机地址  ', 'IE(11.0)', 'Windows 10', '2018-10-24 17:47:49');
INSERT INTO `tp_login_log` VALUES ('9', '4', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-24 17:54:13');
INSERT INTO `tp_login_log` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-24 18:05:29');
INSERT INTO `tp_login_log` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-24 18:21:11');
INSERT INTO `tp_login_log` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-24 18:22:45');
INSERT INTO `tp_login_log` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-25 10:30:17');
INSERT INTO `tp_login_log` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-25 10:32:29');
INSERT INTO `tp_login_log` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-25 10:33:06');
INSERT INTO `tp_login_log` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-25 10:35:15');
INSERT INTO `tp_login_log` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-25 10:36:38');
INSERT INTO `tp_login_log` VALUES ('18', '4', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-25 10:46:43');
INSERT INTO `tp_login_log` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-26 14:59:35');
INSERT INTO `tp_login_log` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-26 20:22:55');
INSERT INTO `tp_login_log` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-27 09:49:29');
INSERT INTO `tp_login_log` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-27 13:41:11');
INSERT INTO `tp_login_log` VALUES ('23', '4', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-27 13:41:35');
INSERT INTO `tp_login_log` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'IE(11.0)', 'Windows 10', '2018-10-27 13:47:05');
INSERT INTO `tp_login_log` VALUES ('25', '4', '127.0.0.1', '本机地址 本机地址  ', 'Chrome(71.0.3551.3)', 'Windows 10', '2018-10-27 13:54:16');

-- ----------------------------
-- Table structure for tp_node_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`),
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';

-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_one_two_three_four
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `sort` (`sort`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='四级控制器';

-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` VALUES ('1', 'yuan1994', '中医理疗管理系统', '2', '1', null, '2222', 'https://github.com/yuan1994/tpadmin', '2016-12-07', '13012345678', 'tianpian0805@gmail.com', '50', '1', '0', '1481947278', '1481947353');

-- ----------------------------
-- Table structure for tp_set_mail
-- ----------------------------
DROP TABLE IF EXISTS `tp_set_mail`;
CREATE TABLE `tp_set_mail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '套餐名称',
  `lengthtime` varchar(255) DEFAULT NULL COMMENT '套餐时长',
  `price` varchar(255) DEFAULT NULL COMMENT '套餐价格',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_set_mail
-- ----------------------------
INSERT INTO `tp_set_mail` VALUES ('2', '保健按摩加拔罐或者刮痧', '100', '88', '1', '0');
INSERT INTO `tp_set_mail` VALUES ('3', '保健加精油开背', '100', '158', '1', '0');
INSERT INTO `tp_set_mail` VALUES ('4', '保健加火疗', '100', '166', '1', '0');
INSERT INTO `tp_set_mail` VALUES ('5', '保健加艾灸', '100', '108', '1', '0');
INSERT INTO `tp_set_mail` VALUES ('6', '淋巴排毒加背部按摩', '100', '108', '1', '0');

-- ----------------------------
-- Table structure for tp_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tp_teacher`;
CREATE TABLE `tp_teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '技师名称',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `age` varchar(255) DEFAULT NULL COMMENT '年龄',
  `son_id` varchar(255) DEFAULT NULL COMMENT '所属分店',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `createtime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_teacher
-- ----------------------------
INSERT INTO `tp_teacher` VALUES ('9', '123123123', '0', '100', '1', '1', '0', '1540260933');
INSERT INTO `tp_teacher` VALUES ('10', '姚启航', '1', '12', '1', '1', '0', '1540344830');
INSERT INTO `tp_teacher` VALUES ('11', '小皮', '1', '66', '4', '1', '0', '1540374537');

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) DEFAULT NULL COMMENT '会员名称',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `age` varchar(255) DEFAULT NULL COMMENT '年龄',
  `sex` int(5) DEFAULT '0' COMMENT '性别',
  `money` decimal(10,2) DEFAULT NULL COMMENT '用户金额',
  `record` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `createtime` int(20) DEFAULT NULL COMMENT '创建时间',
  `son_id` int(5) DEFAULT NULL COMMENT '分店id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES ('1', null, null, null, '0', '10.00', null, '1', '0', '1540194432', '4');
INSERT INTO `tp_user` VALUES ('2', null, null, null, '0', '10.00', null, '1', '0', '1540194432', '4');
INSERT INTO `tp_user` VALUES ('8', null, null, null, '0', '10.00', null, '1', '0', '1540280832', '2');
INSERT INTO `tp_user` VALUES ('11', null, null, null, '0', '10.00', null, '1', '0', '1540280832', '2');
INSERT INTO `tp_user` VALUES ('12', 'admin', '', '10', '0', '10.00', '1', '1', '0', '1540021632', '2');
INSERT INTO `tp_user` VALUES ('13', null, null, null, '0', '10.00', null, '1', '0', '1540021632', '2');
INSERT INTO `tp_user` VALUES ('14', '13289223170', '13289223170', '10', '1', '8429.00', 'qweqe123123', '1', '0', '1539935232', '4');
INSERT INTO `tp_user` VALUES ('15', '12312qew', '13289223177', '12', '1', '10.00', '1231456', '1', '0', '1539935232', '1');

-- ----------------------------
-- Table structure for tp_web_log_001
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_001`;
CREATE TABLE `tp_web_log_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ip` (`ip`),
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=748 DEFAULT CHARSET=utf8 COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_001
-- ----------------------------
INSERT INTO `tp_web_log_001` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537910');
INSERT INTO `tp_web_log_001` VALUES ('2', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537910');
INSERT INTO `tp_web_log_001` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537912');
INSERT INTO `tp_web_log_001` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537913');
INSERT INTO `tp_web_log_001` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537913');
INSERT INTO `tp_web_log_001` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537914');
INSERT INTO `tp_web_log_001` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537954');
INSERT INTO `tp_web_log_001` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537954');
INSERT INTO `tp_web_log_001` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537956');
INSERT INTO `tp_web_log_001` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537960');
INSERT INTO `tp_web_log_001` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/add.html', 'admin', 'Combination', 'add', 'GET', 'a:0:{}', '1540538109');
INSERT INTO `tp_web_log_001` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538209');
INSERT INTO `tp_web_log_001` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538210');
INSERT INTO `tp_web_log_001` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538210');
INSERT INTO `tp_web_log_001` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538210');
INSERT INTO `tp_web_log_001` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/del.html?id=1', 'admin', 'Combination', 'del', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540538212');
INSERT INTO `tp_web_log_001` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538212');
INSERT INTO `tp_web_log_001` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538216');
INSERT INTO `tp_web_log_001` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538250');
INSERT INTO `tp_web_log_001` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538250');
INSERT INTO `tp_web_log_001` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538250');
INSERT INTO `tp_web_log_001` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/del.html?id=1', 'admin', 'Combination', 'del', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540538252');
INSERT INTO `tp_web_log_001` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538252');
INSERT INTO `tp_web_log_001` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539833');
INSERT INTO `tp_web_log_001` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539834');
INSERT INTO `tp_web_log_001` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539834');
INSERT INTO `tp_web_log_001` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539836');
INSERT INTO `tp_web_log_001` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539837');
INSERT INTO `tp_web_log_001` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539838');
INSERT INTO `tp_web_log_001` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539838');
INSERT INTO `tp_web_log_001` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539879');
INSERT INTO `tp_web_log_001` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556651');
INSERT INTO `tp_web_log_001` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556653');
INSERT INTO `tp_web_log_001` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556654');
INSERT INTO `tp_web_log_001` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556658');
INSERT INTO `tp_web_log_001` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556659');
INSERT INTO `tp_web_log_001` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556660');
INSERT INTO `tp_web_log_001` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540605038');
INSERT INTO `tp_web_log_001` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540605039');
INSERT INTO `tp_web_log_001` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540605042');
INSERT INTO `tp_web_log_001` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605397');
INSERT INTO `tp_web_log_001` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605437');
INSERT INTO `tp_web_log_001` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_001` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_001` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_001` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_001` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605619');
INSERT INTO `tp_web_log_001` VALUES ('48', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605619');
INSERT INTO `tp_web_log_001` VALUES ('49', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606633');
INSERT INTO `tp_web_log_001` VALUES ('50', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606684');
INSERT INTO `tp_web_log_001` VALUES ('51', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606685');
INSERT INTO `tp_web_log_001` VALUES ('52', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606685');
INSERT INTO `tp_web_log_001` VALUES ('53', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540606686');
INSERT INTO `tp_web_log_001` VALUES ('54', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540606722');
INSERT INTO `tp_web_log_001` VALUES ('55', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1540606934');
INSERT INTO `tp_web_log_001` VALUES ('56', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/one.two.three.four/edit/id/1.html', 'admin', 'one.two.three.Four', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540606936');
INSERT INTO `tp_web_log_001` VALUES ('57', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607064');
INSERT INTO `tp_web_log_001` VALUES ('58', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607103');
INSERT INTO `tp_web_log_001` VALUES ('59', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607103');
INSERT INTO `tp_web_log_001` VALUES ('60', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607228');
INSERT INTO `tp_web_log_001` VALUES ('61', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607247');
INSERT INTO `tp_web_log_001` VALUES ('62', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607271');
INSERT INTO `tp_web_log_001` VALUES ('63', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607489');
INSERT INTO `tp_web_log_001` VALUES ('64', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607490');
INSERT INTO `tp_web_log_001` VALUES ('65', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607506');
INSERT INTO `tp_web_log_001` VALUES ('66', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607508');
INSERT INTO `tp_web_log_001` VALUES ('67', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607551');
INSERT INTO `tp_web_log_001` VALUES ('68', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607552');
INSERT INTO `tp_web_log_001` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607552');
INSERT INTO `tp_web_log_001` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607552');
INSERT INTO `tp_web_log_001` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607692');
INSERT INTO `tp_web_log_001` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607692');
INSERT INTO `tp_web_log_001` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607716');
INSERT INTO `tp_web_log_001` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607716');
INSERT INTO `tp_web_log_001` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607717');
INSERT INTO `tp_web_log_001` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607717');
INSERT INTO `tp_web_log_001` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607717');
INSERT INTO `tp_web_log_001` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607807');
INSERT INTO `tp_web_log_001` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608062');
INSERT INTO `tp_web_log_001` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608063');
INSERT INTO `tp_web_log_001` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608064');
INSERT INTO `tp_web_log_001` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608086');
INSERT INTO `tp_web_log_001` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608100');
INSERT INTO `tp_web_log_001` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608100');
INSERT INTO `tp_web_log_001` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608200');
INSERT INTO `tp_web_log_001` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608200');
INSERT INTO `tp_web_log_001` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608240');
INSERT INTO `tp_web_log_001` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608240');
INSERT INTO `tp_web_log_001` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608240');
INSERT INTO `tp_web_log_001` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608302');
INSERT INTO `tp_web_log_001` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608323');
INSERT INTO `tp_web_log_001` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608389');
INSERT INTO `tp_web_log_001` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608419');
INSERT INTO `tp_web_log_001` VALUES ('94', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608463');
INSERT INTO `tp_web_log_001` VALUES ('95', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608477');
INSERT INTO `tp_web_log_001` VALUES ('96', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608491');
INSERT INTO `tp_web_log_001` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608506');
INSERT INTO `tp_web_log_001` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608536');
INSERT INTO `tp_web_log_001` VALUES ('99', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608621');
INSERT INTO `tp_web_log_001` VALUES ('100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608621');
INSERT INTO `tp_web_log_001` VALUES ('101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608679');
INSERT INTO `tp_web_log_001` VALUES ('102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608680');
INSERT INTO `tp_web_log_001` VALUES ('103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608837');
INSERT INTO `tp_web_log_001` VALUES ('104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608837');
INSERT INTO `tp_web_log_001` VALUES ('105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608838');
INSERT INTO `tp_web_log_001` VALUES ('106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540608940');
INSERT INTO `tp_web_log_001` VALUES ('107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540609082');
INSERT INTO `tp_web_log_001` VALUES ('108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609161');
INSERT INTO `tp_web_log_001` VALUES ('109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609595');
INSERT INTO `tp_web_log_001` VALUES ('110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609595');
INSERT INTO `tp_web_log_001` VALUES ('111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_001` VALUES ('112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_001` VALUES ('113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_001` VALUES ('114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_001` VALUES ('115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_001` VALUES ('116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609597');
INSERT INTO `tp_web_log_001` VALUES ('117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609599');
INSERT INTO `tp_web_log_001` VALUES ('118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609614');
INSERT INTO `tp_web_log_001` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609615');
INSERT INTO `tp_web_log_001` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609615');
INSERT INTO `tp_web_log_001` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_001` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_001` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_001` VALUES ('124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_001` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609778');
INSERT INTO `tp_web_log_001` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609951');
INSERT INTO `tp_web_log_001` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610102');
INSERT INTO `tp_web_log_001` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610102');
INSERT INTO `tp_web_log_001` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610102');
INSERT INTO `tp_web_log_001` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610168');
INSERT INTO `tp_web_log_001` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610169');
INSERT INTO `tp_web_log_001` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610441');
INSERT INTO `tp_web_log_001` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"starttime\";s:16:\"2018-10-19 11:20\";s:7:\"endtime\";s:16:\"2018-10-25 11:20\";}', '1540610446');
INSERT INTO `tp_web_log_001` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610471');
INSERT INTO `tp_web_log_001` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611028');
INSERT INTO `tp_web_log_001` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611029');
INSERT INTO `tp_web_log_001` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611052');
INSERT INTO `tp_web_log_001` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611053');
INSERT INTO `tp_web_log_001` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611053');
INSERT INTO `tp_web_log_001` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611065');
INSERT INTO `tp_web_log_001` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611077');
INSERT INTO `tp_web_log_001` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611085');
INSERT INTO `tp_web_log_001` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611085');
INSERT INTO `tp_web_log_001` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611085');
INSERT INTO `tp_web_log_001` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611116');
INSERT INTO `tp_web_log_001` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611116');
INSERT INTO `tp_web_log_001` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611135');
INSERT INTO `tp_web_log_001` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611135');
INSERT INTO `tp_web_log_001` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:3:{s:4:\"type\";s:1:\"0\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540611139');
INSERT INTO `tp_web_log_001` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:3:{s:4:\"type\";s:1:\"0\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540611313');
INSERT INTO `tp_web_log_001` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_001` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_001` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_001` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_001` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:3:\"123\";s:8:\"discount\";s:3:\"123\";}', '1540611382');
INSERT INTO `tp_web_log_001` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611409');
INSERT INTO `tp_web_log_001` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611410');
INSERT INTO `tp_web_log_001` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:3:\"100\";s:8:\"discount\";s:3:\"100\";}', '1540611413');
INSERT INTO `tp_web_log_001` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611413');
INSERT INTO `tp_web_log_001` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611499');
INSERT INTO `tp_web_log_001` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611499');
INSERT INTO `tp_web_log_001` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611499');
INSERT INTO `tp_web_log_001` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611500');
INSERT INTO `tp_web_log_001` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611627');
INSERT INTO `tp_web_log_001` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611628');
INSERT INTO `tp_web_log_001` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611628');
INSERT INTO `tp_web_log_001` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611629');
INSERT INTO `tp_web_log_001` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611629');
INSERT INTO `tp_web_log_001` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611629');
INSERT INTO `tp_web_log_001` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611679');
INSERT INTO `tp_web_log_001` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611680');
INSERT INTO `tp_web_log_001` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611680');
INSERT INTO `tp_web_log_001` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540611698');
INSERT INTO `tp_web_log_001` VALUES ('174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611760');
INSERT INTO `tp_web_log_001` VALUES ('175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540611780');
INSERT INTO `tp_web_log_001` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612000');
INSERT INTO `tp_web_log_001` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612000');
INSERT INTO `tp_web_log_001` VALUES ('178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612000');
INSERT INTO `tp_web_log_001` VALUES ('179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612001');
INSERT INTO `tp_web_log_001` VALUES ('180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612001');
INSERT INTO `tp_web_log_001` VALUES ('181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612065');
INSERT INTO `tp_web_log_001` VALUES ('182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612066');
INSERT INTO `tp_web_log_001` VALUES ('183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540612067');
INSERT INTO `tp_web_log_001` VALUES ('184', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"2\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:2:\"20\";s:8:\"discount\";s:2:\"20\";}', '1540612073');
INSERT INTO `tp_web_log_001` VALUES ('185', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612073');
INSERT INTO `tp_web_log_001` VALUES ('186', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612078');
INSERT INTO `tp_web_log_001` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"1\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540612080');
INSERT INTO `tp_web_log_001` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612080');
INSERT INTO `tp_web_log_001` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612086');
INSERT INTO `tp_web_log_001` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612113');
INSERT INTO `tp_web_log_001` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612114');
INSERT INTO `tp_web_log_001` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612142');
INSERT INTO `tp_web_log_001` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit.html', 'admin', 'Activ', 'edit', 'POST', 'a:5:{s:2:\"id\";s:1:\"7\";s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540612143');
INSERT INTO `tp_web_log_001` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612143');
INSERT INTO `tp_web_log_001` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612145');
INSERT INTO `tp_web_log_001` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit.html', 'admin', 'Activ', 'edit', 'POST', 'a:5:{s:2:\"id\";s:1:\"7\";s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"1\";s:7:\"consume\";s:4:\"1111\";s:8:\"discount\";s:3:\"111\";}', '1540612149');
INSERT INTO `tp_web_log_001` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612149');
INSERT INTO `tp_web_log_001` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612152');
INSERT INTO `tp_web_log_001` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612152');
INSERT INTO `tp_web_log_001` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612202');
INSERT INTO `tp_web_log_001` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612203');
INSERT INTO `tp_web_log_001` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612203');
INSERT INTO `tp_web_log_001` VALUES ('203', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612203');
INSERT INTO `tp_web_log_001` VALUES ('204', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612204');
INSERT INTO `tp_web_log_001` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612204');
INSERT INTO `tp_web_log_001` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612204');
INSERT INTO `tp_web_log_001` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612205');
INSERT INTO `tp_web_log_001` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612206');
INSERT INTO `tp_web_log_001` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612206');
INSERT INTO `tp_web_log_001` VALUES ('210', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540612206');
INSERT INTO `tp_web_log_001` VALUES ('211', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_001` VALUES ('212', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_001` VALUES ('213', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_001` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_001` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_001` VALUES ('216', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612359');
INSERT INTO `tp_web_log_001` VALUES ('217', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612359');
INSERT INTO `tp_web_log_001` VALUES ('218', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612360');
INSERT INTO `tp_web_log_001` VALUES ('219', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612360');
INSERT INTO `tp_web_log_001` VALUES ('220', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612427');
INSERT INTO `tp_web_log_001` VALUES ('221', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612445');
INSERT INTO `tp_web_log_001` VALUES ('222', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612446');
INSERT INTO `tp_web_log_001` VALUES ('223', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612446');
INSERT INTO `tp_web_log_001` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612446');
INSERT INTO `tp_web_log_001` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_001` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_001` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_001` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_001` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612491');
INSERT INTO `tp_web_log_001` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612491');
INSERT INTO `tp_web_log_001` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612491');
INSERT INTO `tp_web_log_001` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612492');
INSERT INTO `tp_web_log_001` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612492');
INSERT INTO `tp_web_log_001` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612500');
INSERT INTO `tp_web_log_001` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612501');
INSERT INTO `tp_web_log_001` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612501');
INSERT INTO `tp_web_log_001` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612501');
INSERT INTO `tp_web_log_001` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612507');
INSERT INTO `tp_web_log_001` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612507');
INSERT INTO `tp_web_log_001` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612507');
INSERT INTO `tp_web_log_001` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612515');
INSERT INTO `tp_web_log_001` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612516');
INSERT INTO `tp_web_log_001` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540612542');
INSERT INTO `tp_web_log_001` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540618251');
INSERT INTO `tp_web_log_001` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540618262');
INSERT INTO `tp_web_log_001` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540618262');

-- ----------------------------
-- Table structure for tp_web_log_all
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_all`;
CREATE TABLE `tp_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MRG_MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC INSERT_METHOD=LAST UNION=(`tp_web_log_001`) COMMENT='网站日志';

-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------
INSERT INTO `tp_web_log_all` VALUES ('1', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537910');
INSERT INTO `tp_web_log_all` VALUES ('2', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537910');
INSERT INTO `tp_web_log_all` VALUES ('3', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537912');
INSERT INTO `tp_web_log_all` VALUES ('4', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537913');
INSERT INTO `tp_web_log_all` VALUES ('5', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537913');
INSERT INTO `tp_web_log_all` VALUES ('6', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537914');
INSERT INTO `tp_web_log_all` VALUES ('7', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537954');
INSERT INTO `tp_web_log_all` VALUES ('8', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537954');
INSERT INTO `tp_web_log_all` VALUES ('9', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537956');
INSERT INTO `tp_web_log_all` VALUES ('10', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540537960');
INSERT INTO `tp_web_log_all` VALUES ('11', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/add.html', 'admin', 'Combination', 'add', 'GET', 'a:0:{}', '1540538109');
INSERT INTO `tp_web_log_all` VALUES ('12', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538209');
INSERT INTO `tp_web_log_all` VALUES ('13', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538210');
INSERT INTO `tp_web_log_all` VALUES ('14', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538210');
INSERT INTO `tp_web_log_all` VALUES ('15', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538210');
INSERT INTO `tp_web_log_all` VALUES ('16', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/del.html?id=1', 'admin', 'Combination', 'del', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540538212');
INSERT INTO `tp_web_log_all` VALUES ('17', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538212');
INSERT INTO `tp_web_log_all` VALUES ('18', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538216');
INSERT INTO `tp_web_log_all` VALUES ('19', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538250');
INSERT INTO `tp_web_log_all` VALUES ('20', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538250');
INSERT INTO `tp_web_log_all` VALUES ('21', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538250');
INSERT INTO `tp_web_log_all` VALUES ('22', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/del.html?id=1', 'admin', 'Combination', 'del', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540538252');
INSERT INTO `tp_web_log_all` VALUES ('23', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540538252');
INSERT INTO `tp_web_log_all` VALUES ('24', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539833');
INSERT INTO `tp_web_log_all` VALUES ('25', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539834');
INSERT INTO `tp_web_log_all` VALUES ('26', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539834');
INSERT INTO `tp_web_log_all` VALUES ('27', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539836');
INSERT INTO `tp_web_log_all` VALUES ('28', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539837');
INSERT INTO `tp_web_log_all` VALUES ('29', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539838');
INSERT INTO `tp_web_log_all` VALUES ('30', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539838');
INSERT INTO `tp_web_log_all` VALUES ('31', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540539879');
INSERT INTO `tp_web_log_all` VALUES ('32', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556651');
INSERT INTO `tp_web_log_all` VALUES ('33', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556653');
INSERT INTO `tp_web_log_all` VALUES ('34', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556654');
INSERT INTO `tp_web_log_all` VALUES ('35', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556658');
INSERT INTO `tp_web_log_all` VALUES ('36', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556659');
INSERT INTO `tp_web_log_all` VALUES ('37', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540556660');
INSERT INTO `tp_web_log_all` VALUES ('38', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540605038');
INSERT INTO `tp_web_log_all` VALUES ('39', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540605039');
INSERT INTO `tp_web_log_all` VALUES ('40', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540605042');
INSERT INTO `tp_web_log_all` VALUES ('41', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605397');
INSERT INTO `tp_web_log_all` VALUES ('42', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605437');
INSERT INTO `tp_web_log_all` VALUES ('43', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_all` VALUES ('44', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_all` VALUES ('45', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_all` VALUES ('46', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605536');
INSERT INTO `tp_web_log_all` VALUES ('47', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605619');
INSERT INTO `tp_web_log_all` VALUES ('48', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540605619');
INSERT INTO `tp_web_log_all` VALUES ('49', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606633');
INSERT INTO `tp_web_log_all` VALUES ('50', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606684');
INSERT INTO `tp_web_log_all` VALUES ('51', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606685');
INSERT INTO `tp_web_log_all` VALUES ('52', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540606685');
INSERT INTO `tp_web_log_all` VALUES ('53', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540606686');
INSERT INTO `tp_web_log_all` VALUES ('54', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540606722');
INSERT INTO `tp_web_log_all` VALUES ('55', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/one.two.three.four/index.html', 'admin', 'one.two.three.Four', 'index', 'GET', 'a:0:{}', '1540606934');
INSERT INTO `tp_web_log_all` VALUES ('56', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/one.two.three.four/edit/id/1.html', 'admin', 'one.two.three.Four', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540606936');
INSERT INTO `tp_web_log_all` VALUES ('57', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607064');
INSERT INTO `tp_web_log_all` VALUES ('58', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607103');
INSERT INTO `tp_web_log_all` VALUES ('59', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607103');
INSERT INTO `tp_web_log_all` VALUES ('60', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607228');
INSERT INTO `tp_web_log_all` VALUES ('61', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607247');
INSERT INTO `tp_web_log_all` VALUES ('62', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607271');
INSERT INTO `tp_web_log_all` VALUES ('63', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607489');
INSERT INTO `tp_web_log_all` VALUES ('64', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607490');
INSERT INTO `tp_web_log_all` VALUES ('65', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607506');
INSERT INTO `tp_web_log_all` VALUES ('66', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607508');
INSERT INTO `tp_web_log_all` VALUES ('67', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607551');
INSERT INTO `tp_web_log_all` VALUES ('68', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607552');
INSERT INTO `tp_web_log_all` VALUES ('69', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607552');
INSERT INTO `tp_web_log_all` VALUES ('70', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607552');
INSERT INTO `tp_web_log_all` VALUES ('71', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607692');
INSERT INTO `tp_web_log_all` VALUES ('72', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607692');
INSERT INTO `tp_web_log_all` VALUES ('73', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607716');
INSERT INTO `tp_web_log_all` VALUES ('74', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607716');
INSERT INTO `tp_web_log_all` VALUES ('75', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607717');
INSERT INTO `tp_web_log_all` VALUES ('76', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607717');
INSERT INTO `tp_web_log_all` VALUES ('77', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607717');
INSERT INTO `tp_web_log_all` VALUES ('78', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540607807');
INSERT INTO `tp_web_log_all` VALUES ('79', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608062');
INSERT INTO `tp_web_log_all` VALUES ('80', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608063');
INSERT INTO `tp_web_log_all` VALUES ('81', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608064');
INSERT INTO `tp_web_log_all` VALUES ('82', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608086');
INSERT INTO `tp_web_log_all` VALUES ('83', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608100');
INSERT INTO `tp_web_log_all` VALUES ('84', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608100');
INSERT INTO `tp_web_log_all` VALUES ('85', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608200');
INSERT INTO `tp_web_log_all` VALUES ('86', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608200');
INSERT INTO `tp_web_log_all` VALUES ('87', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608240');
INSERT INTO `tp_web_log_all` VALUES ('88', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608240');
INSERT INTO `tp_web_log_all` VALUES ('89', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608240');
INSERT INTO `tp_web_log_all` VALUES ('90', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608302');
INSERT INTO `tp_web_log_all` VALUES ('91', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608323');
INSERT INTO `tp_web_log_all` VALUES ('92', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608389');
INSERT INTO `tp_web_log_all` VALUES ('93', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608419');
INSERT INTO `tp_web_log_all` VALUES ('94', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608463');
INSERT INTO `tp_web_log_all` VALUES ('95', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608477');
INSERT INTO `tp_web_log_all` VALUES ('96', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608491');
INSERT INTO `tp_web_log_all` VALUES ('97', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608506');
INSERT INTO `tp_web_log_all` VALUES ('98', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608536');
INSERT INTO `tp_web_log_all` VALUES ('99', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608621');
INSERT INTO `tp_web_log_all` VALUES ('100', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608621');
INSERT INTO `tp_web_log_all` VALUES ('101', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608679');
INSERT INTO `tp_web_log_all` VALUES ('102', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608680');
INSERT INTO `tp_web_log_all` VALUES ('103', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608837');
INSERT INTO `tp_web_log_all` VALUES ('104', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608837');
INSERT INTO `tp_web_log_all` VALUES ('105', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540608838');
INSERT INTO `tp_web_log_all` VALUES ('106', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540608940');
INSERT INTO `tp_web_log_all` VALUES ('107', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit/id/1.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"1\";}', '1540609082');
INSERT INTO `tp_web_log_all` VALUES ('108', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609161');
INSERT INTO `tp_web_log_all` VALUES ('109', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609595');
INSERT INTO `tp_web_log_all` VALUES ('110', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609595');
INSERT INTO `tp_web_log_all` VALUES ('111', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_all` VALUES ('112', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_all` VALUES ('113', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_all` VALUES ('114', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_all` VALUES ('115', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609596');
INSERT INTO `tp_web_log_all` VALUES ('116', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609597');
INSERT INTO `tp_web_log_all` VALUES ('117', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609599');
INSERT INTO `tp_web_log_all` VALUES ('118', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609614');
INSERT INTO `tp_web_log_all` VALUES ('119', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609615');
INSERT INTO `tp_web_log_all` VALUES ('120', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609615');
INSERT INTO `tp_web_log_all` VALUES ('121', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_all` VALUES ('122', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_all` VALUES ('123', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_all` VALUES ('124', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609777');
INSERT INTO `tp_web_log_all` VALUES ('125', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/edit', 'admin', 'Activ', 'edit', 'GET', 'a:0:{}', '1540609778');
INSERT INTO `tp_web_log_all` VALUES ('126', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540609951');
INSERT INTO `tp_web_log_all` VALUES ('127', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610102');
INSERT INTO `tp_web_log_all` VALUES ('128', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610102');
INSERT INTO `tp_web_log_all` VALUES ('129', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610102');
INSERT INTO `tp_web_log_all` VALUES ('130', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610168');
INSERT INTO `tp_web_log_all` VALUES ('131', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610169');
INSERT INTO `tp_web_log_all` VALUES ('132', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610441');
INSERT INTO `tp_web_log_all` VALUES ('133', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:9:\"starttime\";s:16:\"2018-10-19 11:20\";s:7:\"endtime\";s:16:\"2018-10-25 11:20\";}', '1540610446');
INSERT INTO `tp_web_log_all` VALUES ('134', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540610471');
INSERT INTO `tp_web_log_all` VALUES ('135', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611028');
INSERT INTO `tp_web_log_all` VALUES ('136', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611029');
INSERT INTO `tp_web_log_all` VALUES ('137', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611052');
INSERT INTO `tp_web_log_all` VALUES ('138', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611053');
INSERT INTO `tp_web_log_all` VALUES ('139', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611053');
INSERT INTO `tp_web_log_all` VALUES ('140', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611065');
INSERT INTO `tp_web_log_all` VALUES ('141', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611077');
INSERT INTO `tp_web_log_all` VALUES ('142', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611085');
INSERT INTO `tp_web_log_all` VALUES ('143', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611085');
INSERT INTO `tp_web_log_all` VALUES ('144', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611085');
INSERT INTO `tp_web_log_all` VALUES ('145', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611116');
INSERT INTO `tp_web_log_all` VALUES ('146', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611116');
INSERT INTO `tp_web_log_all` VALUES ('147', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611135');
INSERT INTO `tp_web_log_all` VALUES ('148', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611135');
INSERT INTO `tp_web_log_all` VALUES ('149', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:3:{s:4:\"type\";s:1:\"0\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540611139');
INSERT INTO `tp_web_log_all` VALUES ('150', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:3:{s:4:\"type\";s:1:\"0\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540611313');
INSERT INTO `tp_web_log_all` VALUES ('151', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_all` VALUES ('152', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_all` VALUES ('153', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_all` VALUES ('154', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611377');
INSERT INTO `tp_web_log_all` VALUES ('155', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:3:\"123\";s:8:\"discount\";s:3:\"123\";}', '1540611382');
INSERT INTO `tp_web_log_all` VALUES ('156', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611409');
INSERT INTO `tp_web_log_all` VALUES ('157', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611410');
INSERT INTO `tp_web_log_all` VALUES ('158', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:3:\"100\";s:8:\"discount\";s:3:\"100\";}', '1540611413');
INSERT INTO `tp_web_log_all` VALUES ('159', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com//admin/activ/add', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540611413');
INSERT INTO `tp_web_log_all` VALUES ('160', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611499');
INSERT INTO `tp_web_log_all` VALUES ('161', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611499');
INSERT INTO `tp_web_log_all` VALUES ('162', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611499');
INSERT INTO `tp_web_log_all` VALUES ('163', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611500');
INSERT INTO `tp_web_log_all` VALUES ('164', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611627');
INSERT INTO `tp_web_log_all` VALUES ('165', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611628');
INSERT INTO `tp_web_log_all` VALUES ('166', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611628');
INSERT INTO `tp_web_log_all` VALUES ('167', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611629');
INSERT INTO `tp_web_log_all` VALUES ('168', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611629');
INSERT INTO `tp_web_log_all` VALUES ('169', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611629');
INSERT INTO `tp_web_log_all` VALUES ('170', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611679');
INSERT INTO `tp_web_log_all` VALUES ('171', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611680');
INSERT INTO `tp_web_log_all` VALUES ('172', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611680');
INSERT INTO `tp_web_log_all` VALUES ('173', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540611698');
INSERT INTO `tp_web_log_all` VALUES ('174', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540611760');
INSERT INTO `tp_web_log_all` VALUES ('175', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540611780');
INSERT INTO `tp_web_log_all` VALUES ('176', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612000');
INSERT INTO `tp_web_log_all` VALUES ('177', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612000');
INSERT INTO `tp_web_log_all` VALUES ('178', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612000');
INSERT INTO `tp_web_log_all` VALUES ('179', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612001');
INSERT INTO `tp_web_log_all` VALUES ('180', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/8.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"8\";}', '1540612001');
INSERT INTO `tp_web_log_all` VALUES ('181', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612065');
INSERT INTO `tp_web_log_all` VALUES ('182', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612066');
INSERT INTO `tp_web_log_all` VALUES ('183', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'GET', 'a:0:{}', '1540612067');
INSERT INTO `tp_web_log_all` VALUES ('184', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"2\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:2:\"20\";s:8:\"discount\";s:2:\"20\";}', '1540612073');
INSERT INTO `tp_web_log_all` VALUES ('185', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612073');
INSERT INTO `tp_web_log_all` VALUES ('186', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612078');
INSERT INTO `tp_web_log_all` VALUES ('187', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/add.html', 'admin', 'Activ', 'add', 'POST', 'a:4:{s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"1\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540612080');
INSERT INTO `tp_web_log_all` VALUES ('188', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612080');
INSERT INTO `tp_web_log_all` VALUES ('189', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612086');
INSERT INTO `tp_web_log_all` VALUES ('190', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612113');
INSERT INTO `tp_web_log_all` VALUES ('191', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612114');
INSERT INTO `tp_web_log_all` VALUES ('192', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612142');
INSERT INTO `tp_web_log_all` VALUES ('193', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit.html', 'admin', 'Activ', 'edit', 'POST', 'a:5:{s:2:\"id\";s:1:\"7\";s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"0\";s:7:\"consume\";s:1:\"1\";s:8:\"discount\";s:1:\"1\";}', '1540612143');
INSERT INTO `tp_web_log_all` VALUES ('194', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612143');
INSERT INTO `tp_web_log_all` VALUES ('195', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit/id/7.html', 'admin', 'Activ', 'edit', 'GET', 'a:1:{s:2:\"id\";s:1:\"7\";}', '1540612145');
INSERT INTO `tp_web_log_all` VALUES ('196', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/edit.html', 'admin', 'Activ', 'edit', 'POST', 'a:5:{s:2:\"id\";s:1:\"7\";s:4:\"type\";s:1:\"1\";s:5:\"state\";s:1:\"1\";s:7:\"consume\";s:4:\"1111\";s:8:\"discount\";s:3:\"111\";}', '1540612149');
INSERT INTO `tp_web_log_all` VALUES ('197', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612149');
INSERT INTO `tp_web_log_all` VALUES ('198', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612152');
INSERT INTO `tp_web_log_all` VALUES ('199', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612152');
INSERT INTO `tp_web_log_all` VALUES ('200', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612202');
INSERT INTO `tp_web_log_all` VALUES ('201', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612203');
INSERT INTO `tp_web_log_all` VALUES ('202', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612203');
INSERT INTO `tp_web_log_all` VALUES ('203', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612203');
INSERT INTO `tp_web_log_all` VALUES ('204', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612204');
INSERT INTO `tp_web_log_all` VALUES ('205', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612204');
INSERT INTO `tp_web_log_all` VALUES ('206', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612204');
INSERT INTO `tp_web_log_all` VALUES ('207', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612205');
INSERT INTO `tp_web_log_all` VALUES ('208', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612206');
INSERT INTO `tp_web_log_all` VALUES ('209', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612206');
INSERT INTO `tp_web_log_all` VALUES ('210', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540612206');
INSERT INTO `tp_web_log_all` VALUES ('211', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_all` VALUES ('212', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_all` VALUES ('213', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_all` VALUES ('214', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_all` VALUES ('215', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612207');
INSERT INTO `tp_web_log_all` VALUES ('216', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612359');
INSERT INTO `tp_web_log_all` VALUES ('217', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612359');
INSERT INTO `tp_web_log_all` VALUES ('218', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612360');
INSERT INTO `tp_web_log_all` VALUES ('219', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612360');
INSERT INTO `tp_web_log_all` VALUES ('220', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612427');
INSERT INTO `tp_web_log_all` VALUES ('221', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612445');
INSERT INTO `tp_web_log_all` VALUES ('222', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612446');
INSERT INTO `tp_web_log_all` VALUES ('223', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612446');
INSERT INTO `tp_web_log_all` VALUES ('224', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612446');
INSERT INTO `tp_web_log_all` VALUES ('225', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_all` VALUES ('226', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_all` VALUES ('227', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_all` VALUES ('228', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612447');
INSERT INTO `tp_web_log_all` VALUES ('229', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612491');
INSERT INTO `tp_web_log_all` VALUES ('230', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612491');
INSERT INTO `tp_web_log_all` VALUES ('231', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612491');
INSERT INTO `tp_web_log_all` VALUES ('232', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612492');
INSERT INTO `tp_web_log_all` VALUES ('233', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612492');
INSERT INTO `tp_web_log_all` VALUES ('234', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612500');
INSERT INTO `tp_web_log_all` VALUES ('235', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612501');
INSERT INTO `tp_web_log_all` VALUES ('236', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612501');
INSERT INTO `tp_web_log_all` VALUES ('237', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612501');
INSERT INTO `tp_web_log_all` VALUES ('238', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612507');
INSERT INTO `tp_web_log_all` VALUES ('239', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612507');
INSERT INTO `tp_web_log_all` VALUES ('240', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612507');
INSERT INTO `tp_web_log_all` VALUES ('241', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612515');
INSERT INTO `tp_web_log_all` VALUES ('242', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540612516');
INSERT INTO `tp_web_log_all` VALUES ('243', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540612542');
INSERT INTO `tp_web_log_all` VALUES ('244', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540618251');
INSERT INTO `tp_web_log_all` VALUES ('245', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/activ/index.html', 'admin', 'Activ', 'index', 'GET', 'a:0:{}', '1540618262');
INSERT INTO `tp_web_log_all` VALUES ('246', '1', '127.0.0.1', '本机地址 本机地址  ', 'Windows 10', 'Chrome(71.0.3551.3)', 'http://www.jifei.com/admin/combination/index.html', 'admin', 'Combination', 'index', 'GET', 'a:0:{}', '1540618262');

-- ----------------------------
-- Procedure structure for amount
-- ----------------------------
DROP PROCEDURE IF EXISTS `amount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `amount`(IN `_id` int,IN `_money` int,IN `_uid` int)
BEGIN
	#Routine body goes here...
	SET @money = (SELECT money from tp_user where id = _uid);

	SET @ordermoney = _money;

	if @money >= @ordermoney THEN
     UPDATE tp_user set money  = money - @ordermoney where id = _uid;
		# 更改订单状态
			UPDATE tp_bells_list set state = 0 where id  = _id;
    SET @state = 1;
		SELECT  @state;
	ELSE
	SET @state = 2;
		SELECT  @state;
	END if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sl_bells_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `sl_bells_id`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sl_bells_id`(IN `_starttime` varchar(255),IN `_endtime` varchar(255),IN `_son_id` varchar(255))
BEGIN
	#Routine body goes here...
	set @id = (SELECT id from tp_bells where createtime >=_starttime and createtime < _endtime AND son_id = _son_id);
	SELECT @id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sl_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `sl_user`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sl_user`(IN `_mobile` varchar(255))
BEGIN
	#Routine body goes here...
	set @id = (SELECT id from tp_user where mobile = _mobile);
  SELECT @id;
END
;;
DELIMITER ;
