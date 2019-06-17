/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : daijiaxiang

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-04-22 11:05:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for djx_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_access`;
CREATE TABLE `djx_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` varchar(16) NOT NULL DEFAULT '' COMMENT '授权节点id',
  `tag` varchar(16) NOT NULL DEFAULT '' COMMENT '分组标签'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

-- ----------------------------
-- Records of djx_admin_access
-- ----------------------------

-- ----------------------------
-- Table structure for djx_admin_action
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_action`;
CREATE TABLE `djx_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

-- ----------------------------
-- Records of djx_admin_action
-- ----------------------------
INSERT INTO `djx_admin_action` VALUES ('1', 'user', 'user_add', '添加用户', '添加用户', '', '[user|get_nickname] 添加了用户：[record|get_nickname]', '1', '1480156399', '1480163853');
INSERT INTO `djx_admin_action` VALUES ('2', 'user', 'user_edit', '编辑用户', '编辑用户', '', '[user|get_nickname] 编辑了用户：[details]', '1', '1480164578', '1480297748');
INSERT INTO `djx_admin_action` VALUES ('3', 'user', 'user_delete', '删除用户', '删除用户', '', '[user|get_nickname] 删除了用户：[details]', '1', '1480168582', '1480168616');
INSERT INTO `djx_admin_action` VALUES ('4', 'user', 'user_enable', '启用用户', '启用用户', '', '[user|get_nickname] 启用了用户：[details]', '1', '1480169185', '1480169185');
INSERT INTO `djx_admin_action` VALUES ('5', 'user', 'user_disable', '禁用用户', '禁用用户', '', '[user|get_nickname] 禁用了用户：[details]', '1', '1480169214', '1480170581');
INSERT INTO `djx_admin_action` VALUES ('6', 'user', 'user_access', '用户授权', '用户授权', '', '[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]', '1', '1480221441', '1480221563');
INSERT INTO `djx_admin_action` VALUES ('7', 'user', 'role_add', '添加角色', '添加角色', '', '[user|get_nickname] 添加了角色：[details]', '1', '1480251473', '1480251473');
INSERT INTO `djx_admin_action` VALUES ('8', 'user', 'role_edit', '编辑角色', '编辑角色', '', '[user|get_nickname] 编辑了角色：[details]', '1', '1480252369', '1480252369');
INSERT INTO `djx_admin_action` VALUES ('9', 'user', 'role_delete', '删除角色', '删除角色', '', '[user|get_nickname] 删除了角色：[details]', '1', '1480252580', '1480252580');
INSERT INTO `djx_admin_action` VALUES ('10', 'user', 'role_enable', '启用角色', '启用角色', '', '[user|get_nickname] 启用了角色：[details]', '1', '1480252620', '1480252620');
INSERT INTO `djx_admin_action` VALUES ('11', 'user', 'role_disable', '禁用角色', '禁用角色', '', '[user|get_nickname] 禁用了角色：[details]', '1', '1480252651', '1480252651');
INSERT INTO `djx_admin_action` VALUES ('12', 'user', 'attachment_enable', '启用附件', '启用附件', '', '[user|get_nickname] 启用了附件：附件ID([details])', '1', '1480253226', '1480253332');
INSERT INTO `djx_admin_action` VALUES ('13', 'user', 'attachment_disable', '禁用附件', '禁用附件', '', '[user|get_nickname] 禁用了附件：附件ID([details])', '1', '1480253267', '1480253340');
INSERT INTO `djx_admin_action` VALUES ('14', 'user', 'attachment_delete', '删除附件', '删除附件', '', '[user|get_nickname] 删除了附件：附件ID([details])', '1', '1480253323', '1480253323');
INSERT INTO `djx_admin_action` VALUES ('15', 'admin', 'config_add', '添加配置', '添加配置', '', '[user|get_nickname] 添加了配置，[details]', '1', '1480296196', '1480296196');
INSERT INTO `djx_admin_action` VALUES ('16', 'admin', 'config_edit', '编辑配置', '编辑配置', '', '[user|get_nickname] 编辑了配置：[details]', '1', '1480296960', '1480296960');
INSERT INTO `djx_admin_action` VALUES ('17', 'admin', 'config_enable', '启用配置', '启用配置', '', '[user|get_nickname] 启用了配置：[details]', '1', '1480298479', '1480298479');
INSERT INTO `djx_admin_action` VALUES ('18', 'admin', 'config_disable', '禁用配置', '禁用配置', '', '[user|get_nickname] 禁用了配置：[details]', '1', '1480298506', '1480298506');
INSERT INTO `djx_admin_action` VALUES ('19', 'admin', 'config_delete', '删除配置', '删除配置', '', '[user|get_nickname] 删除了配置：[details]', '1', '1480298532', '1480298532');
INSERT INTO `djx_admin_action` VALUES ('20', 'admin', 'database_export', '备份数据库', '备份数据库', '', '[user|get_nickname] 备份了数据库：[details]', '1', '1480298946', '1480298946');
INSERT INTO `djx_admin_action` VALUES ('21', 'admin', 'database_import', '还原数据库', '还原数据库', '', '[user|get_nickname] 还原了数据库：[details]', '1', '1480301990', '1480302022');
INSERT INTO `djx_admin_action` VALUES ('22', 'admin', 'database_optimize', '优化数据表', '优化数据表', '', '[user|get_nickname] 优化了数据表：[details]', '1', '1480302616', '1480302616');
INSERT INTO `djx_admin_action` VALUES ('23', 'admin', 'database_repair', '修复数据表', '修复数据表', '', '[user|get_nickname] 修复了数据表：[details]', '1', '1480302798', '1480302798');
INSERT INTO `djx_admin_action` VALUES ('24', 'admin', 'database_backup_delete', '删除数据库备份', '删除数据库备份', '', '[user|get_nickname] 删除了数据库备份：[details]', '1', '1480302870', '1480302870');
INSERT INTO `djx_admin_action` VALUES ('25', 'admin', 'hook_add', '添加钩子', '添加钩子', '', '[user|get_nickname] 添加了钩子：[details]', '1', '1480303198', '1480303198');
INSERT INTO `djx_admin_action` VALUES ('26', 'admin', 'hook_edit', '编辑钩子', '编辑钩子', '', '[user|get_nickname] 编辑了钩子：[details]', '1', '1480303229', '1480303229');
INSERT INTO `djx_admin_action` VALUES ('27', 'admin', 'hook_delete', '删除钩子', '删除钩子', '', '[user|get_nickname] 删除了钩子：[details]', '1', '1480303264', '1480303264');
INSERT INTO `djx_admin_action` VALUES ('28', 'admin', 'hook_enable', '启用钩子', '启用钩子', '', '[user|get_nickname] 启用了钩子：[details]', '1', '1480303294', '1480303294');
INSERT INTO `djx_admin_action` VALUES ('29', 'admin', 'hook_disable', '禁用钩子', '禁用钩子', '', '[user|get_nickname] 禁用了钩子：[details]', '1', '1480303409', '1480303409');
INSERT INTO `djx_admin_action` VALUES ('30', 'admin', 'menu_add', '添加节点', '添加节点', '', '[user|get_nickname] 添加了节点：[details]', '1', '1480305468', '1480305468');
INSERT INTO `djx_admin_action` VALUES ('31', 'admin', 'menu_edit', '编辑节点', '编辑节点', '', '[user|get_nickname] 编辑了节点：[details]', '1', '1480305513', '1480305513');
INSERT INTO `djx_admin_action` VALUES ('32', 'admin', 'menu_delete', '删除节点', '删除节点', '', '[user|get_nickname] 删除了节点：[details]', '1', '1480305562', '1480305562');
INSERT INTO `djx_admin_action` VALUES ('33', 'admin', 'menu_enable', '启用节点', '启用节点', '', '[user|get_nickname] 启用了节点：[details]', '1', '1480305630', '1480305630');
INSERT INTO `djx_admin_action` VALUES ('34', 'admin', 'menu_disable', '禁用节点', '禁用节点', '', '[user|get_nickname] 禁用了节点：[details]', '1', '1480305659', '1480305659');
INSERT INTO `djx_admin_action` VALUES ('35', 'admin', 'module_install', '安装模块', '安装模块', '', '[user|get_nickname] 安装了模块：[details]', '1', '1480307558', '1480307558');
INSERT INTO `djx_admin_action` VALUES ('36', 'admin', 'module_uninstall', '卸载模块', '卸载模块', '', '[user|get_nickname] 卸载了模块：[details]', '1', '1480307588', '1480307588');
INSERT INTO `djx_admin_action` VALUES ('37', 'admin', 'module_enable', '启用模块', '启用模块', '', '[user|get_nickname] 启用了模块：[details]', '1', '1480307618', '1480307618');
INSERT INTO `djx_admin_action` VALUES ('38', 'admin', 'module_disable', '禁用模块', '禁用模块', '', '[user|get_nickname] 禁用了模块：[details]', '1', '1480307653', '1480307653');
INSERT INTO `djx_admin_action` VALUES ('39', 'admin', 'module_export', '导出模块', '导出模块', '', '[user|get_nickname] 导出了模块：[details]', '1', '1480307682', '1480307682');
INSERT INTO `djx_admin_action` VALUES ('40', 'admin', 'packet_install', '安装数据包', '安装数据包', '', '[user|get_nickname] 安装了数据包：[details]', '1', '1480308342', '1480308342');
INSERT INTO `djx_admin_action` VALUES ('41', 'admin', 'packet_uninstall', '卸载数据包', '卸载数据包', '', '[user|get_nickname] 卸载了数据包：[details]', '1', '1480308372', '1480308372');
INSERT INTO `djx_admin_action` VALUES ('42', 'admin', 'system_config_update', '更新系统设置', '更新系统设置', '', '[user|get_nickname] 更新了系统设置：[details]', '1', '1480309555', '1480309642');

-- ----------------------------
-- Table structure for djx_admin_attachment
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_attachment`;
CREATE TABLE `djx_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(128) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(8) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `width` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片高度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of djx_admin_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for djx_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_config`;
CREATE TABLE `djx_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of djx_admin_config
-- ----------------------------
INSERT INTO `djx_admin_config` VALUES ('1', 'web_site_status', '站点开关', 'base', 'switch', '1', '', '站点关闭后将不能访问，后台可正常登录', '', '', '', '', '', '2', '', '', '', '', '1475240395', '1477403914', '1', '1');
INSERT INTO `djx_admin_config` VALUES ('2', 'web_site_title', '站点标题', 'base', 'text', '海豚PHP', '', '调用方式：<code>config(\'web_site_title\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240646', '1477710341', '2', '1');
INSERT INTO `djx_admin_config` VALUES ('3', 'web_site_slogan', '站点标语', 'base', 'text', '海豚PHP，极简、极速、极致', '', '站点口号，调用方式：<code>config(\'web_site_slogan\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475240994', '1477710357', '3', '1');
INSERT INTO `djx_admin_config` VALUES ('4', 'web_site_logo', '站点LOGO', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241067', '1475241067', '4', '1');
INSERT INTO `djx_admin_config` VALUES ('5', 'web_site_description', '站点描述', 'base', 'textarea', '', '', '网站描述，有利于搜索引擎抓取相关信息', '', '', '', '', '', '2', '', '', '', '', '1475241186', '1475241186', '6', '1');
INSERT INTO `djx_admin_config` VALUES ('6', 'web_site_keywords', '站点关键词', 'base', 'text', '海豚PHP、PHP开发框架、后台框架', '', '网站搜索引擎关键字', '', '', '', '', '', '2', '', '', '', '', '1475241328', '1475241328', '7', '1');
INSERT INTO `djx_admin_config` VALUES ('7', 'web_site_copyright', '版权信息', 'base', 'text', 'Copyright © 2015-2017 DolphinPHP All rights reserved.', '', '调用方式：<code>config(\'web_site_copyright\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241416', '1477710383', '8', '1');
INSERT INTO `djx_admin_config` VALUES ('8', 'web_site_icp', '备案信息', 'base', 'text', '', '', '调用方式：<code>config(\'web_site_icp\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241441', '1477710441', '9', '1');
INSERT INTO `djx_admin_config` VALUES ('9', 'web_site_statistics', '站点统计', 'base', 'textarea', '', '', '网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>', '', '', '', '', '', '2', '', '', '', '', '1475241498', '1477710455', '10', '1');
INSERT INTO `djx_admin_config` VALUES ('10', 'config_group', '配置分组', 'system', 'array', 'base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241716', '1477649446', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('11', 'form_item_type', '配置类型', 'system', 'array', 'text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间', '', '', '', '', '', '', '', '2', '', '', '', '', '1475241835', '1495853193', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('12', 'upload_file_size', '文件上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475241897', '1477663520', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('13', 'upload_file_ext', '允许上传的文件后缀', 'upload', 'tags', 'doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475241975', '1477649489', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('14', 'upload_image_size', '图片上传大小限制', 'upload', 'text', '0', '', '0为不限制大小，单位：kb', '', '', '', '', '', '2', '', '', '', '', '1475242015', '1477663529', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('15', 'upload_image_ext', '允许上传的图片后缀', 'upload', 'tags', 'gif,jpg,jpeg,bmp,png', '', '多个后缀用逗号隔开，不填写则不限制类型', '', '', '', '', '', '2', '', '', '', '', '1475242056', '1477649506', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('16', 'list_rows', '分页数量', 'system', 'number', '20', '', '每页的记录数', '', '', '', '', '', '2', '', '', '', '', '1475242066', '1476074507', '101', '1');
INSERT INTO `djx_admin_config` VALUES ('17', 'system_color', '后台配色方案', 'system', 'radio', 'default', 'default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth', '', '', '', '', '', '', '2', '', '', '', '', '1475250066', '1477316689', '102', '1');
INSERT INTO `djx_admin_config` VALUES ('18', 'develop_mode', '开发模式', 'develop', 'radio', '1', '0:关闭\r\n1:开启', '', '', '', '', '', '', '2', '', '', '', '', '1476864205', '1476864231', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('19', 'app_trace', '显示页面Trace', 'develop', 'radio', '0', '0:否\r\n1:是', '', '', '', '', '', '', '2', '', '', '', '', '1476866355', '1476866355', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('21', 'data_backup_path', '数据库备份根路径', 'database', 'text', '../data/', '', '路径必须以 / 结尾', '', '', '', '', '', '2', '', '', '', '', '1477017745', '1477018467', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('22', 'data_backup_part_size', '数据库备份卷大小', 'database', 'text', '20971520', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '', '', '', '', '2', '', '', '', '', '1477017886', '1477017886', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('23', 'data_backup_compress', '数据库备份文件是否启用压缩', 'database', 'radio', '1', '0:否\r\n1:是', '压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数', '', '', '', '', '', '2', '', '', '', '', '1477017978', '1477018172', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('24', 'data_backup_compress_level', '数据库备份文件压缩级别', 'database', 'radio', '9', '1:最低\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '', '', '', '', '2', '', '', '', '', '1477018083', '1477018083', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('25', 'top_menu_max', '顶部导航模块数量', 'system', 'text', '10', '', '设置顶部导航默认显示的模块数量', '', '', '', '', '', '2', '', '', '', '', '1477579289', '1477579289', '103', '1');
INSERT INTO `djx_admin_config` VALUES ('26', 'web_site_logo_text', '站点LOGO文字', 'base', 'image', '', '', '', '', '', '', '', '', '2', '', '', '', '', '1477620643', '1477620643', '5', '1');
INSERT INTO `djx_admin_config` VALUES ('27', 'upload_image_thumb', '缩略图尺寸', 'upload', 'text', '', '', '不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号', '', '', '', '', '', '2', '', '', '', '', '1477644150', '1477649513', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('28', 'upload_image_thumb_type', '缩略图裁剪类型', 'upload', 'radio', '1', '1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放', '该项配置只有在启用生成缩略图时才生效', '', '', '', '', '', '2', '', '', '', '', '1477646271', '1477649521', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('29', 'upload_thumb_water', '添加水印', 'upload', 'switch', '0', '', '', '', '', '', '', '', '2', '', '', '', '', '1477649648', '1477649648', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('30', 'upload_thumb_water_pic', '水印图片', 'upload', 'image', '', '', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656390', '1477656390', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('31', 'upload_thumb_water_position', '水印位置', 'upload', 'radio', '9', '1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角', '只有开启水印功能才生效', '', '', '', '', '', '2', '', '', '', '', '1477656528', '1477656528', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('32', 'upload_thumb_water_alpha', '水印透明度', 'upload', 'text', '50', '', '请输入0~100之间的数字，数字越小，透明度越高', '', '', '', '', '', '2', '', '', '', '', '1477656714', '1477661309', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('33', 'wipe_cache_type', '清除缓存类型', 'system', 'checkbox', 'TEMP_PATH', 'TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存', '清除缓存时，要删除的缓存类型', '', '', '', '', '', '2', '', '', '', '', '1477727305', '1477727305', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('34', 'captcha_signin', '后台验证码开关', 'system', 'switch', '0', '', '后台登录时是否需要验证码', '', '', '', '', '', '2', '', '', '', '', '1478771958', '1478771958', '99', '1');
INSERT INTO `djx_admin_config` VALUES ('35', 'home_default_module', '前台默认模块', 'system', 'select', 'index', '', '前台默认访问的模块，该模块必须有Index控制器和index方法', '', '', '', '', '', '0', '', '', '', '', '1486714723', '1486715620', '104', '1');
INSERT INTO `djx_admin_config` VALUES ('36', 'minify_status', '开启minify', 'system', 'switch', '0', '', '开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭', '', '', '', '', '', '0', '', '', '', '', '1487035843', '1487035843', '99', '1');
INSERT INTO `djx_admin_config` VALUES ('37', 'upload_driver', '上传驱动', 'upload', 'radio', 'local', 'local:本地', '图片或文件上传驱动', '', '', '', '', '', '0', '', '', '', '', '1501488567', '1501490821', '100', '1');
INSERT INTO `djx_admin_config` VALUES ('38', 'system_log', '系统日志', 'system', 'switch', '1', '', '是否开启系统日志功能', '', '', '', '', '', '0', '', '', '', '', '1512635391', '1512635391', '99', '1');
INSERT INTO `djx_admin_config` VALUES ('39', 'asset_version', '资源版本号', 'develop', 'text', '20180327', '', '可通过修改版号强制用户更新静态文件', '', '', '', '', '', '0', '', '', '', '', '1522143239', '1522143239', '100', '1');

-- ----------------------------
-- Table structure for djx_admin_hook
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_hook`;
CREATE TABLE `djx_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of djx_admin_hook
-- ----------------------------
INSERT INTO `djx_admin_hook` VALUES ('1', 'admin_index', '', '后台首页', '1', '1468174214', '1477757518', '1');
INSERT INTO `djx_admin_hook` VALUES ('2', 'plugin_index_tab_list', '', '插件扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `djx_admin_hook` VALUES ('3', 'module_index_tab_list', '', '模块扩展tab钩子', '1', '1468174214', '1468174214', '1');
INSERT INTO `djx_admin_hook` VALUES ('4', 'page_tips', '', '每个页面的提示', '1', '1468174214', '1468174214', '1');
INSERT INTO `djx_admin_hook` VALUES ('5', 'signin_footer', '', '登录页面底部钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `djx_admin_hook` VALUES ('6', 'signin_captcha', '', '登录页面验证码钩子', '1', '1479269315', '1479269315', '1');
INSERT INTO `djx_admin_hook` VALUES ('7', 'signin', '', '登录控制器钩子', '1', '1479386875', '1479386875', '1');
INSERT INTO `djx_admin_hook` VALUES ('8', 'upload_attachment', '', '附件上传钩子', '1', '1501493808', '1501493808', '1');
INSERT INTO `djx_admin_hook` VALUES ('9', 'page_plugin_js', '', '页面插件js钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('10', 'page_plugin_css', '', '页面插件css钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('11', 'signin_sso', '', '单点登录钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('12', 'signout_sso', '', '单点退出钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('13', 'user_add', '', '添加用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('14', 'user_edit', '', '编辑用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('15', 'user_delete', '', '删除用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('16', 'user_enable', '', '启用用户钩子', '1', '1503633591', '1503633591', '1');
INSERT INTO `djx_admin_hook` VALUES ('17', 'user_disable', '', '禁用用户钩子', '1', '1503633591', '1503633591', '1');

-- ----------------------------
-- Table structure for djx_admin_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_hook_plugin`;
CREATE TABLE `djx_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

-- ----------------------------
-- Records of djx_admin_hook_plugin
-- ----------------------------
INSERT INTO `djx_admin_hook_plugin` VALUES ('1', 'admin_index', 'SystemInfo', '1477757503', '1477757503', '1', '1');
INSERT INTO `djx_admin_hook_plugin` VALUES ('2', 'admin_index', 'DevTeam', '1477755780', '1477755780', '2', '1');

-- ----------------------------
-- Table structure for djx_admin_icon
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_icon`;
CREATE TABLE `djx_admin_icon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '图标名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图标css地址',
  `prefix` varchar(32) NOT NULL DEFAULT '' COMMENT '图标前缀',
  `font_family` varchar(32) NOT NULL DEFAULT '' COMMENT '字体名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图标表';

-- ----------------------------
-- Records of djx_admin_icon
-- ----------------------------

-- ----------------------------
-- Table structure for djx_admin_icon_list
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_icon_list`;
CREATE TABLE `djx_admin_icon_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属图标id',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '图标标题',
  `class` varchar(255) NOT NULL DEFAULT '' COMMENT '图标类名',
  `code` varchar(128) NOT NULL DEFAULT '' COMMENT '图标关键词',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='详细图标列表';

-- ----------------------------
-- Records of djx_admin_icon_list
-- ----------------------------

-- ----------------------------
-- Table structure for djx_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_log`;
CREATE TABLE `djx_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

-- ----------------------------
-- Records of djx_admin_log
-- ----------------------------
INSERT INTO `djx_admin_log` VALUES ('1', '35', '1', '2130706433', 'admin_module', '0', '超级管理员 安装了模块：戴家巷', '1', '1555253054');
INSERT INTO `djx_admin_log` VALUES ('2', '30', '1', '2130706433', 'admin_menu', '236', '超级管理员 添加了节点：所属模块(djxadmin),所属节点ID(0),节点标题(戴家巷导视图管理),节点链接(djxadmin/index/index)', '1', '1555253380');
INSERT INTO `djx_admin_log` VALUES ('3', '30', '1', '2130706433', 'admin_menu', '243', '超级管理员 添加了节点：所属模块(djxadmin),所属节点ID(236),节点标题(景区列表),节点链接(djxadmin/index/index)', '1', '1555253635');
INSERT INTO `djx_admin_log` VALUES ('4', '32', '1', '2130706433', 'admin_menu', '238', '超级管理员 删除了节点：节点ID(238),节点标题(编辑),节点链接(djxadmin/index/edit)', '1', '1555254656');
INSERT INTO `djx_admin_log` VALUES ('5', '32', '1', '2130706433', 'admin_menu', '240', '超级管理员 删除了节点：节点ID(240),节点标题(启用),节点链接(djxadmin/index/enable)', '1', '1555254661');
INSERT INTO `djx_admin_log` VALUES ('6', '32', '1', '2130706433', 'admin_menu', '239', '超级管理员 删除了节点：节点ID(239),节点标题(删除),节点链接(djxadmin/index/delete)', '1', '1555254665');
INSERT INTO `djx_admin_log` VALUES ('7', '32', '1', '2130706433', 'admin_menu', '242', '超级管理员 删除了节点：节点ID(242),节点标题(快速编辑),节点链接(djxadmin/index/quickedit)', '1', '1555254670');
INSERT INTO `djx_admin_log` VALUES ('8', '32', '1', '2130706433', 'admin_menu', '241', '超级管理员 删除了节点：节点ID(241),节点标题(禁用),节点链接(djxadmin/index/disable)', '1', '1555254675');
INSERT INTO `djx_admin_log` VALUES ('9', '31', '1', '2130706433', 'admin_menu', '236', '超级管理员 编辑了节点：节点ID(236)', '1', '1555254861');

-- ----------------------------
-- Table structure for djx_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_menu`;
CREATE TABLE `djx_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of djx_admin_menu
-- ----------------------------
INSERT INTO `djx_admin_menu` VALUES ('1', '0', 'admin', '首页', 'fa fa-fw fa-home', 'module_admin', 'admin/index/index', '_self', '0', '1467617722', '1555255705', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('2', '1', 'admin', '快捷操作', 'fa fa-fw fa-folder-open-o', 'module_admin', '', '_self', '0', '1467618170', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('3', '2', 'admin', '清空缓存', 'fa fa-fw fa-trash-o', 'module_admin', 'admin/index/wipecache', '_self', '0', '1467618273', '1489049773', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('4', '0', 'admin', '系统', 'fa fa-fw fa-gear', 'module_admin', 'admin/system/index', '_self', '0', '1467618361', '1555255705', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('5', '4', 'admin', '系统功能', 'si si-wrench', 'module_admin', '', '_self', '0', '1467618441', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('6', '5', 'admin', '系统设置', 'fa fa-fw fa-wrench', 'module_admin', 'admin/system/index', '_self', '0', '1467618490', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('7', '5', 'admin', '配置管理', 'fa fa-fw fa-gears', 'module_admin', 'admin/config/index', '_self', '0', '1467618618', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('8', '7', 'admin', '新增', '', 'module_admin', 'admin/config/add', '_self', '0', '1467618648', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('9', '7', 'admin', '编辑', '', 'module_admin', 'admin/config/edit', '_self', '0', '1467619566', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('10', '7', 'admin', '删除', '', 'module_admin', 'admin/config/delete', '_self', '0', '1467619583', '1477710695', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('11', '7', 'admin', '启用', '', 'module_admin', 'admin/config/enable', '_self', '0', '1467619609', '1477710695', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('12', '7', 'admin', '禁用', '', 'module_admin', 'admin/config/disable', '_self', '0', '1467619637', '1477710695', '5', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('13', '5', 'admin', '节点管理', 'fa fa-fw fa-bars', 'module_admin', 'admin/menu/index', '_self', '0', '1467619882', '1477710695', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('14', '13', 'admin', '新增', '', 'module_admin', 'admin/menu/add', '_self', '0', '1467619902', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('15', '13', 'admin', '编辑', '', 'module_admin', 'admin/menu/edit', '_self', '0', '1467620331', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('16', '13', 'admin', '删除', '', 'module_admin', 'admin/menu/delete', '_self', '0', '1467620363', '1477710695', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('17', '13', 'admin', '启用', '', 'module_admin', 'admin/menu/enable', '_self', '0', '1467620386', '1477710695', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('18', '13', 'admin', '禁用', '', 'module_admin', 'admin/menu/disable', '_self', '0', '1467620404', '1477710695', '5', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('19', '68', 'user', '权限管理', 'fa fa-fw fa-key', 'module_admin', '', '_self', '0', '1467688065', '1477710702', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('20', '19', 'user', '用户管理', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1467688137', '1477710702', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('21', '20', 'user', '新增', '', 'module_admin', 'user/index/add', '_self', '0', '1467688177', '1477710702', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('22', '20', 'user', '编辑', '', 'module_admin', 'user/index/edit', '_self', '0', '1467688202', '1477710702', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('23', '20', 'user', '删除', '', 'module_admin', 'user/index/delete', '_self', '0', '1467688219', '1477710702', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('24', '20', 'user', '启用', '', 'module_admin', 'user/index/enable', '_self', '0', '1467688238', '1477710702', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('25', '20', 'user', '禁用', '', 'module_admin', 'user/index/disable', '_self', '0', '1467688256', '1477710702', '5', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('211', '64', 'admin', '日志详情', '', 'module_admin', 'admin/log/details', '_self', '0', '1480299320', '1480299320', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('32', '4', 'admin', '扩展中心', 'si si-social-dropbox', 'module_admin', '', '_self', '0', '1467688853', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('33', '32', 'admin', '模块管理', 'fa fa-fw fa-th-large', 'module_admin', 'admin/module/index', '_self', '0', '1467689008', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('34', '33', 'admin', '导入', '', 'module_admin', 'admin/module/import', '_self', '0', '1467689153', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('35', '33', 'admin', '导出', '', 'module_admin', 'admin/module/export', '_self', '0', '1467689173', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('36', '33', 'admin', '安装', '', 'module_admin', 'admin/module/install', '_self', '0', '1467689192', '1477710695', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('37', '33', 'admin', '卸载', '', 'module_admin', 'admin/module/uninstall', '_self', '0', '1467689241', '1477710695', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('38', '33', 'admin', '启用', '', 'module_admin', 'admin/module/enable', '_self', '0', '1467689294', '1477710695', '5', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('39', '33', 'admin', '禁用', '', 'module_admin', 'admin/module/disable', '_self', '0', '1467689312', '1477710695', '6', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('40', '33', 'admin', '更新', '', 'module_admin', 'admin/module/update', '_self', '0', '1467689341', '1477710695', '7', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('41', '32', 'admin', '插件管理', 'fa fa-fw fa-puzzle-piece', 'module_admin', 'admin/plugin/index', '_self', '0', '1467689527', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('42', '41', 'admin', '导入', '', 'module_admin', 'admin/plugin/import', '_self', '0', '1467689650', '1477710695', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('43', '41', 'admin', '导出', '', 'module_admin', 'admin/plugin/export', '_self', '0', '1467689665', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('44', '41', 'admin', '安装', '', 'module_admin', 'admin/plugin/install', '_self', '0', '1467689680', '1477710695', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('45', '41', 'admin', '卸载', '', 'module_admin', 'admin/plugin/uninstall', '_self', '0', '1467689700', '1477710695', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('46', '41', 'admin', '启用', '', 'module_admin', 'admin/plugin/enable', '_self', '0', '1467689730', '1477710695', '5', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('47', '41', 'admin', '禁用', '', 'module_admin', 'admin/plugin/disable', '_self', '0', '1467689747', '1477710695', '6', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('48', '41', 'admin', '设置', '', 'module_admin', 'admin/plugin/config', '_self', '0', '1467689789', '1477710695', '7', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('49', '41', 'admin', '管理', '', 'module_admin', 'admin/plugin/manage', '_self', '0', '1467689846', '1477710695', '8', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('50', '5', 'admin', '附件管理', 'fa fa-fw fa-cloud-upload', 'module_admin', 'admin/attachment/index', '_self', '0', '1467690161', '1477710695', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('51', '70', 'admin', '文件上传', '', 'module_admin', 'admin/attachment/upload', '_self', '0', '1467690240', '1489049773', '1', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('52', '50', 'admin', '下载', '', 'module_admin', 'admin/attachment/download', '_self', '0', '1467690334', '1477710695', '2', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('53', '50', 'admin', '启用', '', 'module_admin', 'admin/attachment/enable', '_self', '0', '1467690352', '1477710695', '3', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('54', '50', 'admin', '禁用', '', 'module_admin', 'admin/attachment/disable', '_self', '0', '1467690369', '1477710695', '4', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('55', '50', 'admin', '删除', '', 'module_admin', 'admin/attachment/delete', '_self', '0', '1467690396', '1477710695', '5', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('56', '41', 'admin', '删除', '', 'module_admin', 'admin/plugin/delete', '_self', '0', '1467858065', '1477710695', '11', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('57', '41', 'admin', '编辑', '', 'module_admin', 'admin/plugin/edit', '_self', '0', '1467858092', '1477710695', '10', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('60', '41', 'admin', '新增', '', 'module_admin', 'admin/plugin/add', '_self', '0', '1467858421', '1477710695', '9', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('61', '41', 'admin', '执行', '', 'module_admin', 'admin/plugin/execute', '_self', '0', '1467879016', '1477710695', '14', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('62', '13', 'admin', '保存', '', 'module_admin', 'admin/menu/save', '_self', '0', '1468073039', '1477710695', '6', '1', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('64', '5', 'admin', '系统日志', 'fa fa-fw fa-book', 'module_admin', 'admin/log/index', '_self', '0', '1476111944', '1477710695', '6', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('65', '5', 'admin', '数据库管理', 'fa fa-fw fa-database', 'module_admin', 'admin/database/index', '_self', '0', '1476111992', '1477710695', '8', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('66', '32', 'admin', '数据包管理', 'fa fa-fw fa-database', 'module_admin', 'admin/packet/index', '_self', '0', '1476112326', '1477710695', '4', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('67', '19', 'user', '角色管理', 'fa fa-fw fa-users', 'module_admin', 'user/role/index', '_self', '0', '1476113025', '1477710702', '3', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('68', '0', 'user', '用户', 'fa fa-fw fa-user', 'module_admin', 'user/index/index', '_self', '0', '1476193348', '1555255705', '4', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('69', '32', 'admin', '钩子管理', 'fa fa-fw fa-anchor', 'module_admin', 'admin/hook/index', '_self', '0', '1476236193', '1477710695', '3', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('70', '2', 'admin', '后台首页', 'fa fa-fw fa-tachometer', 'module_admin', 'admin/index/index', '_self', '0', '1476237472', '1489049773', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('71', '67', 'user', '新增', '', 'module_admin', 'user/role/add', '_self', '0', '1476256935', '1477710702', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('72', '67', 'user', '编辑', '', 'module_admin', 'user/role/edit', '_self', '0', '1476256968', '1477710702', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('73', '67', 'user', '删除', '', 'module_admin', 'user/role/delete', '_self', '0', '1476256993', '1477710702', '3', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('74', '67', 'user', '启用', '', 'module_admin', 'user/role/enable', '_self', '0', '1476257023', '1477710702', '4', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('75', '67', 'user', '禁用', '', 'module_admin', 'user/role/disable', '_self', '0', '1476257046', '1477710702', '5', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('76', '20', 'user', '授权', '', 'module_admin', 'user/index/access', '_self', '0', '1476375187', '1477710702', '6', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('77', '69', 'admin', '新增', '', 'module_admin', 'admin/hook/add', '_self', '0', '1476668971', '1477710695', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('78', '69', 'admin', '编辑', '', 'module_admin', 'admin/hook/edit', '_self', '0', '1476669006', '1477710695', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('79', '69', 'admin', '删除', '', 'module_admin', 'admin/hook/delete', '_self', '0', '1476669375', '1477710695', '3', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('80', '69', 'admin', '启用', '', 'module_admin', 'admin/hook/enable', '_self', '0', '1476669427', '1477710695', '4', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('81', '69', 'admin', '禁用', '', 'module_admin', 'admin/hook/disable', '_self', '0', '1476669564', '1477710695', '5', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('183', '66', 'admin', '安装', '', 'module_admin', 'admin/packet/install', '_self', '0', '1476851362', '1477710695', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('184', '66', 'admin', '卸载', '', 'module_admin', 'admin/packet/uninstall', '_self', '0', '1476851382', '1477710695', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('185', '5', 'admin', '行为管理', 'fa fa-fw fa-bug', 'module_admin', 'admin/action/index', '_self', '0', '1476882441', '1477710695', '7', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('186', '185', 'admin', '新增', '', 'module_admin', 'admin/action/add', '_self', '0', '1476884439', '1477710695', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('187', '185', 'admin', '编辑', '', 'module_admin', 'admin/action/edit', '_self', '0', '1476884464', '1477710695', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('188', '185', 'admin', '启用', '', 'module_admin', 'admin/action/enable', '_self', '0', '1476884493', '1477710695', '3', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('189', '185', 'admin', '禁用', '', 'module_admin', 'admin/action/disable', '_self', '0', '1476884534', '1477710695', '4', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('190', '185', 'admin', '删除', '', 'module_admin', 'admin/action/delete', '_self', '0', '1476884551', '1477710695', '5', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('191', '65', 'admin', '备份数据库', '', 'module_admin', 'admin/database/export', '_self', '0', '1476972746', '1477710695', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('192', '65', 'admin', '还原数据库', '', 'module_admin', 'admin/database/import', '_self', '0', '1476972772', '1477710695', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('193', '65', 'admin', '优化表', '', 'module_admin', 'admin/database/optimize', '_self', '0', '1476972800', '1477710695', '3', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('194', '65', 'admin', '修复表', '', 'module_admin', 'admin/database/repair', '_self', '0', '1476972825', '1477710695', '4', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('195', '65', 'admin', '删除备份', '', 'module_admin', 'admin/database/delete', '_self', '0', '1476973457', '1477710695', '5', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('210', '41', 'admin', '快速编辑', '', 'module_admin', 'admin/plugin/quickedit', '_self', '0', '1477713981', '1477713981', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('209', '185', 'admin', '快速编辑', '', 'module_admin', 'admin/action/quickedit', '_self', '0', '1477713939', '1477713939', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('208', '7', 'admin', '快速编辑', '', 'module_admin', 'admin/config/quickedit', '_self', '0', '1477713808', '1477713808', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('207', '69', 'admin', '快速编辑', '', 'module_admin', 'admin/hook/quickedit', '_self', '0', '1477713770', '1477713770', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('212', '2', 'admin', '个人设置', 'fa fa-fw fa-user', 'module_admin', 'admin/index/profile', '_self', '0', '1489049767', '1489049773', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('213', '70', 'admin', '检查版本更新', '', 'module_admin', 'admin/index/checkupdate', '_self', '0', '1490588610', '1490588610', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('214', '68', 'user', '消息管理', 'fa fa-fw fa-comments-o', 'module_admin', '', '_self', '0', '1520492129', '1520492129', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('215', '214', 'user', '消息列表', 'fa fa-fw fa-th-list', 'module_admin', 'user/message/index', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('216', '215', 'user', '新增', '', 'module_admin', 'user/message/add', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('217', '215', 'user', '编辑', '', 'module_admin', 'user/message/edit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('218', '215', 'user', '删除', '', 'module_admin', 'user/message/delete', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('219', '215', 'user', '启用', '', 'module_admin', 'user/message/enable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('220', '215', 'user', '禁用', '', 'module_admin', 'user/message/disable', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('221', '215', 'user', '快速编辑', '', 'module_admin', 'user/message/quickedit', '_self', '0', '1520492195', '1520492195', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('222', '2', 'admin', '消息中心', 'fa fa-fw fa-comments-o', 'module_admin', 'admin/message/index', '_self', '0', '1520495992', '1520496254', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('223', '222', 'admin', '删除', '', 'module_admin', 'admin/message/delete', '_self', '0', '1520495992', '1520496263', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('224', '222', 'admin', '启用', '', 'module_admin', 'admin/message/enable', '_self', '0', '1520495992', '1520496270', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('225', '32', 'admin', '图标管理', 'fa fa-fw fa-tint', 'module_admin', 'admin/icon/index', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('226', '225', 'admin', '新增', '', 'module_admin', 'admin/icon/add', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('227', '225', 'admin', '编辑', '', 'module_admin', 'admin/icon/edit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('228', '225', 'admin', '删除', '', 'module_admin', 'admin/icon/delete', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('229', '225', 'admin', '启用', '', 'module_admin', 'admin/icon/enable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('230', '225', 'admin', '禁用', '', 'module_admin', 'admin/icon/disable', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('231', '225', 'admin', '快速编辑', '', 'module_admin', 'admin/icon/quickedit', '_self', '0', '1520908295', '1520908295', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('232', '225', 'admin', '图标列表', '', 'module_admin', 'admin/icon/items', '_self', '0', '1520923368', '1520923368', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('233', '225', 'admin', '更新图标', '', 'module_admin', 'admin/icon/reload', '_self', '0', '1520931908', '1520931908', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('234', '20', 'user', '快速编辑', '', 'module_admin', 'user/index/quickedit', '_self', '0', '1526028258', '1526028258', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('235', '67', 'user', '快速编辑', '', 'module_admin', 'user/role/quickedit', '_self', '0', '1526028282', '1526028282', '100', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('236', '0', 'djxadmin', '戴家巷导视图管理', 'fa fa-fw fa-windows', 'module_admin', 'djxadmin/index/index', '_self', '0', '1555253380', '1555255705', '1', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('237', '236', 'djxadmin', '新增', '', 'module_admin', 'djxadmin/index/add', '_self', '0', '1555253380', '1555253904', '2', '0', '1', '');
INSERT INTO `djx_admin_menu` VALUES ('243', '236', 'djxadmin', '景区列表', 'fa fa-fw fa-th-list', 'module_admin', 'djxadmin/index/index', '_self', '0', '1555253635', '1555255888', '1', '0', '1', '');

-- ----------------------------
-- Table structure for djx_admin_message
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_message`;
CREATE TABLE `djx_admin_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid_receive` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收消息的用户id',
  `uid_send` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送消息的用户id',
  `type` varchar(128) NOT NULL DEFAULT '' COMMENT '消息分类',
  `content` text NOT NULL COMMENT '消息内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息表';

-- ----------------------------
-- Records of djx_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for djx_admin_module
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_module`;
CREATE TABLE `djx_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of djx_admin_module
-- ----------------------------
INSERT INTO `djx_admin_module` VALUES ('1', 'admin', '系统', 'fa fa-fw fa-gear', '系统模块，DolphinPHP的核心模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'admin.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `djx_admin_module` VALUES ('2', 'user', '用户', 'fa fa-fw fa-user', '用户模块，DolphinPHP自带模块', 'DolphinPHP', 'http://www.dolphinphp.com', '', '', '1.0.0', 'user.dolphinphp.module', '1', '1468204902', '1468204902', '100', '1');
INSERT INTO `djx_admin_module` VALUES ('3', 'djxadmin', '戴家巷', '', '戴家巷后台管理模块', 'lijie', '', null, null, '1.0.0', 'djxadmin.lijie.module', '0', '1555253054', '1555253054', '100', '1');

-- ----------------------------
-- Table structure for djx_admin_packet
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_packet`;
CREATE TABLE `djx_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

-- ----------------------------
-- Records of djx_admin_packet
-- ----------------------------

-- ----------------------------
-- Table structure for djx_admin_plugin
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_plugin`;
CREATE TABLE `djx_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of djx_admin_plugin
-- ----------------------------
INSERT INTO `djx_admin_plugin` VALUES ('1', 'SystemInfo', '系统环境信息', 'fa fa-fw fa-info-circle', '在后台首页显示服务器信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'system_info.ming.plugin', '0', '1477757503', '1477757503', '100', '1');
INSERT INTO `djx_admin_plugin` VALUES ('2', 'DevTeam', '开发团队成员信息', 'fa fa-fw fa-users', '开发团队成员信息', '蔡伟明', 'http://www.caiweiming.com', '{\"display\":\"1\",\"width\":\"6\"}', '1.0.0', 'dev_team.ming.plugin', '0', '1477755780', '1477755780', '100', '1');

-- ----------------------------
-- Table structure for djx_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_role`;
CREATE TABLE `djx_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  `default_module` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '默认访问模块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of djx_admin_role
-- ----------------------------
INSERT INTO `djx_admin_role` VALUES ('1', '0', '超级管理员', '系统默认创建的角色，拥有最高权限', '', '0', '1476270000', '1468117612', '1', '1', '0');

-- ----------------------------
-- Table structure for djx_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `djx_admin_user`;
CREATE TABLE `djx_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of djx_admin_user
-- ----------------------------
INSERT INTO `djx_admin_user` VALUES ('1', 'admin', '超级管理员', '$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK', '', '0', '', '0', '0', '0.00', '0', '1', '0', '0', '1476065410', '1555653982', '1555653981', '2130706433', '100', '1');

-- ----------------------------
-- Table structure for djx_map_data
-- ----------------------------
DROP TABLE IF EXISTS `djx_map_data`;
CREATE TABLE `djx_map_data` (
  `name` varchar(255) NOT NULL,
  `data` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djx_map_data
-- ----------------------------
INSERT INTO `djx_map_data` VALUES ('GraphArr', '[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]');
INSERT INTO `djx_map_data` VALUES ('PointsArr', '[]');
INSERT INTO `djx_map_data` VALUES ('PointsToGraphArr', '[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]');

-- ----------------------------
-- Table structure for djx_page_view
-- ----------------------------
DROP TABLE IF EXISTS `djx_page_view`;
CREATE TABLE `djx_page_view` (
  `VIEW_TIME` date DEFAULT NULL,
  `VIEW_IP` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djx_page_view
-- ----------------------------
INSERT INTO `djx_page_view` VALUES ('2019-04-14', '127.0.0.1');
INSERT INTO `djx_page_view` VALUES ('2019-04-15', '127.0.0.1');
INSERT INTO `djx_page_view` VALUES ('2019-04-15', '123.147.248.185');
INSERT INTO `djx_page_view` VALUES ('2019-04-15', '183.227.213.42');
INSERT INTO `djx_page_view` VALUES ('2019-04-16', '183.227.213.42');
INSERT INTO `djx_page_view` VALUES ('2019-04-16', '123.147.248.185');
INSERT INTO `djx_page_view` VALUES ('2019-04-16', '123.147.248.182');
INSERT INTO `djx_page_view` VALUES ('2019-04-17', '27.12.121.58');
INSERT INTO `djx_page_view` VALUES ('2019-04-17', '61.151.178.163');
INSERT INTO `djx_page_view` VALUES ('2019-04-18', '27.12.161.170');
INSERT INTO `djx_page_view` VALUES ('2019-04-18', '123.147.250.115');
INSERT INTO `djx_page_view` VALUES ('2019-04-19', '123.147.246.140');
INSERT INTO `djx_page_view` VALUES ('2019-04-19', '127.0.0.1');
INSERT INTO `djx_page_view` VALUES ('2019-04-20', '127.0.0.1');
INSERT INTO `djx_page_view` VALUES ('2019-04-21', '127.0.0.1');
INSERT INTO `djx_page_view` VALUES ('2019-04-22', '127.0.0.1');

-- ----------------------------
-- Table structure for djx_scene_info
-- ----------------------------
DROP TABLE IF EXISTS `djx_scene_info`;
CREATE TABLE `djx_scene_info` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `TEXT_INTRODUCTION` text,
  `VOICE_ADD` varchar(255) DEFAULT NULL,
  `PIC_ADD` varchar(255) DEFAULT NULL,
  `SCENE_SPRITE_MAP` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djx_scene_info
-- ----------------------------
INSERT INTO `djx_scene_info` VALUES ('3', '临崖瞰江RiversideViewingStand', '{\"x\":3.6029903042959646,\"y\":7.264033779724288,\"z\":5.750547617674619}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">古书记载，山上之水沿洪崖洞而下，这才有</span>“珠飞高岸落，翠涌大江流。掩映斜阳里，波光点石头”的佳景，自古以来，常有文人墨客在此题诗作赋。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">站在此处可俯瞰嘉陵江流，可远瞭两江汇流，与江北嘴中央商务区，重庆大剧院隔岸相望。看右侧的千厮门大桥宛若大鹏展翅傲云霄，汽车和轻轨穿桥而过。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">在观景平台上欣赏日落的景色，十分迷人。江北、南岸沿江的美景尽收眼底。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">According to the ancient book, water used to go down the mountain along Hongyadong. Breathtaking riverside views combined by the fairy falls, clear sky and lucid water have inspired many poets to create. </span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Standing here offers you enchanting scenery, the Jialing River, the confluence of it and the Yangtze River at distance, Jiangbeizui Central Business District and the Chongqing Grand Theatre across the river and the Qiansimen Bridge connecting road and rail on the right side, to name but a few.&nbsp;</span></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr1.jpg', 'static/home/img/lykj.png');
INSERT INTO `djx_scene_info` VALUES ('2', '飞仙岩石 FeixianCliff', '{\"x\":10.976333965303734,\"y\":7.289849065833858,\"z\":5.599462923257051}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">据重庆市区域地质调查资料显示，飞仙岩是在约</span>1.9<span style=\"font-family:宋体\">亿年前的侏罗纪时期，由河流沉积作用而形成的，后期随着河流的不断切割和侵蚀作用，形成了现今的陡崖形态，从清代开始就叫飞仙岩。 </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">民国末年，戴家巷紧邻的兴隆台街的飞仙岩道观是当时重庆邹容路、较场口地段</span>8<span style=\"font-family:宋体\">座寺庙之一。 </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">According to the data of Chongqing</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">’s regional geological survey, Feixian Cliff (Fixianyan in Chinese) was formed by river sedimentation in the Jurassic period about 190 million years ago. Later, it turned out to be a steep cliff like it is due to the continuous river cutting and erosion. Feixian Cliff has received its name since the Qing Dynasty (1616-1911).</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">During the last years of the Republic of China (1912-1949), the Feixianyan Daoist Temple in the Xinglongtai Street close to Daijia Alley was one of the eight temples in Zourong Road and Jiaochangkou area of Chongqing at that time.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr2.jpg', 'static/home/img/fxys.png');
INSERT INTO `djx_scene_info` VALUES ('1', '洪崖城墙HongyaCityWall', '{\"x\":-6.009158291146468,\"y\":12.79699083726097,\"z\":3.840655018577717}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">历史上</span>,<span style=\"font-family:宋体\">重庆母城经历四次筑城。明代戴鼎第四次筑城，形成“九开八闭”十七道城门，有</span><span style=\"font-family:Calibri\">8000</span><span style=\"font-family:宋体\">余米的城墙。 此段城墙位于洪崖门和临江门之间，两个城门和之间的城墙都是筑在这片高崖石壁之上。如今要看重庆老城墙的特点，此地是最直观、最险要的地方，其他很多地方都已经很难看到。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">重庆的城墙，</span>“以崖为墙，固若金汤”。至今这一带还残存了不少老城墙遗址，崖壁上还遗留有吊脚楼时的痕迹。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Historically, the mother town of Chongqing, or the center of the old city, had built its city wall as defensive systems for four times. In the Ming Dynasty (1368-1644), Dai Ding as Guard Commander was responsible for the fourth fortification, which extended more than 800 meters and contained seventeen gates with nine open and eight closed. </span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Hongya City Wall between the Hongya Gate and the Linjiang Gate has been built on cliffs. If you want to have a touch of the old city, the section of city wall is strongly recommended for its easy recognition and strategic importance.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">As the saying goes, </span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">“The cliff wall is as impregnable as a city with walls made of metal and a moat of boiling water.” The city wall of Chongqing was secured from invaders. So far, there have been many remains of the old city wall in this area and traces of stilt houses on the cliff.&nbsp;</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr3.jpg', 'static/home/img/hycq.png');
INSERT INTO `djx_scene_info` VALUES ('0', '戴家巷崖壁公园Daijia Alley Cliff Park', '{\"x\":6,\"y\":1,\"z\":-3000}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">以崖为墙，固若金汤；嘉陵烟雨，崖壁栈道。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">戴家巷崖壁公园位于重庆市渝中区嘉陵江畔，矗立在悬崖峭壁之上，与洪崖洞比邻而居，公园总面积约</span>9800<span style=\"font-family:宋体\">平方米，景观步道起于戴家巷老街延伸至嘉陵江畔，长约</span><span style=\"font-family:Calibri\">790</span><span style=\"font-family:宋体\">米，其中悬空栈道</span><span style=\"font-family:Calibri\">300</span><span style=\"font-family:宋体\">米。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">依山攀登山城步道，进入崖壁公园。崖腰与古巴渝十二景</span>“洪崖滴翠”近在咫尺，牵手洪崖洞，俯瞰嘉陵江，远眺江北嘴，临崖听江，以崖为墙，春夏秋冬，繁花似锦，自然成趣。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">崖壁公园内，可寻踪重庆老城墙。重庆古城墙大多建在悬崖上，形成国内外独一无二的奇观。其中最险要的，莫过于戴家巷崖壁公园这一段。洪崖城墙位于临江门和洪崖门之间，城墙绕过临江门后，从飞仙岩蜿蜒向东，崖壁奇陡，上下落差达</span>60<span style=\"font-family:宋体\">米左右。城墙下崖壁上留有明显的吊脚楼痕迹，飞仙岩上的石刻以及洒满阳光的洒金坡。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">于城市最繁华之处，览古今重庆之美。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Impregnable the cliff wall was as the defensive systems in history; unforgettable the scenery around is along the plank road at present.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Daijia Alley Cliff Park is located on the southern bank of the Jialing River in Yuzhong District, Southwest China<span style=\"font-family:宋体\">’</span></span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">s Chongqing Municipality. Covering an area of about 9,800 square meters, it stands on a cliff, neighboring Hongyadong, a popular tourist destination in the downtown. Its plank road from the old street of Daijia Alley to the Jialing River bank extends 790 meters,including 300 meters of suspended plank road.</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:Calibri\"> </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">After the mountain trails comes the entrance into the cliff park, Hongyadong at its side. The park faces the Jialing River and the Jiangbeizui Central Business District across the river. Just immerse yourself in the natural beauty at the riverside viewing stand and sweep scenery around.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">In the cliff park, you can find the ancient city wall in Chongqing, most of which are built on cliffs, It is a spectacle of uniqueness and wonder of engineering at home and abroad. If you want to experience a place strategic and inaccessible in history, the Daijia Alley Cliff Park is a must-go. The Hongya City Wall as a scenic spot in the cliff park is located between the Linjiang Gate and the Hongya Gate. Next, when it comes to Feixian Cliff, another scenic spot, and eastward, the steepest section, about 60 meters in height, shows up. There are obvious traces of stilt houses on the cliff, Feixianyan with stone inscription and glittering Sajinpo.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">It will not let you down to explore the beauty of old Chongqing amid hustling and bustling.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr1.jpg', 'static/home/img/sjdp.png');
INSERT INTO `djx_scene_info` VALUES ('4', '峭壁黄葛HuanggeTree', '{\"x\":14.679766577422267,\"y\":5.706329201595642,\"z\":7.633597174113379}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">黄葛树，又名黄桷树，属桑科高大落叶乔木，是重庆的市树。它具有顽强的生命力，寿命长，树身高大，茎干粗壮，枝繁叶茂，冠盖如伞，尤其它的根，不论环境多么恶劣，深深扎根大地，千百年来，屹立于这座城市不倒。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Huangge tree, or Ficus virens, is the city tree of Chongqing. It has tall body, thick stems and leafy branches. In addition, it stands for tenacity as it is deeply rooted in the earth regardless of rain or shine for hundreds of years.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr2.jpg', 'static/home/img/qbhg.png');
INSERT INTO `djx_scene_info` VALUES ('5', '洒金陡坡 Sajinpo', '{\"x\":18.683549171808707,\"y\":7.199153168722818,\"z\":6.084770682307906}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">洒金坡原是一坡很陡峭的云梯巷，一边是悬崖，一边是陡坎，分布着零星的吊脚楼。靠江一侧不少地方都不能修房屋，只有用栏杆挡住，靠山一侧也往往只有岩石，岩石上披着野草，偶尔有一两棵黄桷树。夕阳西下，阳光把那吊脚楼和岩石、野草、树木照得金灿灿的，远远望去，闪闪烁烁，于是取名洒金坡。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Sajinpo, literally Glittering Slope, used to work as an alley, sandwiched by cliff and steps as well as dotted with stilt houses. Railings, rocks covered with weeds and some Huangge Trees (Ficus virens) were decorations. As the setting sun made the alley glittering, it received the name of Sajinpo.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr3.jpg', 'static/home/img/sjdp.png');
INSERT INTO `djx_scene_info` VALUES ('6', '危岩景观DangerousRockLandscape', '{\"x\":-8.547110542928742,\"y\":7.264034261584214,\"z\":6.771318991671959}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">戴家巷崖壁公园地处洪涯洞景区西侧，上接渝中区戴家巷，下接嘉陵江滨江路，整体坡度非常陡峭，建设场地整体位于危岩及滑坡带，为彻底消除安全隐患，采取了锚杆锚索、锚肋板、锚喷及主动防护网等加固措施进行治理。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">In order to eliminate safety risks, reinforcement measures, including cable bolt anchors, anchor plates and protective net, have been taken in Daijia Alley Cliff Park, because the construction site is steep and located in unstable rock and landslide belt. The park lies to the west side of Hongyadong Scenic Area, connecting Daijia Alley in Yuzhong District and the road along the Jiangling River.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr1.jpg', 'static/home/img/wyjg.png');
INSERT INTO `djx_scene_info` VALUES ('8', '镇江古寺 ZhenjiangAncientTemple', '{\"x\":3.483200739164097,\"y\":1.540035985296993,\"z\":11.749019313214278}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">洪崖门下江畔处的镇江寺，祀奉着镇江王爷，也是船帮聚集之地。船队出航前，都要到镇江寺里去求个平安。所以有民谣说：</span>“洪崖门，广船开，杀鸡敬神。” 经过多次被洪水冲毁，到<span style=\"font-family:Calibri\">1949</span><span style=\"font-family:宋体\">年时只剩下了堡坎地基，直到修滨江路时被全部掩埋。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">曾经在镇江寺周边，茶馆饭馆、货栈客栈密布，卖木材竹材日杂用品的商店一家挨着一家。特别繁荣的是餐饮业，甚至有人考证，镇江寺就是重庆火锅的发源地之一。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">The Zhenjiang Temple, literally River Calming Temple, at the riverbank and close the Hongya Gate witnessed hustle and bustle of boats coming and going. The temple as its name stood for embodied people</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">’s good wishes. Before sailing, they offered sacrifices here to prey before the statue of Zhenjiang, a nobleman in ancient China, for safe trips. Moreover, a folk song has it that the Hongya Gate sees boats sailing and crew offering chicken as sacrifices. Only the temple base remained in 1949 resulted from repeated floods, and it was completely buried until the construction of riverside road.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Once in the vicinity of Zhenjiang Temple, teahouses, restaurants, warehouses and inns were densely distributed, and shops selling wood, bamboo and daily necessities were next to each other. The catering industry was particularly prosperous, and archaeological evidence indicated that Zhenjiang Temple is the birthplace of Chongqing</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">’s hot pot.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr3.jpg', 'static/home/img/zjgs.png');
INSERT INTO `djx_scene_info` VALUES ('7', '吊脚楼畔 Stilthouses', '{\"x\":-15.124568493829733,\"y\":7.264034598274345,\"z\":7.367475915484103}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">清代蜀中名士李调元</span>(1734-1803<span style=\"font-family:宋体\">）云：“两头失路穿心店、三面临江吊脚楼。”背靠高山，面向江水，这便是重庆的吊脚楼与众不同的特色。吊脚楼的独到之处，由于越往上坡面越往后退，所以越到上层，吊脚楼的建筑空间越大，这与一般建筑恰恰相反。使其成为了最有重庆味道的地方，也因为它的停留让山城人多了一个怀旧的地方，被称为巴渝文化的“活化石”。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">不过，目前完全木结构的吊脚楼在重庆已经很少见，由于年代久远，大量的传统竹木结构吊脚楼成了危房，或被拆除，或被改造成砖木结构。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">现在岩壁上还遗留有吊脚楼时的痕迹。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Stilt houses in Chongqing are special for they facing rivers and leaning on mountains. Theses houses in the mountain city differentiates from others for its larger building space at higher elevation, which is contrary to ordinary stilts houses. It has become an icon of Chongqing and is regarded as the &quot;living fossil&quot; of the Bayu culture.</span> &nbsp;</p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">At present, wooden stilt houses are rare in Chongqing. A large number of traditional bamboo and timber houses on stilts have become dilapidated buildings as time goes on. Some of them have been demolished and others are transformed into brick and timber structures.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">&nbsp;</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">吊脚楼景点处崖壁上有</span>3<span style=\"font-family:宋体\">种不同类型的痕迹介绍如下：</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">吊脚楼（</span>1<span style=\"font-family:宋体\">）</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">大圆孔：吊脚楼内起支撑作用的竖向杆件</span>—木柱的支撑点，木柱多为圆形或近似圆形</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Large round holes: They are the supporting points of the vertical bars and the wooden column in stilt houses. The wooden column is mostly round or nearly round.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">&nbsp;</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">吊脚楼（</span>2<span style=\"font-family:宋体\">）</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">大方孔：崖壁上侧大方孔，是吊脚楼楼面屋面水平方向的承重木梁的搁置点</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Large square holes: Large square holes on the upper side of the cliff wall work as the resting points of the load-bearing wooden beam in the horizontal direction of the floor and roof of the stilt houses.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">吊脚楼（</span>3<span style=\"font-family:宋体\">）</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">水槽：当时建造吊脚楼居民用于排水的沟槽，其与屋顶相连，同时也可以把顺着岩层渗漏的水引入沟槽，防止其进入房间。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Water channels: They were used for drainage to direct water from the rooftop prevent water leaking along the rock into the stilt houses.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr2.jpg', 'static/home/img/djlp.png');
INSERT INTO `djx_scene_info` VALUES ('11', '公共卫生间', '{\"x\":-10.558046977230257,\"y\":2.2526920562371338,\"z\":13.047730344780634}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">以崖为墙，固若金汤；嘉陵烟雨，崖壁栈道。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">戴家巷崖壁公园位于重庆市渝中区嘉陵江畔，矗立在悬崖峭壁之上，与洪崖洞比邻而居，公园总面积约</span>9800<span style=\"font-family:宋体\">平方米，景观步道起于戴家巷老街延伸至嘉陵江畔，长约</span><span style=\"font-family:Calibri\">790</span><span style=\"font-family:宋体\">米，其中悬空栈道</span><span style=\"font-family:Calibri\">300</span><span style=\"font-family:宋体\">米。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">依山攀登山城步道，进入崖壁公园。崖腰与古巴渝十二景</span>“洪崖滴翠”近在咫尺，牵手洪崖洞，俯瞰嘉陵江，远眺江北嘴，临崖听江，以崖为墙，春夏秋冬，繁花似锦，自然成趣。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">崖壁公园内，可寻踪重庆老城墙。重庆古城墙大多建在悬崖上，形成国内外独一无二的奇观。其中最险要的，莫过于戴家巷崖壁公园这一段。洪崖城墙位于临江门和洪崖门之间，城墙绕过临江门后，从飞仙岩蜿蜒向东，崖壁奇陡，上下落差达</span>60<span style=\"font-family:宋体\">米左右。城墙下崖壁上留有明显的吊脚楼痕迹，飞仙岩上的石刻以及洒满阳光的洒金坡。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">于城市最繁华之处，览古今重庆之美。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Impregnable the cliff wall was as the defensive systems in history; unforgettable the scenery around is along the plank road at present.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Daijia Alley Cliff Park is located on the southern bank of the Jialing River in Yuzhong District, Southwest China<span style=\"font-family:宋体\">’</span></span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">s Chongqing Municipality. Covering an area of about 9,800 square meters, it stands on a cliff, neighboring Hongyadong, a popular tourist destination in the downtown. Its plank road from the old street of Daijia Alley to the Jialing River bank extends 790 meters,including 300 meters of suspended plank road.</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:Calibri\"> </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">After the mountain trails comes the entrance into the cliff park, Hongyadong at its side. The park faces the Jialing River and the Jiangbeizui Central Business District across the river. Just immerse yourself in the natural beauty at the riverside viewing stand and sweep scenery around.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">In the cliff park, you can find the ancient city wall in Chongqing, most of which are built on cliffs, It is a spectacle of uniqueness and wonder of engineering at home and abroad. If you want to experience a place strategic and inaccessible in history, the Daijia Alley Cliff Park is a must-go. The Hongya City Wall as a scenic spot in the cliff park is located between the Linjiang Gate and the Hongya Gate. Next, when it comes to Feixian Cliff, another scenic spot, and eastward, the steepest section, about 60 meters in height, shows up. There are obvious traces of stilt houses on the cliff, Feixianyan with stone inscription and glittering Sajinpo.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">It will not let you down to explore the beauty of old Chongqing amid hustling and bustling.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr3.jpg', 'static/home/img/ggwsj.png');
INSERT INTO `djx_scene_info` VALUES ('10', '方向指示2', '{\"x\":-11.862122595176176,\"y\":7.517212745638521,\"z\":7.507065921094178}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">以崖为墙，固若金汤；嘉陵烟雨，崖壁栈道。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">戴家巷崖壁公园位于重庆市渝中区嘉陵江畔，矗立在悬崖峭壁之上，与洪崖洞比邻而居，公园总面积约</span>9800<span style=\"font-family:宋体\">平方米，景观步道起于戴家巷老街延伸至嘉陵江畔，长约</span><span style=\"font-family:Calibri\">790</span><span style=\"font-family:宋体\">米，其中悬空栈道</span><span style=\"font-family:Calibri\">300</span><span style=\"font-family:宋体\">米。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">依山攀登山城步道，进入崖壁公园。崖腰与古巴渝十二景</span>“洪崖滴翠”近在咫尺，牵手洪崖洞，俯瞰嘉陵江，远眺江北嘴，临崖听江，以崖为墙，春夏秋冬，繁花似锦，自然成趣。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">崖壁公园内，可寻踪重庆老城墙。重庆古城墙大多建在悬崖上，形成国内外独一无二的奇观。其中最险要的，莫过于戴家巷崖壁公园这一段。洪崖城墙位于临江门和洪崖门之间，城墙绕过临江门后，从飞仙岩蜿蜒向东，崖壁奇陡，上下落差达</span>60<span style=\"font-family:宋体\">米左右。城墙下崖壁上留有明显的吊脚楼痕迹，飞仙岩上的石刻以及洒满阳光的洒金坡。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">于城市最繁华之处，览古今重庆之美。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Impregnable the cliff wall was as the defensive systems in history; unforgettable the scenery around is along the plank road at present.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Daijia Alley Cliff Park is located on the southern bank of the Jialing River in Yuzhong District, Southwest China<span style=\"font-family:宋体\">’</span></span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">s Chongqing Municipality. Covering an area of about 9,800 square meters, it stands on a cliff, neighboring Hongyadong, a popular tourist destination in the downtown. Its plank road from the old street of Daijia Alley to the Jialing River bank extends 790 meters,including 300 meters of suspended plank road.</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:Calibri\"> </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">After the mountain trails comes the entrance into the cliff park, Hongyadong at its side. The park faces the Jialing River and the Jiangbeizui Central Business District across the river. Just immerse yourself in the natural beauty at the riverside viewing stand and sweep scenery around.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">In the cliff park, you can find the ancient city wall in Chongqing, most of which are built on cliffs, It is a spectacle of uniqueness and wonder of engineering at home and abroad. If you want to experience a place strategic and inaccessible in history, the Daijia Alley Cliff Park is a must-go. The Hongya City Wall as a scenic spot in the cliff park is located between the Linjiang Gate and the Hongya Gate. Next, when it comes to Feixian Cliff, another scenic spot, and eastward, the steepest section, about 60 meters in height, shows up. There are obvious traces of stilt houses on the cliff, Feixianyan with stone inscription and glittering Sajinpo.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">It will not let you down to explore the beauty of old Chongqing amid hustling and bustling.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr2.jpg', 'static/home/img/fxdsp.png');
INSERT INTO `djx_scene_info` VALUES ('9', '方向指示1', '{\"x\":-6.311742010538836,\"y\":1.112702462450188,\"z\":12.83433682667934}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">以崖为墙，固若金汤；嘉陵烟雨，崖壁栈道。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">戴家巷崖壁公园位于重庆市渝中区嘉陵江畔，矗立在悬崖峭壁之上，与洪崖洞比邻而居，公园总面积约</span>9800<span style=\"font-family:宋体\">平方米，景观步道起于戴家巷老街延伸至嘉陵江畔，长约</span><span style=\"font-family:Calibri\">790</span><span style=\"font-family:宋体\">米，其中悬空栈道</span><span style=\"font-family:Calibri\">300</span><span style=\"font-family:宋体\">米。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">依山攀登山城步道，进入崖壁公园。崖腰与古巴渝十二景</span>“洪崖滴翠”近在咫尺，牵手洪崖洞，俯瞰嘉陵江，远眺江北嘴，临崖听江，以崖为墙，春夏秋冬，繁花似锦，自然成趣。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">崖壁公园内，可寻踪重庆老城墙。重庆古城墙大多建在悬崖上，形成国内外独一无二的奇观。其中最险要的，莫过于戴家巷崖壁公园这一段。洪崖城墙位于临江门和洪崖门之间，城墙绕过临江门后，从飞仙岩蜿蜒向东，崖壁奇陡，上下落差达</span>60<span style=\"font-family:宋体\">米左右。城墙下崖壁上留有明显的吊脚楼痕迹，飞仙岩上的石刻以及洒满阳光的洒金坡。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">于城市最繁华之处，览古今重庆之美。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Impregnable the cliff wall was as the defensive systems in history; unforgettable the scenery around is along the plank road at present.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Daijia Alley Cliff Park is located on the southern bank of the Jialing River in Yuzhong District, Southwest China<span style=\"font-family:宋体\">’</span></span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">s Chongqing Municipality. Covering an area of about 9,800 square meters, it stands on a cliff, neighboring Hongyadong, a popular tourist destination in the downtown. Its plank road from the old street of Daijia Alley to the Jialing River bank extends 790 meters,including 300 meters of suspended plank road.</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:Calibri\"> </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">After the mountain trails comes the entrance into the cliff park, Hongyadong at its side. The park faces the Jialing River and the Jiangbeizui Central Business District across the river. Just immerse yourself in the natural beauty at the riverside viewing stand and sweep scenery around.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">In the cliff park, you can find the ancient city wall in Chongqing, most of which are built on cliffs, It is a spectacle of uniqueness and wonder of engineering at home and abroad. If you want to experience a place strategic and inaccessible in history, the Daijia Alley Cliff Park is a must-go. The Hongya City Wall as a scenic spot in the cliff park is located between the Linjiang Gate and the Hongya Gate. Next, when it comes to Feixian Cliff, another scenic spot, and eastward, the steepest section, about 60 meters in height, shows up. There are obvious traces of stilt houses on the cliff, Feixianyan with stone inscription and glittering Sajinpo.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">It will not let you down to explore the beauty of old Chongqing amid hustling and bustling.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr1.jpg', 'static/home/img/fxdsp.png');
INSERT INTO `djx_scene_info` VALUES ('12', '公园管理处', '{\"x\":8.973002530110431,\"y\":4.625184026989594,\"z\":9.12640855083934}', '<p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">以崖为墙，固若金汤；嘉陵烟雨，崖壁栈道。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">戴家巷崖壁公园位于重庆市渝中区嘉陵江畔，矗立在悬崖峭壁之上，与洪崖洞比邻而居，公园总面积约</span>9800<span style=\"font-family:宋体\">平方米，景观步道起于戴家巷老街延伸至嘉陵江畔，长约</span><span style=\"font-family:Calibri\">790</span><span style=\"font-family:宋体\">米，其中悬空栈道</span><span style=\"font-family:Calibri\">300</span><span style=\"font-family:宋体\">米。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">依山攀登山城步道，进入崖壁公园。崖腰与古巴渝十二景</span>“洪崖滴翠”近在咫尺，牵手洪崖洞，俯瞰嘉陵江，远眺江北嘴，临崖听江，以崖为墙，春夏秋冬，繁花似锦，自然成趣。</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">崖壁公园内，可寻踪重庆老城墙。重庆古城墙大多建在悬崖上，形成国内外独一无二的奇观。其中最险要的，莫过于戴家巷崖壁公园这一段。洪崖城墙位于临江门和洪崖门之间，城墙绕过临江门后，从飞仙岩蜿蜒向东，崖壁奇陡，上下落差达</span>60<span style=\"font-family:宋体\">米左右。城墙下崖壁上留有明显的吊脚楼痕迹，飞仙岩上的石刻以及洒满阳光的洒金坡。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:宋体\">于城市最繁华之处，览古今重庆之美。</span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Impregnable the cliff wall was as the defensive systems in history; unforgettable the scenery around is along the plank road at present.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">Daijia Alley Cliff Park is located on the southern bank of the Jialing River in Yuzhong District, Southwest China<span style=\"font-family:宋体\">’</span></span><span style=\";font-family:宋体;line-height:150%;font-size:16px\">s Chongqing Municipality. Covering an area of about 9,800 square meters, it stands on a cliff, neighboring Hongyadong, a popular tourist destination in the downtown. Its plank road from the old street of Daijia Alley to the Jialing River bank extends 790 meters,including 300 meters of suspended plank road.</span><span style=\";font-family:宋体;line-height:150%;font-size:16px\"><span style=\"font-family:Calibri\"> </span></span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">After the mountain trails comes the entrance into the cliff park, Hongyadong at its side. The park faces the Jialing River and the Jiangbeizui Central Business District across the river. Just immerse yourself in the natural beauty at the riverside viewing stand and sweep scenery around.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">In the cliff park, you can find the ancient city wall in Chongqing, most of which are built on cliffs, It is a spectacle of uniqueness and wonder of engineering at home and abroad. If you want to experience a place strategic and inaccessible in history, the Daijia Alley Cliff Park is a must-go. The Hongya City Wall as a scenic spot in the cliff park is located between the Linjiang Gate and the Hongya Gate. Next, when it comes to Feixian Cliff, another scenic spot, and eastward, the steepest section, about 60 meters in height, shows up. There are obvious traces of stilt houses on the cliff, Feixianyan with stone inscription and glittering Sajinpo.</span></p><p style=\"text-indent:32px;text-autospace:ideograph-numeric;line-height:150%\"><span style=\";font-family:宋体;line-height:150%;font-size:16px\">It will not let you down to explore the beauty of old Chongqing amid hustling and bustling.</span></p><p><br/></p>', 'static/home/voice/voice2.mp3', 'static/home/pic/mr1.jpg', 'static/home/img/gyglc.png');
