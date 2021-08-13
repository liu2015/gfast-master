/*
 Navicat Premium Data Transfer

 Source Server         : 172.30.30.224
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 172.30.30.224:3306
 Source Schema         : gfast_open

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 13/08/2021 10:10:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `menu_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '类型 0目录 1菜单 2按钮',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `always_show` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示状态',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '组件路径',
  `is_frame` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否外链 1是 0否',
  `module_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属模块',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模型ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 123 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单节点表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES (1, 0, 'system/config', '系统配置', 'system', '', 'Admin tips', 0, 1497429920, 1497430320, 0, 1, 1, 'config', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (2, 0, 'system/auth', '权限管理', 'peoples', '', '', 0, 1497429920, 1592380524, 0, 1, 1, 'system/auth', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (3, 0, 'system/monitor', '系统监控', 'monitor', '', '', 0, 1497429920, 1592380560, 0, 1, 1, 'monitor', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (4, 0, 'system/cms', 'cms管理', 'form', '', '', 0, 1497429920, 1628671557, 0, 1, 0, 'cms', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (5, 1, 'system/config/dict/list', '字典管理', 'dict', '', '', 1, 1497429920, 1592380469, 0, 1, 1, 'dict/list', 'system/config/dict/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (6, 1, 'system/config/params/list', '参数管理', 'date-range', '', '', 1, 1497429920, 1592380510, 0, 1, 1, 'params/list', 'system/config/params/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (8, 2, 'system/auth/menuList', '菜单管理', 'nested', '', '', 1, 1497429920, 1592380548, 0, 1, 1, 'menuList', 'system/auth/menuList', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (21, 5, 'system/config/dict/delete', '删除字典', '', '', '', 2, 1592363629, 1592363629, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (16, 8, 'system/auth/addMenu', '添加菜单', '', '', '', 2, 1592357208, 1600396699, 0, 1, 0, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (17, 8, 'system/auth/editMenu', '修改菜单', '', '', '', 2, 1592357231, 1592357274, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (18, 8, 'system/auth/deleteMenu', '删除菜单', '', '', '', 2, 1592357268, 1592357268, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (19, 5, 'system/config/dict/add', '添加字典', '', '', '', 2, 1592363585, 1592363585, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (20, 5, 'system/config/dict/edit', '修改字典', '', '', '', 2, 1592363604, 1592363604, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (22, 5, 'system/config/dict/dataList', '字典数据管理', '', '', '', 2, 1592363790, 1592365455, 0, 1, 1, 'dataList', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (23, 5, 'system/config/dict/dataAdd', '添加字典数据', '', '', '', 2, 1592380398, 1593411393, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (24, 5, 'system/config/dict/dataEdit', '修改字典数据', '', '', '', 2, 1592380417, 1593411398, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (25, 5, 'system/config/dict/dataDelete', '删除字典数据', '', '', '', 2, 1592380449, 1593411403, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (26, 2, 'system/auth/roleList', '角色管理', 'logininfor', '', '', 1, 1592385260, 1592385291, 0, 1, 1, 'role', 'system/auth/roleList', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (27, 26, 'system/auth/addRole', '添加角色', '', '', '', 2, 1592389821, 1592389821, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (28, 2, 'system/auth/dept', '部门管理', 'peoples', '', '', 1, 1592449845, 1592449845, 0, 1, 1, 'dept', 'system/auth/dept', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (29, 26, 'system/auth/editRole', '修改角色', '', '', '', 2, 1592469153, 1592469153, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (30, 26, 'system/auth/statusSetRole', '设置角色状态', '', '', '', 2, 1592469201, 1592469201, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (31, 26, 'system/auth/deleteRole', '删除角色', '', '', '', 2, 1592469234, 1592469234, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (32, 4, 'system/cms/menu/list', '栏目管理', 'tree-table', '', '', 1, 1592469318, 1592469318, 0, 1, 1, 'menu', 'system/cms/menu/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (33, 2, 'system/auth/post', '岗位管理', 'tab', '', '', 1, 1592558968, 1592558968, 0, 1, 1, 'post', 'system/auth/post', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (34, 3, 'system/monitor/online/list', '在线用户', 'cascader', '', '', 1, 1593328511, 1593328511, 0, 1, 1, 'online', 'system/monitor/online/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (35, 4, 'system/cms/news/list', '文章管理', 'log', '', '', 1, 1593331969, 1593331991, 0, 1, 1, 'news', 'system/cms/news/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (36, 3, 'system/monitor/job', '定时任务', 'clipboard', '', '', 1, 1593332305, 1593332434, 0, 1, 1, 'job', 'system/monitor/job', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (37, 3, 'system/monitor/server', '服务监控', 'dict', '', '', 1, 1593419394, 1593419394, 0, 1, 1, 'server', 'system/monitor/server', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (38, 3, 'system/monitor/logininfor', '登录日志', 'chart', '', '', 1, 1593423378, 1593423505, 0, 1, 1, 'logininfor', 'system/monitor/logininfor', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (39, 3, 'system/monitor/operlog', '操作日志', 'dashboard', '', '', 1, 1593485097, 1593485097, 0, 1, 1, 'operlog', 'system/monitor/operlog', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (40, 2, 'system/auth/userList', '用户管理', 'user', '', '', 1, 1593572523, 1593572523, 0, 1, 1, 'user', 'system/auth/userList', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (41, 6, 'system/config/params/add', '添加参数', '', '', '', 2, 1593684331, 1593684331, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (42, 6, 'system/config/params/edit', '修改参数', '', '', '', 2, 1593684351, 1593684351, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (43, 6, 'system/config/params/delete', '删除参数', '', '', '', 2, 1593684470, 1593684470, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (44, 28, 'system/dept/addDept', '添加部门', '', '', '', 2, 1593738070, 1593738070, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (45, 28, 'system/dept/editDept', '修改部门', '', '', '', 2, 1593738097, 1593738097, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (46, 28, 'system/dept/delDept', '删除部门', '', '', '', 2, 1593738125, 1593738125, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (47, 33, 'system/post/add', '添加岗位', '', '', '', 2, 1593738444, 1593738444, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (48, 33, 'system/post/edit', '修改岗位', '', '', '', 2, 1593738567, 1593738567, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (49, 33, 'system/post/delete', '删除岗位', '', '', '', 2, 1593738590, 1593738590, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (50, 40, 'system/auth/addUser', '添加用户', '', '', '', 2, 1593738798, 1593738798, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (51, 40, 'system/auth/editUser', '修改用户', '', '', '', 2, 1593738950, 1593738950, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (52, 40, 'system/auth/resetUserPwd', '密码重置', '', '', '', 2, 1593739001, 1593739001, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (53, 40, 'system/auth/changeUserStatus', '状态设置', '', '', '', 2, 1593739079, 1593739079, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (54, 40, 'system/auth/deleteAdmin', '删除用户', '', '', '', 2, 1593739113, 1593739113, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (55, 34, 'system/monitor/online/forceLogout', '强制退出', '', '', '', 2, 1593739201, 1593739201, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (56, 36, 'system/monitor/job/add', '添加任务', '', '', '', 2, 1593740041, 1593740041, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (57, 36, 'system/monitor/job/edit', '修改任务', '', '', '', 2, 1593740062, 1593740062, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (58, 36, 'system/monitor/job/start', '开启任务', '', '', '', 2, 1593740105, 1593740105, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (59, 36, 'system/monitor/job/stop', '停止任务', '', '', '', 2, 1593740139, 1593740139, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (60, 36, 'system/monitor/job/delete', '删除任务', '', '', '', 2, 1593740165, 1593740165, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (61, 38, 'system/monitor/loginlog/delete', '删除', '', '', '', 2, 1593740342, 1593740342, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (62, 38, 'system/monitor/loginlog/clear', '清空', '', '', '', 2, 1593740359, 1593740359, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (63, 39, 'system/monitor/operlog/delete', '删除', '', '', '', 2, 1593740422, 1593740422, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (64, 39, 'system/monitor/operlog/clear', '清空', '', '', '', 2, 1593740434, 1593740434, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (65, 32, 'system/cms/menu/add', '添加栏目', '', '', '', 2, 1593740504, 1593740504, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (66, 32, 'system/cms/menu/edit', '修改栏目', '', '', '', 2, 1593740521, 1593740521, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (67, 32, 'system/cms/menu/sort', '栏目排序', '', '', '', 2, 1593740549, 1593740549, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (68, 32, 'system/cms/menu/delete', '删除栏目', '', '', '', 2, 1593740568, 1593740568, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (69, 35, 'system/cms/news/add', '添加文章', '', '', '', 2, 1593740691, 1593740691, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (70, 35, 'system/cms/news/edit', '修改文章', '', '', '', 2, 1593740711, 1593740711, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (71, 35, 'system/cms/news/delete', '删除文章', '', '', '', 2, 1593740730, 1593740730, 0, 1, 1, '', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (72, 0, 'system/model', '模型管理', 'table', '', '', 0, 1593742999, 1628671564, 0, 1, 0, 'model', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (73, 72, 'system/model/category/list', '模型分类', 'tree-table', '', '', 1, 1593743065, 1593743065, 0, 1, 1, 'category', 'system/model/category/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (74, 72, 'system/model/info/list', '模型列表', 'list', '', '', 1, 1593743131, 1594781057, 0, 1, 1, 'list', 'system/model/info/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (75, 0, 'system/tools', '系统工具', 'server', '', '', 0, 1594016328, 1594016328, 0, 1, 1, 'system/tools', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (76, 75, 'system/tools/build', '表单构建', 'build', '', '', 1, 1594016392, 1594016808, 0, 1, 1, 'build', 'system/tools/build', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (77, 75, 'system/tools/gen', '代码生成', 'code', '', '', 1, 1594016637, 1594016637, 0, 1, 1, 'gen', 'system/tools/gen', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (78, 0, 'system/plug', '扩展管理', 'logininfor', '', '', 0, 1594169636, 1628671569, 0, 1, 0, 'system/plug', '', 1, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (79, 78, 'system/plug/ad', '广告管理', 'color', '', '', 0, 1594169691, 1595410089, 0, 1, 1, 'adManage', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (80, 79, 'system/plug/ad/type/list', '广告位管理', 'nested', '', '', 1, 1594169783, 1595405904, 0, 1, 1, 'adtype', 'system/plug/ad/type/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (81, 79, 'system/plug/ad/info/list', '广告列表', 'list', '', '', 1, 1594169949, 1596418803, 0, 1, 1, 'adlist', 'system/plug/ad/info/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (82, 75, 'system/tools/api', '系统接口', 'guide', '', '', 1, 1594951684, 1594951684, 0, 1, 1, 'api', 'system/tools/api', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (83, 78, 'system/plug/link', '友情链接', 'cascader', '', '', 0, 1595381634, 1595403122, 0, 1, 1, 'link', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (84, 83, 'system/plug/link/type/list', '分类管理', 'component', '', '', 1, 1595381717, 1595381717, 0, 1, 1, 'type', 'system/plug/link/type/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (85, 83, 'system/plug/link/info/list', '链接管理', 'list', '', '', 1, 1595381754, 1595381754, 0, 1, 1, 'info', 'system/plug/link/info/list', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (86, 1, 'system/config/webSet', '站点设置', 'system', '', '', 1, 1596420340, 1596420340, 0, 1, 1, '/webSet', 'system/config/webSet', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (106, 4, 'cms', 'cms前端展示', 'education', '', '', 1, 1604040725, 1604040798, 0, 1, 1, 'http://localhost:8200/cms', 'system/cms/news/list', 1, '', 0);
INSERT INTO `auth_rule` VALUES (107, 0, 'system/wf', '流程管理', 'cascader', '', '', 0, 1606967359, 1628671572, 0, 1, 0, 'system/wf', '', 0, '', 0);
INSERT INTO `auth_rule` VALUES (108, 107, 'system/wf/flow/list', '工作流列表', 'component', '', '', 1, 1606967458, 1606967516, 0, 1, 1, 'flow/list', 'system/wf/flow/list', 0, '', 0);
INSERT INTO `auth_rule` VALUES (109, 108, 'system/wf/flow/design', '设计流程', '', '', '', 2, 1606967544, 1607074912, 0, 1, 1, '', '', 0, '', 0);
INSERT INTO `auth_rule` VALUES (110, 107, 'system/wf/flow/news', '测试业务', 'job', '', '', 1, 1606967599, 1606967599, 0, 1, 1, 'flow/news', 'system/wf/flow/news', 0, '', 0);
INSERT INTO `auth_rule` VALUES (111, 107, 'system/wf/flow/monitoring', '流程监控', 'eye-open', '', '', 1, 1606967670, 1606967680, 0, 1, 1, 'monitoring', 'system/wf/flow/monitoring', 0, '', 0);
INSERT INTO `auth_rule` VALUES (112, 0, 'system/plugin/blog', '简单博客管理', 'education', '', '', 0, 1607400193, 1628671585, 0, 1, 0, 'blog', '', 0, '', 0);
INSERT INTO `auth_rule` VALUES (113, 112, 'system/plugin/blog/log/list', '日志管理', 'log', '', '', 1, 1607400265, 1607400265, 0, 1, 1, 'log', 'plugin/blog/log/list', 0, '', 0);
INSERT INTO `auth_rule` VALUES (114, 112, 'system/plugin/blog/classification/list', '分类管理', 'tab', '', '', 1, 1607400305, 1607400305, 0, 1, 1, 'classification', 'plugin/blog/classification/list', 0, '', 0);
INSERT INTO `auth_rule` VALUES (115, 112, 'system/plugin/blog/comment/list', '评论管理', 'date', '', '', 1, 1607400346, 1607400346, 0, 1, 1, 'comment', 'plugin/blog/comment/list', 0, '', 0);
INSERT INTO `auth_rule` VALUES (116, 112, 'plugin/blog', '博客前端展示', 'eye-open', '', '', 1, 1607400394, 1607400394, 0, 1, 1, 'http://localhost:8200/plugin/blog', 'plugin/blog/log/list', 1, '', 0);
INSERT INTO `auth_rule` VALUES (117, 0, 'module', '脚本管理', 'date', '', '', 0, 1627881965, 1627888181, 0, 1, 1, 'module', '', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (118, 117, 'module/lib_log', '脚本log', 'code', '', '', 1, 1627882042, 1627888191, 0, 1, 1, 'lib_log', 'module/lib_log', 0, 'sys_admin', 0);
INSERT INTO `auth_rule` VALUES (119, 117, 'module/rary', '脚本库', 'dict', '', '', 1, 1627890994, 1627890994, 0, 1, 1, 'rary', 'module/rary', 0, '', 0);
INSERT INTO `auth_rule` VALUES (120, 117, 'module/link', '脚本列表', 'chart', '', '', 1, 1627891044, 1627891044, 0, 1, 1, 'links', 'module/link', 0, '', 0);
INSERT INTO `auth_rule` VALUES (121, 117, 'module/list', '工单列表', 'list', '', '', 1, 1628318266, 1628318266, 0, 1, 1, 'lists', 'module/list', 0, '', 0);
INSERT INTO `auth_rule` VALUES (122, 117, 'module/nolist', '明细内容', 'clipboard', '', '', 1, 1628668800, 1628668916, 0, 1, 1, 'nolist', 'module/nolist', 0, '', 0);

-- ----------------------------
-- Table structure for blog_classification
-- ----------------------------
DROP TABLE IF EXISTS `blog_classification`;
CREATE TABLE `blog_classification`  (
  `classification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `classification_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `classification_pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类父id',
  `classification_sort` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `classification_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类标志(菜单类型)1.频道页/2.发布栏目/3.跳转栏目/4.单页栏目',
  `classification_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '分类描述',
  `classification_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类状态,0停用,1正常',
  `classification_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转栏目的跳转地址',
  `classification_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '单页栏目的内容',
  PRIMARY KEY (`classification_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_classification
-- ----------------------------
INSERT INTO `blog_classification` VALUES (17, '网站首页', 0, 1, 3, '', 1, 'plugin/blog/index', '');
INSERT INTO `blog_classification` VALUES (18, 'IT技术', 0, 2, 1, '', 1, '', '');
INSERT INTO `blog_classification` VALUES (19, '关于博主', 0, 3, 4, '', 1, 'plugin/blog/content?logId=20', '<p>666666666666666</p>\n');
INSERT INTO `blog_classification` VALUES (20, '前沿信息', 18, 201, 2, '', 1, '', '');
INSERT INTO `blog_classification` VALUES (21, '技术动态', 18, 202, 2, '', 1, '', '');
INSERT INTO `blog_classification` VALUES (24, '相关资料', 18, 203, 2, '相关资料', 1, '', NULL);

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment`  (
  `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论用户的用户id',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `comment_pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前评论所回复的父评论的id',
  `comment_num` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前评论的回复数（下一级子评论数）',
  `comment_status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '此评论的状态，0隐藏，1发布',
  `comment_log_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前评论所属日志id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论创建时间',
  `comment_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论人的昵称',
  `reply_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '当前所回复的对象昵称',
  `reply_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前回复对象的id',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for blog_log
-- ----------------------------
DROP TABLE IF EXISTS `blog_log`;
CREATE TABLE `blog_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(10) NOT NULL COMMENT '所属分类',
  `log_sign` tinyint(10) NULL DEFAULT 0 COMMENT '0.一般,1.置顶,2.幻灯,3.推荐',
  `log_title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `log_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者名',
  `log_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NULL DEFAULT NULL COMMENT '链接URL',
  `log_thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '缩略图',
  `log_hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看数点击数',
  `log_comments` bigint(20) NOT NULL DEFAULT 0 COMMENT '评论数                                 ',
  `creat_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `log_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1发布,0未发布',
  `log_sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `log_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '日志内容',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_log
-- ----------------------------
INSERT INTO `blog_log` VALUES (13, 21, 2, 'Docker 入门教程(八)使用 Dockerfile 制作 Linux、NGINX、MySQL、PHP 镜像', '1', '', 'pub_upload/2020-10-22/c6jc8xdjoof0robar0.png', 3, 0, 1602472367, 1, 0, '<p>我们接下来就用 Dockerfile 制作一套简单的环境；</p>\n\n<h3>Linux</h3>\n\n<p>我们这里以 Ubuntu 为示例；<br />\n默认的官方镜像比较基础有些地方不一定适合我们使用；<br />\n我们这里对 Ubuntu 做一些简单的修改；<br />\n创建一个 Ubuntu 目录；</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20191124/5dda7aefb9171.png\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20191124/5dda7aefb9171.png\" /></a></p>\n\n<p><br />\n我这里创建了两个文件；<br />\n<em>conf/sources.list</em></p>\n\n<pre>\ndeb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\n\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\n\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\n\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\n\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>官方的源在国内比较慢；<br />\n我在上面这个文件中定义了个镜像配置；<br />\n<em>Dockerfile</em></p>\n\n<pre>\nFROM ubuntu:bionic\n\nENV TZ=&quot;Asia/Shanghai&quot;\n\nCOPY conf/sources.list /etc/apt/sources.list\n\nRUN set -ex \\\n    &amp;&amp; ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \\\n    &amp;&amp; echo &quot;${TZ}&quot; &gt; /etc/timezone \\\n    &amp;&amp; apt-get update \\\n    &amp;&amp; apt-get install -y locales \\\n    &amp;&amp; rm -rf /var/lib/apt/lists/* \\\n    &amp;&amp; rm -rf /var/cache/apt \\\n    &amp;&amp; localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8\n\nENV LANG en_US.utf8</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>第一行使用了&nbsp;FROM&nbsp;继承官方的 Ubuntu 的 bionic 版本；<br />\n接着使用了&nbsp;ENV&nbsp;定义了个时区变量&nbsp;TZ&nbsp;；<br />\n好处是如果要换其他时区；<br />\n只需要改变量就行了；<br />\n不需要全文搜索替换了；<br />\n接着使用&nbsp;COPY&nbsp;命令替换系统的镜像设置；<br />\n再下面使用了&nbsp;RUN&nbsp;执行命令设置时区； 其中有的&nbsp;rm -rf&nbsp;用来清理执行命令过程中产生的缓存文件；<br />\n这样可以缩小镜像体积；<br />\n最后定义下 utf8 字符集；<br />\n这样一个自定义的镜像就完成了；<br />\nbuild 一个版本推送；</p>\n\n<pre>\ndocker build -t baijunyao/ubuntu .\ndocker push baijunyao/ubuntu\n</pre>\n\n<h3>NGINX</h3>\n\n<p>上面已经有了一个 Linux 系统了；<br />\n我们可以基于上面的 Linux 编译安装 NGINX ；<br />\n但是如果没有特殊需求更省事的方案是直接继承官方的 NGINX；</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20191124/5dda7b10ce59d.png\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20191124/5dda7b10ce59d.png\" /></a></p>\n\n<p><br />\n我们先定义一份自己的 NGINX 配置文件；<br />\n<em>conf/nginx.conf</em></p>\n\n<pre>\nuser  www-data;\nworker_processes  1;\n\nerror_log  /var/log/nginx/error.log warn;\npid        /var/run/nginx.pid;\n\n\nevents {\n    worker_connections  1024;\n}\n\n\nhttp {\n    include       /etc/nginx/mime.types;\n    default_type  application/octet-stream;\n\n    log_format  main  &#39;$remote_addr - $remote_user [$time_local] &quot;$request&quot; &#39;\n                      &#39;$status $body_bytes_sent &quot;$http_referer&quot; &#39;\n                      &#39;&quot;$http_user_agent&quot; &quot;$http_x_forwarded_for&quot;&#39;;\n\n    access_log  /var/log/nginx/access.log  main;\n\n    sendfile        on;\n    #tcp_nopush     on;\n\n    keepalive_timeout  65;\n\n    #gzip  on;\n\n    include /etc/nginx/conf.d/*.conf;\n}</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p><em>Dockerfile</em></p>\n\n<pre>\nFROM nginx:mainline\n\nCOPY conf/nginx.conf /etc/nginx/nginx.conf\n\nRUN set -ex \\\n    &amp;&amp; rm -rf /etc/nginx/conf.d/default.conf</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>上面这些命令我们都认识；<br />\n就这么轻松的又制作了一份镜像；</p>\n\n<h3>MySQL</h3>\n\n<p>同样的套路来制作一个 MySQL 镜像；</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20191124/5dda7b27d4a69.png\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20191124/5dda7b27d4a69.png\" /></a></p>\n\n<p><br />\n<em>conf/my.cnf</em></p>\n\n<pre>\n[mysqld]\ndefault-authentication-plugin=mysql_native_password</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p><em>Dockerfile</em></p>\n\n<pre>\nFROM mysql:8.0\n\nCOPY conf/my.cnf /etc/mysql/conf.d/my.cnf</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>这个镜像就更简单了就替换了下配置项就完事了；</p>\n\n<h3>PHP</h3>\n\n<p>终于到了PHP 了；</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20191124/5dda7b4168676.png\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20191124/5dda7b4168676.png\" /></a></p>\n\n<p><br />\n这里定义了 3 个&nbsp;<em>Dockerfile</em>&nbsp;；<br />\n我们来分别了解用途；<br />\n<em>conf/sources.list</em></p>\n\n<pre>\ndeb http://mirrors.ustc.edu.cn/debian/ buster main contrib non-free\ndeb-src http://mirrors.ustc.edu.cn/debian/ buster main contrib non-free\n\ndeb http://mirrors.ustc.edu.cn/debian/ buster-updates main contrib non-free\ndeb-src http://mirrors.ustc.edu.cn/debian/ buster-updates main contrib non-free\n\ndeb http://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free\ndeb-src http://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>官方的 PHP 镜像是基于 debian 制作的；<br />\n我们这里再来个 debian 的镜像设置；<br />\n<em>Dockerfile</em></p>\n\n<pre>\nFROM php:7.3-fpm\n\nCOPY conf/sources.list /etc/apt/sources.list\n\nADD https://mirrors.aliyun.com/composer/composer.phar /usr/local/bin/composer\n\nRUN set -xe \\\n    &amp;&amp; apt-get update \\\n    &amp;&amp; apt-get install -y --no-install-recommends \\\n        libfreetype6-dev \\\n        libjpeg62-turbo-dev \\\n        libpng-dev \\\n        libzip-dev \\\n    &amp;&amp; docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \\\n    &amp;&amp; docker-php-ext-install gd pdo_mysql zip exif \\\n    &amp;&amp; pecl install -o -f redis-5.0.2 \\\n    &amp;&amp; docker-php-ext-enable redis \\\n    &amp;&amp; chmod a+x /usr/local/bin/composer \\\n    &amp;&amp; rm -rf /tmp/pear \\\n    &amp;&amp; rm -rf /var/lib/apt/lists/*\n\nWORKDIR /app</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>FROM&nbsp;和&nbsp;COPY&nbsp;我们前面已经用了；<br />\n这里来看&nbsp;ADD&nbsp;方法；<br />\n因为在国内下载 composer.phar 文件比较慢；<br />\n这里直接使用了&nbsp;ADD&nbsp;下载阿里云的镜像文件；<br />\n再下面我们安装了一些常用的 PHP 扩展；<br />\n安装镜像的方式详细的可以从官方镜像文档了解&nbsp;<a href=\"https://hub.docker.com/_/php\" target=\"_blank\">https://hub.docker.com/_/php</a>&nbsp;最后使用了&nbsp;WORKDIR&nbsp;定义工作目录；</p>\n\n<p><em>Dockerfile</em>&nbsp;中定义的是通用的扩展；<br />\n还有一些扩展一般用于指定环境；<br />\n比如说为了跑 Laravel 的 Dusk 测试；<br />\n在本地环境中还需要安装&nbsp;pcntl&nbsp;;<br />\n所以这里创建了个&nbsp;<em>Dockerfile.local</em>&nbsp;；</p>\n\n<pre>\nFROM baijunyao/php\n\nRUN docker-php-ext-install pcntl</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>生产环境一般会安装&nbsp;opcache&nbsp;扩展；<br />\n这里就又创建了个&nbsp;<em>Dockerfile.production</em>&nbsp;文件；</p>\n\n<pre>\nFROM baijunyao/php\n\nRUN docker-php-ext-install opcache</pre>\n\n<p>Bash</p>\n\n<p>Copy</p>\n\n<p>好了； 至此 LNMP 的简单镜像我们都制作了； 下篇文章我们来讲解下怎么组合这些镜像来跑代码；</p>\n');
INSERT INTO `blog_log` VALUES (14, 21, 2, '推荐一些免费开源好看的bootstrap后台模板', '来自白俊遥博客', '', 'pub_upload/2020-10-22/c6jcco2rd30kksng7w.jpg', 6, 0, 1602472407, 1, 0, '<p>作为一只 php 程序猿；<br />\n前(shen)端(mei)方面是大多人的弱项；<br />\n还好有 bootstrap ;<br />\n在离开了设计师的时候；<br />\n让我等可以套套模板做出来点能看的东西；<br />\n尤其是当我们要写个自己的博客或者其他项目的时候；<br />\n基本也都是需要有个后台的；<br />\n如果没有御用设计师的；<br />\n这时候有一些压箱底的后台模板是必要的；<br />\n这里就分享一些我到处搜刮来的免费开源的后台模板；<br />\n我已经把项目链接以及示例都整理好；<br />\n方便大家使用；<br />\n不要 998 ；<br />\n不要 888 ；<br />\n一分钱不要免费拿回家；<br />\n这里以 5 星为满分；<br />\n以我个人的感觉打分哈；</p>\n\n<h3>ace</h3>\n\n<p>推荐星级☆☆☆☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d0cfb514b.jpg\"><img alt=\"ace\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d0cfb514b.jpg\" /></a></p>\n\n<p><br />\n首先介绍的就是 ace 了；<br />\n这个模板我以前一直在用；<br />\n比如说我的开源项目&nbsp;<a href=\"https://github.com/baijunyao/thinkphp-bjyadmin\" target=\"_blank\">thinkphp-bjyadmin</a><br />\n满星打滚推荐哈；<br />\ngithub：<a href=\"https://github.com/bopoda/ace\" target=\"_blank\">https://github.com/bopoda/ace</a><br />\ndemo：<a href=\"http://ace.jeka.by/\" target=\"_blank\">http://ace.jeka.by/</a></p>\n\n<h3>gentelella</h3>\n\n<p>推荐星级☆☆☆☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d0da9f1b4.jpg\"><img alt=\"gentelella\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d0da9f1b4.jpg\" /></a></p>\n\n<p><br />\nace 是一款白色主题的后台模板；<br />\ngentelella 则是一款黑色主题的模板；<br />\n这个模板我现在也在用；<br />\n比如说我的开源项目<a href=\"https://github.com/baijunyao/laravel-bjyblog\" target=\"_blank\">laravel-bjyblog</a><br />\ngithub：<a href=\"https://github.com/puikinsh/gentelella\" target=\"_blank\">https://github.com/puikinsh/gentelella</a><br />\ndemo：<a href=\"https://colorlib.com/polygon/gentelella/index.html\" target=\"_blank\">https://colorlib.com/polygon/gentelella/index.html</a></p>\n\n<h3>blur-admin</h3>\n\n<p>推荐星级☆☆☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d0f0dd80f.jpg\"><img alt=\"blur-admin\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d0f0dd80f.jpg\" /></a></p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d0fc801c5.jpg\"><img alt=\"blur-admin\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d0fc801c5.jpg\" /></a></p>\n\n<p><br />\n这个模板比较有现代感；<br />\n而且一次就给2套；<br />\n不过是为 Angular 量身定做的；<br />\n下面的 demo 链接需要科学上网才可正常浏览；<br />\ngithub：<a href=\"https://github.com/akveo/blur-admin\" target=\"_blank\">https://github.com/akveo/blur-admin</a><br />\ndemo1：<a href=\"http://akveo.com/blur-admin-mint/#/dashboard\" target=\"_blank\">http://akveo.com/blur-admin-mint/#/dashboard</a><br />\ndemo2：<a href=\"http://akveo.com/blur-admin/#/dashboard\" target=\"_blank\">http://akveo.com/blur-admin/#/dashboard</a></p>\n\n<h3>CoreUI</h3>\n\n<p>推荐星级☆☆☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d107bc295.jpg\"><img alt=\"CoreUI\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d107bc295.jpg\" /></a></p>\n\n<p><br />\n这个模板就厉害了哈；<br />\njQuery、Angular、React、Vue 全家桶应有尽有；<br />\ngithub：<a href=\"https://github.com/mrholek/CoreUI-Free-Bootstrap-Admin-Template\" target=\"_blank\">https://github.com/mrholek/CoreUI-Free-Bootstrap-Admin-Template</a><br />\ndemo：<a href=\"https://coreui.io/demos\" target=\"_blank\">https://coreui.io/demos</a></p>\n\n<h3>Bootstrap-Admin-Theme</h3>\n\n<p>推荐星级☆☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d1158c461.jpg\"><img alt=\"Bootstrap-Admin-Theme\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d1158c461.jpg\" /></a></p>\n\n<p><br />\n这个比较简单不做过多评价；<br />\ngithub：<a href=\"https://github.com/VinceG/Bootstrap-Admin-Theme\" target=\"_blank\">https://github.com/VinceG/Bootstrap-Admin-Theme</a><br />\ndemo：<a href=\"https://github.com/tui2tone/flat-admin-bootstrap-templates\" target=\"_blank\">https://github.com/tui2tone/flat-admin-bootstrap-templates</a></p>\n\n<h3>startbootstrap-sb-admin</h3>\n\n<p>推荐星级☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d1221acb8.jpg\"><img alt=\"startbootstrap-sb-admin\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d1221acb8.jpg\" /></a></p>\n\n<p><br />\n大名鼎鼎的 sb 模板<br />\ngithub：<a href=\"https://github.com/BlackrockDigital/startbootstrap-sb-admin\" target=\"_blank\">https://github.com/BlackrockDigital/startbootstrap-sb-admin</a><br />\ndemo：<a href=\"https://blackrockdigital.github.io/startbootstrap-sb-admin/\" target=\"_blank\">https://blackrockdigital.github.io/startbootstrap-sb-admin/</a></p>\n\n<h3>startbootstrap-sb-admin-2</h3>\n\n<p>推荐星级☆☆</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20180407/5ac8d12f3023a.jpg\"><img alt=\"startbootstrap-sb-admin-2\" src=\"https://baijunyao.com/uploads/article/20180407/5ac8d12f3023a.jpg\" /></a></p>\n\n<p><br />\n除了大名鼎鼎的 sb 模板；<br />\n这还有个 sb 加强版的 sb2 模板；<br />\ngithub：<a href=\"https://github.com/BlackrockDigital/startbootstrap-sb-admin-2\" target=\"_blank\">https://github.com/BlackrockDigital/startbootstrap-sb-admin-2</a><br />\ndemo：<a href=\"https://blackrockdigital.github.io/startbootstrap-sb-admin-2/pages/index.html\" target=\"_blank\">https://blackrockdigital.github.io/startbootstrap-sb-admin-2/pages/index.html</a></p>\n');
INSERT INTO `blog_log` VALUES (15, 20, 0, 'Kubernetes高级调度- Taint和Toleration、Node Affinity分析', '老王', '', 'pub_upload/2020-10-22/c6jc7k3ebzjwgc0dty.png', 20, 0, 1602730276, 1, 0, '<p>节点即Node</p>\n\n<h2>一、Taint和Toleration</h2>\n\n<h3>污点的理论支撑</h3>\n\n<h4>1.污点设置有哪些影响效果</h4>\n\n<p>使用效果(Effect):</p>\n\n<ol>\n	<li>PreferNoSchedule:调度器尽量避免把Pod调度到具有该污点效果的节点上,如果不能避免(如其他节点资源不足),Pod也能调度到这个污点节点上。</li>\n	<li>NoSchedule:不容忍该污点效果的Pod永不会被调度到该节点上，通过kubelet管理的Pod(static Pod)不受限制;之前没有设置污点的Pod如果已运行在此节点(有污点的节点)上，可以继续运行。</li>\n	<li>NoExecute: 调度器不会把Pod调度到具有该污点效果的节点上，同时会将节点上已存在的Pod驱逐出去。</li>\n</ol>\n\n<p>污点设置的第一前提是: 节点上的污点key和Pod上的污点容忍key相匹配。</p>\n\n<h3>2. 设置污点的效果实测</h3>\n\n<h4>当Pod未设置污点容忍而节点设置了污点时</h4>\n\n<ol>\n	<li>当节点的污点影响效果被设置为:PreferNoSchedule时,已存在于此节点上的Pod不会被驱逐；新增但未设置污点容忍的Pod仍然可以被调度到此节点上。</li>\n	<li>当节点的污点影响效果被设置为:NoSchedule时,已存在于此节点上的Pod不会被驱逐;同时,新增的Pod不会被调度此节点上.</li>\n	<li>当节点的污点影响效果被设置为:NoExecute时,已存在于此节点上的Pod会发生驱逐(驱逐时间由tolerationSeconds字段确定,小于等于0会立即驱逐);新增的Pod不会调度到此节点上。</li>\n</ol>\n\n<p><strong>以上所说的Pod未设置任何的污点容忍时</strong></p>\n\n<h4>当Node设置了污点且Pod设置了对应的污点容忍时</h4>\n\n<table>\n	<thead>\n		<tr>\n			<th>Pod容忍效果</th>\n			<th>Node污点效果</th>\n			<th>是否会调度到此Node上</th>\n			<th>原因</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>PreferNoSchedule</td>\n			<td>PreferNoSchedule</td>\n			<td>&radic;</td>\n			<td>Node的污点效果和Pod的容忍效果相匹配</td>\n		</tr>\n		<tr>\n			<td>PreferNoSchedule</td>\n			<td>NoSchedule</td>\n			<td>x</td>\n			<td>Node的污点效果高于Pod的容忍效果</td>\n		</tr>\n		<tr>\n			<td>PreferNoSchedule</td>\n			<td>NoExecute</td>\n			<td>x</td>\n			<td>Node的污点效果高于Pod的容忍效果</td>\n		</tr>\n		<tr>\n			<td>NoSchedule</td>\n			<td>PreferNoSchedule</td>\n			<td>&radic;</td>\n			<td>Node的污点效果低于Pod的容忍效果</td>\n		</tr>\n		<tr>\n			<td>NoSchedule</td>\n			<td>NoSchedule</td>\n			<td>&radic;</td>\n			<td>Node的污点效果和Pod的容忍效果相匹配</td>\n		</tr>\n		<tr>\n			<td>NoSchedule</td>\n			<td>NoExecute</td>\n			<td>x</td>\n			<td>Node的污点效果高于Pod设置的容忍效果</td>\n		</tr>\n		<tr>\n			<td>NoExecute</td>\n			<td>PreferNoSchedule</td>\n			<td>&radic;</td>\n			<td>Node的污点效果低于Pod的容忍效果</td>\n		</tr>\n		<tr>\n			<td>NoExecute</td>\n			<td>NoSchedule</td>\n			<td>x</td>\n			<td>Node的污点效果和Pod的容忍程度互斥</td>\n		</tr>\n		<tr>\n			<td>NoExecute</td>\n			<td>NoExecute</td>\n			<td>x</td>\n			<td>Pod在Node上不断重建和杀掉。</td>\n		</tr>\n	</tbody>\n</table>\n\n<h4>污点容忍设置, Exists和Equal这两个操作符之间的区别是什么?</h4>\n\n<p>在配置上:</p>\n\n<p>Exists必须把值设置为空字符串，而只关心key与节点的污点key是否匹配。</p>\n\n<p>Equal需要同时设置key和value来匹配污点节点的Key和value。</p>\n\n<p>两者之间的理解加深: 1. 若一个节点存在多个污点, Pod使用Exists只容忍了其中一个污点, 仍然不能调度此节点, 原因在于Pod不容忍此节点的其他污点。 2. 若一个节点存在多个污点, Pod使用Equal只容忍了其中一个污点, 仍然不能调度此节点, 原因在于Pod还是不容忍此节点的其他污点。 3. 若想要一个Pod能够调度到含有多个污点的节点上, 那么此Pod需要容忍此节点的所有污点。</p>\n\n<h3>3.污点容忍里的一些小窍门:</h3>\n\n<ol>\n	<li>\n	<p>在污点容忍设置时,若key,value是空字符且操作符是Exists 那么能Pod容忍节点的所有污点。(注意:仍然遵从于容忍效果的等级设置)。</p>\n\n	<pre>\n例如:一个Pod在设置污点容忍时，key,value为空且操作符是Exists,容忍效果为:NoExecute,那么该Pod不会调度到污点效果为:NoSchedule的节点上。\n</pre>\n	</li>\n	<li>\n	<p>在设置污点容忍时, 若Pod的容忍效果(effect)被设置为空字符,那么Pod能匹配所有的容忍效果。</p>\n	</li>\n	<li>\n	<p>在设置污点容忍时, 若key,value是空字符、操作符是Exists且容忍效果(effect)也为空时，则等于没有设置。</p>\n	</li>\n	<li>\n	<p>默认情况下，操作符是Equal。</p>\n	</li>\n	<li>\n	<p>如果节点的影响效果是NoExecute,且不想Pod被<strong>立即</strong>驱逐,那么可以设置TolerationSeconds(延迟驱逐时间),若值是0或者负数会立即驱逐,若值大于0,则在此时间后开始驱逐。</p>\n	</li>\n	<li>\n	<p>从测试结果来看，只要节点设置了污点且效果是:NoExecute,不管Pod是否容忍了该污点都不能在对应节点上正常运行(一直处于删除，重建的过程),原因是能被调度到节点上是调度器选择的结果，Pod被杀掉是本地kubelet的结果，这是两个组件分管不同工作产生的效果,下面这种配置除外。</p>\n\n	<pre>\n  tolerations:\n  - operator: Exists\n\n#此Pod的污点配置能够容忍所有的污点，所有的影响效果，所有能调度到所有的节点上(包括影响效果被设置为:NoExecute的Node).\n</pre>\n	</li>\n</ol>\n\n<h3>4. 认知误区</h3>\n\n<ol>\n	<li>当一个节点设置了污点，那么只要设置Pod对此污点容忍就能调度上去且能正常运行。</li>\n</ol>\n\n<p>错误。当节点的一个污点的影响效果被设置为:NoExecute,此时Pod对此污点的容忍效果也是NoExecute时, Pod能调度上去，但是也会被Terminating，不断的处于Terminating,ContainerCreating的过程。</p>\n\n<p>对Node设置污点:</p>\n\n<pre>\nkubectl taint nodes 1xx status=unavailable:NoExecute\n</pre>\n\n<p>Pod设置的污点容忍:</p>\n\n<pre>\n      tolerations:\n      - effect: NoExecute\n        key: status\n        operator: Equal\n        tolerationSeconds: 0\n        value: unavailable\n</pre>\n\n<p>效果:</p>\n\n<pre>\nEvents:\n  Type     Reason            Age               From                    Message\n  ----     ------            ----              ----                    -------\n  Warning  FailedScheduling  1m (x25 over 1m)  default-scheduler       0/18 nodes are available: 1 node(s) had taints that the pod didn&#39;t tolerate, 17 Insufficient memory.\n</pre>\n\n<ol>\n	<li>当一个节点设置了多个污点，只要使用Exists操作符匹配到其中一个污点，此Pod就能调度到对应的节点上。</li>\n</ol>\n\n<p>错误。原因在于Pod只能匹配到其中一个污点,但是还是不能匹配到其他污点。所以，不能调度上去。</p>\n\n<ol>\n	<li>在设置Pod容忍时，只要匹配到key和value就行了,不用关心容忍效果的设置。</li>\n</ol>\n\n<p>错误。容忍效果的设置和key/value的设置一样重要，甚至更加重要。如果容忍效果不匹配。也会导致Pod调度不能到对应节点上。</p>\n\n<ol>\n	<li>如果Pod没有设置任何的污点容忍,Pod就不能调度到有污点的节点上。</li>\n</ol>\n\n<p>错误。如果节点的污染效果是: PreferNoSchedule, 没有设置任何污点容忍的Pod也能调度到此节点上。原因在于:PreferNoSchedule的意思是优先不调度,但是当没有节点可用时,Pod仍然能调度到此节点。</p>\n\n<h2>二、Node Affinity</h2>\n\n<p>Node Affinity可以让指定应用调度到指定的节点,这有利于应用的稳定性,减少重要业务和不重要业务之间相互抢占资源的可能,同时也可以降低不重要业务对重要业务的影响,另一方面,也能够进行多租户之间的隔离。根据租户需求为租户提供特定的运行环境。</p>\n\n<h3>NodeAffinity配置要点:</h3>\n\n<p>NodeAffinity配置分类两大部分:</p>\n\n<ol>\n	<li>requiredDuringSchedulingIgnoredDuringExecution (强亲和性)</li>\n	<li>preferredDuringSchedulingIgnoredDuringExecution (首选亲和性)</li>\n</ol>\n\n<p>但是,在真实的配置环节时,又会犯迷糊: 1. 强亲和性到底多强算强? 2. 首选亲和性中的首选体现在那些方面? 3. 强亲和性配置时,有两种配置方式,两种的区别是什么? 4. 首选亲和性中的权重值到底是什么规则? 值越大权重值越高么？还是值越小越高(1最大)? 5. 首选亲和性配置中, 如果Pod能匹配A节点的多个Label,也能匹配B节点的一个Label(A的Label权重之和等于B单个Label的权重),这时Pod会优先调度到A节点么? 6. 缩容时,是先从低权重的节点上开始杀么？ 这些问题, 我们都不能全靠注释和理解去揣测答案,必须经过实测得到真实答案,否则一旦上了生产再想修改就需要付出更大的成本。 7. 如果Pod是以强亲和性的方式绑定在节点上且Pod已经正常运行在此节点上,此时删除节点的标签是否会导致Pod重启发生漂移。</p>\n\n<h4>1、强亲和性:requiredDuringSchedulingIgnoredDuringExecution</h4>\n\n<blockquote>\n<p>例子Node Labels设定:</p>\n</blockquote>\n\n<pre>\nlevel: important(重要)，general(一般),unimportant(不重要)\n</pre>\n\n<table>\n	<thead>\n		<tr>\n			<th>Label</th>\n			<th>Node</th>\n			<th>中文解释</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>level=important</td>\n			<td>10.x.x.78, 10.1.x.x.79, 10.x.x.80</td>\n			<td>重要的</td>\n		</tr>\n		<tr>\n			<td>level=general</td>\n			<td>10.x.x.82, 10.x.x.82, 10.x.x.84</td>\n			<td>一般的</td>\n		</tr>\n		<tr>\n			<td>level=unimportant</td>\n			<td>10.x.x.86, 10.x.x.87, 10.x.x.88</td>\n			<td>不重要的</td>\n		</tr>\n		<tr>\n			<td>app=1</td>\n			<td>10.x.x.80</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>master=1</td>\n			<td>10.x.x.85</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<h5>Pod与运算的配置:</h5>\n\n<p>注意: 强亲和性的配置分为: 与运算、或运算两部分</p>\n\n<pre>\n          requiredDuringSchedulingIgnoredDuringExecution:\n            nodeSelectorTerms:\n            - matchExpressions:\n              - key: level\n                operator: In\n                values:\n                - important\n              - key: app\n                operator: In\n                values:\n                - 1\n</pre>\n\n<p>在与运算的配置中,我们发现,在同一个matchExpressions中既需要匹配level=important的标签也需要匹配app=1的标签。也就是说:Pod只会选择同时匹配这两个Label的节点.</p>\n\n<p>根据上面Pod的Node亲和性设置,两个Label求一个交集,只有同时满足两个Label的节点才会纳入这个Pod的调度池,显而易见,只有10.x.x.80这个节点。所以,此Pod只能调度到这个节点,如果这个节点资源不足,那么此Pod调度失败。</p>\n\n<h5>Pod或运算配置:</h5>\n\n<pre>\n          requiredDuringSchedulingIgnoredDuringExecution:\n            nodeSelectorTerms:\n            - matchExpressions:\n              - key: level\n                operator: In\n                values:\n                - important\n            - matchExpressions:\n              - key: level\n                operator: In\n                values:\n                - unimportant\n</pre>\n\n<p>在或运算的配置中,我们发现有一个matchExpressions数组,里面的Label列表求并集。也就是说:Pod可以选择只要匹配其中一个Label的节点就行,不用全匹配。</p>\n\n<p>举个例子:</p>\n\n<p>节点的Label设置沿用上一个例子的。 节点的标签只要能满足Pod的其中一个标签, 节点就能纳入这个Pod的调度池,显而易见,这个Pod可选的节点有:10.x.x.78, 10.x.x.79,10.x.x.80, 10.x.x.86, 10.x.x.87, 10.x.x.88。</p>\n\n<h4>首选亲和性: preferredDuringSchedulingIgnoredDuringExecution</h4>\n\n<p>它的使用风格应该是:如果Pod能调度到指定Label的节点最好,如果不能,也不强求,Pod选择其他的节点也行,即使这个节点根本没有Label或者节点的Label和我完全不匹配。</p>\n\n<p>Pod首选亲和性设置:</p>\n\n<pre>\n          preferredDuringSchedulingIgnoredDuringExecution:\n          - preference:\n              matchExpressions:\n              - key: level\n                operator: In\n                values:\n                - important\n            weight: 5\n          - preference:\n              matchExpressions:\n              - key: app\n                operator: In\n                values:\n                - &quot;1&quot;\n            weight: 4\n          - preference:\n              matchExpressions:\n              - key: master\n                operator: In\n                values:\n                - &quot;1&quot;\n            weight: 10\n</pre>\n\n<p>示例: Node的Label设置沿用上一个例子的, 根据上面的配置,我们会看到:</p>\n\n<table>\n	<thead>\n		<tr>\n			<th>Label</th>\n			<th>Pod设置的标签权重</th>\n			<th>Label对应的节点</th>\n			<th>首选</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>master=1</td>\n			<td>10</td>\n			<td>10.x.x.85</td>\n			<td>&radic;</td>\n		</tr>\n		<tr>\n			<td>app=1</td>\n			<td>4</td>\n			<td>10.x.x.80</td>\n			<td>&nbsp;</td>\n		</tr>\n		<tr>\n			<td>level=important</td>\n			<td>5</td>\n			<td>10.x.x.78,10.x.x.79,10.x.x.80</td>\n			<td>&nbsp;</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>如表所示, 最终Pod优先调度到10.x.x.85, 原因在于app=1的权重是4, level=important的权重是5, 所以:节点 10.x.x.80的权重是:9,但是仍然小于节点:10.x.x.85的权重。</p>\n\n<h4>问题总结:</h4>\n\n<ol>\n	<li>其实强亲和性和首选亲和性区别体现在:Pod对节点的选择上。就强亲和性而言,如果节点不能匹配Pod对Label的要求, Pod永远不会调度到这类节点上,即使是Pod调度失败(没错,就是头铁),就首选亲和性来说,能调度到最优节点是一件非常值得开心的事情,如果不能调度到最优节点可以退而求其次,总有适合自己的。 (回答问题1)</li>\n	<li>首选亲和性体现在PodLabel的权重值上,而与节点Label的匹配个数无关。(回答问题2)</li>\n	<li>在首选亲和性配置中会多一个权重值的字段(weight),这个值越大,权重越大,Pod调度到对应此Label的节点的概率越高。(回答问题4)</li>\n	<li>一个节点有多个Label且节点能满足Pod所要求的所有Label,如果多个Label的权重值相加仍然小于某单个Label的节点,那么Pod首选是权重值高的节点;如果Pod能匹配到A 节点的所有Label,同时也能匹配到B 节点某一个Label.但是,A节点 Label的权重之和刚好等于B 节点的单个Label的权重，这时,Pod优先选择的A还是B这是随机的(只针对亲和性来说是随机的,实际情况还要考虑其他情况)。而不会管Label的匹配个数。(回答问题5)</li>\n	<li>创建或扩容Pod时,优先选择Label匹配权重值大的节点,若此节点的其他条件不满足(比如内存不足),选择次权重的,最后选择Label不匹配或者根本没有Label的节点。</li>\n	<li>(回答问题6)缩容时,随机选择Pod杀掉,而不是我们预想的从低权重的节点开始杀,这点值得注意。</li>\n	<li>(回答问题7)答案是不会,正在运行的Pod不会被调度到新的节点去, 当Pod因为某种原因重启(指Pod名字改变,触发重调度,名字不改变,意味着不触发调度器调度,只是原地重启)后,会自动调度到符合亲和性选择的节点上。</li>\n</ol>\n\n<h2>三、污点和Node Affinity的使用总结</h2>\n\n<ol>\n	<li>就污点而言,它的使用通常是负向的, 也就说, 污点常用在某Node不让大多数Pod调度只让少部分Pod调度时,又或者节点根本不参加工作负载时。比如:我们常见的master节点上不调度负载pod,保证master组件的稳定性；节点有特殊资源，大部分应用不需要而少部分应用需要,如GPU。</li>\n	<li>就Node Affinity来说,他的使用可以正向的,也就是说,我们想让某个应用的Pod部署在指定的一堆节点上。当然,也可以是负向的,比如说我们常说的Node 反亲和性,只需要把操作符设置为NotIn就能达成预期目标。</li>\n	<li>就污点而言，如果节点设置的污点效果是NoSchedule或者NoExecute,意味着没有设置污点容忍的Pod绝不可能调度到这些节点上。</li>\n	<li>就Node Affinity而言,如果节点设置了Label,但是Pod没有任何的Node Affinity设置,那么Pod是可以调度到这些节点上的。</li>\n</ol>\n\n<p><a href=\"https://yulibaozi.com/tags/kubernetes\">kubernetes</a></p>\n\n<p>373 Words</p>\n\n<p>2020-04-21 20:47 +0800</p>\n');
INSERT INTO `blog_log` VALUES (16, 21, 0, '多语言开发需要了解的国家语种代码标准', '来自白俊遥博客', '', 'pub_upload/2020-10-22/c6jc33tgrf0s3xbzh8.jpg', 4, 0, 1603361176, 1, 0, '<h3>介绍</h3>\n\n<p>在我们开发过程中；<br />\n或者在浏览网页过程中；<br />\n如果涉及到多语言；<br />\n我们会经常发现&nbsp;cn；</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20200216/5e49383c89654.png\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20200216/5e49383c89654.png\" /></a></p>\n\n<p><br />\nzh</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20200216/5e4938489ab91.jpg\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20200216/5e4938489ab91.jpg\" /></a></p>\n\n<p><br />\nzh-Hans</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20200216/5e4938531ca1b.png\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20200216/5e4938531ca1b.png\" /></a></p>\n\n<p><br />\nzh-CN&nbsp;、&nbsp;zh-cn</p>\n\n<p><a href=\"https://baijunyao.com/uploads/article/20200216/5e49385c69f08.jpg\"><img alt=\"\" src=\"https://baijunyao.com/uploads/article/20200216/5e49385c69f08.jpg\" /></a></p>\n\n<p><br />\n各种方式五花八门简直令人目瞪狗呆；<br />\n他们之间到底有什么区别？<br />\n又有什么关系？<br />\n这一切的一切；<br />\n到底是人性的扭曲？<br />\n还是道德的沦丧？<br />\n作为开发者我们应该如何选择？<br />\n带着这些疑问我们走进今天的文章；</p>\n\n<h3>ISO 639</h3>\n\n<p>说到语种有几类标准；<br />\n首先说 ISO 639 系列；<br />\nISO 639 是国际标准组织为各语言定制的语言代码；<br />\n这个标准用两个字母表示一个语种；<br />\n比如说&nbsp;zh&nbsp;表示中文、&nbsp;en&nbsp;表示英语；<br />\nzh&nbsp;是&nbsp;zhongwen&nbsp;这个拼音的缩写；<br />\nen&nbsp;则是&nbsp;english&nbsp;这个单词的缩写；<br />\n但是我们知道字母也就 26 个；<br />\n平方一下两个字母最多也就能表示 676 个语种；<br />\n面对世界上几千个语种明显是不够用的；<br />\n于是两个字母的 ISO 639 的标准作为 ISO 639-1；<br />\n接着就又扩展一个三个字母的版本 ISO 639-2；<br />\n根据上面的经验我们可以直接蒙对中英文的语种代码&nbsp;zho&nbsp;、&nbsp;eng；<br />\n这套标准对于大多数国家已经够用了；<br />\n然鹅制定这套标准的歪果仁明显是不了解中华文化的博大精深；<br />\n作为柴那人民我们知道中文可是分为简体中文和繁体中文的；<br />\n如果语种还有子类；<br />\n当我们需要具体到子类语种的时候；<br />\n这个标准明显是又不够我们用了；<br />\n我们就不再过多的去研究 ISO 639 的后续版本了；</p>\n\n<p><a href=\"https://datahub.io/core/language-codes\" target=\"_blank\">ISO 639 代码列表</a></p>\n\n<h3>ISO 3166</h3>\n\n<p>上面的 ISO 639 规范的是语种代码；<br />\n但是我们知道英国和美国都是使用的英语；<br />\n如果我想具体表达某个国家地区呢？<br />\nISO 3166 规范就是定义国家和地区代码的；&nbsp;CN&nbsp;是&nbsp;China&nbsp;的简称；<br />\nTW&nbsp;是&nbsp;Taiwan, Province of China&nbsp;的简称；<br />\nUS&nbsp;是&nbsp;United States of America&nbsp;的简称；<br />\nISO 3166 标准还被广泛的应用于域名后缀；<br />\n中国的国家顶级域名就是&nbsp;.cn&nbsp;；<br />\n<a href=\"https://datahub.io/core/country-list\" target=\"_blank\">ISO 3166 代码列表</a></p>\n\n<h3>RFC 1766</h3>\n\n<p>有了 ISO 639 语种代码和 ISO 3166 国家地区代码；<br />\n我们组合起来就可以同时满足语种和国家的需求了；<br />\nRFC 1766 标准就是一个组合方案；<br />\n它把 ISO 639 和 ISO 3166 用&nbsp;-&nbsp;拼接来表示不同的国家和地区使用的语种；<br />\n比如说&nbsp;zh-CN&nbsp;表示中国大陆的中文；<br />\n那&nbsp;zh-TW&nbsp;则表示台湾地区使用的中文；<br />\n而&nbsp;zh-HK&nbsp;则表示香港地区使用的中文； 在 RFC 1766 标准下；<br />\n我们一般使用&nbsp;zh-CN&nbsp;表示简体中文；<br />\n而用&nbsp;zh-TW&nbsp;表示繁体中文；<br />\nRFC 1766 还被广泛的用于 HTML 的&nbsp;lang；</p>\n\n<pre>\n&lt;html lang=&quot;zh-CN&quot; dir=&quot;ltr&quot; class=&quot;no-js&quot;&gt;\n&lt;html lang=&quot;zh-TW&quot; dir=&quot;ltr&quot; class=&quot;no-js&quot;&gt;</pre>\n\n<p>HTML</p>\n\n<p>Copy</p>\n\n<p><a href=\"https://docs.microsoft.com/en-us/windows/win32/wmformat/language-strings\" target=\"_blank\">RFC 1766 代码列表</a></p>\n\n<h3>RFC4646</h3>\n\n<p>上面 RFC 1766 方案已经可以让我们具体到语种和地区了；<br />\n但是又有很多时候我们并不是很关心地区；<br />\n而是比较关心子语种；<br />\n比如说我们可能只需要细化到中文简体和中文繁体就行了；<br />\n而并不打算具体到是香港地区使用的繁体还是台湾地区使用的繁体；<br />\n虽然 RFC 1766 中人们一般用&nbsp;zh-TW&nbsp;表示繁体； 已经满足区分简体中文和繁体中文的需求；<br />\n但是面向香港客户给一个&nbsp;zh-TW&nbsp;而不是&nbsp;zh-HK&nbsp;总还是让人略有不爽；<br />\n这时候我们需要一个能用来代表繁体中文又没有歧义的代码；<br />\n这就是接下来要讲的 RFC4646； 这里依然以中文为示例；<br />\n在 RFC4646 中代码第一部分同样是 ISO 639-1 的两位字母缩写&nbsp;zh；<br />\n后面跟的是&nbsp;Hans&nbsp;和&nbsp;Hant&nbsp;；<br />\nHan&nbsp;汉语的意思；<br />\ns&nbsp;是 Simplified 简体；<br />\nt&nbsp;是 Traditional 繁体；<br />\nzh-Hans&nbsp;表示简体中文；<br />\nzh-Hant&nbsp;表示繁体中文；<br />\n如果想具体到地区；<br />\nRFC4646 标准还可以再加第三部分 ISO 3166 国家代码；<br />\n比如说&nbsp;zh-Hans-CN&nbsp;表示大陆地区使用的简体中文；<br />\n比如说&nbsp;zh-Hant-TW&nbsp;表示台湾地区使用的繁体中文；<br />\n不过一般不用第三部分；</p>\n\n<p><a href=\"https://www.iana.org/assignments/language-tags/language-tags.xhtml\" target=\"_blank\">RFC4646 代码列表</a></p>\n\n<h3>总结</h3>\n\n<table>\n	<thead>\n		<tr>\n			<th>标准</th>\n			<th>简体中文</th>\n			<th>繁体中文</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>ISO 639-1</td>\n			<td>zh</td>\n			<td>zh</td>\n		</tr>\n		<tr>\n			<td>ISO 3166</td>\n			<td>cn</td>\n			<td>cn</td>\n		</tr>\n		<tr>\n			<td>RFC 1766</td>\n			<td>zh-CN</td>\n			<td>zh-TW</td>\n		</tr>\n		<tr>\n			<td>RFC4646</td>\n			<td>zh-Hans</td>\n			<td>zh-Hant</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>在开发过程中；<br />\n如果是想按国家划分可以使用 ISO 3166 标准；<br />\n如果是想按语种划分可以使用 ISO 639-1 标准；<br />\n如果是想具体到简体和繁体；<br />\nRFC 1766 和 RFC4646 两个标准都可以；<br />\n但是如果只是想表示语种而不想纠结地区；<br />\n那么显然 RFC4646 会更加合适；</p>\n');
INSERT INTO `blog_log` VALUES (17, 18, 2, 'ECS云服务器爆款榜单', '阿里云', 'https://www.aliyun.com/activity/daily/bestoffer?userCode=fcor2omk', 'pub_upload/2020-12-07/c7mdpusz1pesuaycoo.jpg', 2, 0, 1607313275, 1, 0, '<p>ECS云服务器爆款榜单</p>\n');
INSERT INTO `blog_log` VALUES (18, 18, 2, '【腾讯云】云产品限时秒杀，爆款1核2G云服务器，首年99元', '腾讯云', 'https://curl.qcloud.com/wkpaUVOU', 'pub_upload/2020-12-07/c7mgrw51i9lktatueh.jpg', 0, 0, 1607335204, 1, 0, '<p>【腾讯云】云产品限时秒杀，爆款1核2G云服务器，首年99元</p>\n');
INSERT INTO `blog_log` VALUES (19, 18, 1, 'Gfast 管理系统工作流视频介绍', '奇讯科技', '', 'pub_upload/2020-12-07/c7mh10o2b6dkih7gzk.png', 0, 0, 1607336005, 1, 0, '<p>一直以来感谢大家关注Gfast管理系统，目前工作流进入最后测试阶段，预计会在下星期开源工作流。</p>\n\n<p>Gfast 管理系统工作流视频介绍请访问：</p>\n\n<p>https://www.bilibili.com/video/BV1W5411G7Gm?from=search&amp;seid=3375436643897774672</p>\n\n<p><img alt=\"\" src=\"http://192.168.0.212:8201/pub_upload/2020-12-07/c7mh4ay64zhciwu42z.png\" style=\"height:705px; width:1204px\" /></p>\n');

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `ptype` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v0` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v1` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v2` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v3` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v4` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `v5` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_1', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_5', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_19', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_20', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_21', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_22', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_23', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_24', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_25', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_8', 'r_6', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_1', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_5', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_19', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_20', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_21', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_22', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_23', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_24', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_25', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_6', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_2', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_8', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_16', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_17', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_18', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_26', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_27', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_29', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_30', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_31', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_28', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_33', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_40', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_3', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_34', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_36', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_37', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_38', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_39', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_4', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_32', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_1', 'r_35', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_1', 'g_1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_1', 'g_3', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_22', 'g_2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_22', 'g_1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_31', 'g_1', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_31', 'g_2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_15', 'g_2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_16', 'g_3', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_3', 'g_2', '', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_1', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_5', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_19', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_20', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_21', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_22', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_23', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_24', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_25', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_6', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_41', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_42', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_43', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_2', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_8', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_16', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_17', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_18', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_26', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_27', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_29', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_30', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_31', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_28', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_33', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_40', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_3', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_34', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_36', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_37', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_38', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_39', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_4', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_32', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', 'g_2', 'r_35', 'All', '', '', '');
INSERT INTO `casbin_rule` VALUES ('g', 'u_2', 'g_1', '', '', '', '');

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '分类父id',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模型ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '栏目别名',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类描述',
  `seo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `list_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  `cate_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '分类类型',
  `cate_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转地址',
  `cate_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '单页内容',
  `list_template` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列表页模板',
  `content_template` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容页模板',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (16, 0, 9, 1, 0, 0, '最新推荐', '', '', '', '', '', '', '', '', 3, '/cms', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (17, 0, 9, 1, 0, 0, '新闻快报', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (18, 0, 9, 1, 0, 0, '科技创新', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (19, 0, 9, 1, 0, 0, '房产家居', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (20, 0, 9, 1, 0, 0, '汽车资讯', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (21, 0, 9, 1, 0, 0, '旅游攻略', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (22, 0, 9, 1, 0, 0, '体育视界', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (23, 0, 9, 1, 0, 0, '财经股票', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (24, 0, 9, 1, 0, 0, '美食天地', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (25, 0, 9, 1, 0, 0, '教育公益', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (26, 17, 9, 1, 0, 0, '国内新闻', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (27, 17, 9, 1, 0, 0, '国际新闻', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (28, 26, 9, 1, 0, 0, '时政新闻', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (29, 26, 9, 1, 0, 0, '趣文概要', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (30, 18, 9, 1, 0, 0, '创业俱乐部', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (31, 18, 9, 1, 0, 0, '区块链', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (32, 18, 9, 1, 0, 0, '互联网', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (33, 19, 9, 1, 0, 0, '新房', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (34, 19, 9, 1, 0, 0, '二手房', '', '', '', '', '', '', '', '', 1, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (35, 20, 9, 1, 0, 0, '上市新车', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (36, 20, 9, 1, 0, 0, '用车小百科', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (37, 27, 9, 1, 0, 0, '国际时政', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');
INSERT INTO `cms_category` VALUES (38, 27, 9, 1, 0, 0, '人文风景', '', '', '', '', '', '', '', '', 2, '', '', 'list/list.html', 'content/show.html');

-- ----------------------------
-- Table structure for cms_category_news
-- ----------------------------
DROP TABLE IF EXISTS `cms_category_news`;
CREATE TABLE `cms_category_news`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `cid_nid_unique`(`news_id`, `category_id`) USING BTREE,
  INDEX `term_taxonomy_id`(`news_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 276 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'cms应用 分类文章对应表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_category_news
-- ----------------------------
INSERT INTO `cms_category_news` VALUES (242, 111, 24);
INSERT INTO `cms_category_news` VALUES (241, 113, 24);
INSERT INTO `cms_category_news` VALUES (256, 115, 21);
INSERT INTO `cms_category_news` VALUES (257, 115, 24);
INSERT INTO `cms_category_news` VALUES (244, 116, 24);
INSERT INTO `cms_category_news` VALUES (246, 118, 24);
INSERT INTO `cms_category_news` VALUES (248, 119, 24);
INSERT INTO `cms_category_news` VALUES (251, 120, 24);
INSERT INTO `cms_category_news` VALUES (255, 121, 23);
INSERT INTO `cms_category_news` VALUES (259, 122, 37);
INSERT INTO `cms_category_news` VALUES (260, 123, 29);
INSERT INTO `cms_category_news` VALUES (262, 124, 32);
INSERT INTO `cms_category_news` VALUES (268, 125, 33);
INSERT INTO `cms_category_news` VALUES (264, 126, 35);
INSERT INTO `cms_category_news` VALUES (265, 127, 22);
INSERT INTO `cms_category_news` VALUES (274, 128, 25);
INSERT INTO `cms_category_news` VALUES (271, 129, 21);
INSERT INTO `cms_category_news` VALUES (272, 129, 38);
INSERT INTO `cms_category_news` VALUES (275, 130, 28);

-- ----------------------------
-- Table structure for cms_news
-- ----------------------------
DROP TABLE IF EXISTS `cms_news`;
CREATE TABLE `cms_news`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表者用户id',
  `news_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:已发布;0:未发布;',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `is_slide` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否幻灯 1是 0否',
  `news_hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看数',
  `news_like` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `published_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `news_title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `news_keywords` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `news_excerpt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'post摘要',
  `news_source` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '缩略图',
  `is_jump` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否跳转地址',
  `jump_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NULL DEFAULT NULL COMMENT '跳转地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'cms信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_news
-- ----------------------------
INSERT INTO `cms_news` VALUES (111, 2, 1, 1, 1, 1, 22, 0, 1603786563, 1603960985, 1603786513, 0, ' 炒面多做这一步会特香，吃一碗根本不够', '', '炒面是我家的日常早餐之一，也没有为什么，主要是比较耐饿，记得少时妈妈在炒面的时候，总放点咱仨姐弟喜欢的配菜，虽然说是普普通通的，但不知为啥特别香，有时想来，也不失为一种让人怀念惦记的家常美味，也可以说是家的味道', '', 'pub_upload/2020-10-27/c6niwywhjvjcjgde1s.jpeg', 0, '');
INSERT INTO `cms_news` VALUES (113, 2, 1, 1, 1, 1, 3, 0, 1603875574, 1603960967, 1603875523, 0, '夏天这样做馒头，比酵母馒头省事又好吃', '', '饮食常常能体现一个地方的特色。北方夏天吃馒头是常事，早上一碗稀饭几个馒头，搭配适量的咸菜是北方人常吃的早餐，这样简易又营养的早餐，足以体现北方人对面食的热爱，而山西人吃面食也是全国有名的，而这边人吃馒头大都是老面发酵的方式，老面馒头吃起来劲道、麦香、柔软、又白又大，吃过的人都知道这样的老式发酵的面食才地道好吃！', '', 'pub_upload/2020-10-28/c6oegkcicda8ecbjfl.jpg', 0, '');
INSERT INTO `cms_news` VALUES (115, 2, 1, 1, 1, 1, 13, 0, 1603937779, 1604026571, 1603937711, 0, '超美的三亚,5天4晚全五星酒店高大上自由行', '', '海南，简称“琼”，中华人民共和国省级行政区，省会海口。海南省位于中国最南端，北以琼州海峡与广东省划界，西临北部湾与广西壮族自治区和越南相对，东濒南海与台湾省对望， 东南和南边在南海中与菲律宾、文莱和马来西亚为邻。省内的三沙市是中国地理位置最南、总面积最大（含海域面积）、陆地面积最小且人口最少的地级区划。海南省下辖4个地级市，5个县级市，4个县，6个自治县；截至2017年末，全省常住人口925.76万人。', '', 'pub_upload/2020-10-29/c6p0haeubqqsnlhejw.jpg', 0, '');
INSERT INTO `cms_news` VALUES (116, 2, 1, 0, 1, 1, 1, 0, 1603961187, 1603961253, 1603961115, 0, '菜市场的这4种猪肉，再便宜也不能买，主妇必看', '', '现如今，越来越多的小伙伴加入到无肉不欢的队伍中来，可见肉是多么勾人胃口。今天发哥要说的，是最常见的猪肉，菜场的猪肉五花八门，怎么挑选才最好呢？值得注意的是，下面这4种猪肉，再便宜也不能买。', '', 'pub_upload/2020-10-29/c6p8s7uup7x4xymfea.jpg', 0, '');
INSERT INTO `cms_news` VALUES (118, 2, 1, 0, 1, 1, 3, 0, 1603961393, 1603961393, 1603961317, 0, '家常豆腐这样做，非常下饭，简单易学', '', '来到青海出差，吃到了好多当地的美食啊，味道正宗不说，服务还很好。其中有这样一道菜，是由肉丸、豆腐和肉块炖成的，味道很小，这边的朋友说这是当地最有特色的食物之一。遗憾的是，我实在是没有记住是什么菜名，所以大概只能吃到这一次了，一想到这里，我就觉得莫名的有些难过。', '', 'pub_upload/2020-10-29/c6p8uohyl7kg6caoxf.jpg', 0, '');
INSERT INTO `cms_news` VALUES (119, 2, 1, 0, 1, 0, 2, 0, 1603961644, 1603961653, 1603961440, 0, '人莫不能饮食也，鲜能知味也', '', '时下，流行一种说法：懂得生活的人，是不会亏待自己的胃的；热爱生活的人，是不会让自己的心灵寂寞的。因为人最原始的需求就是由温饱而求舌尖美味，继而寻找精神上的愉悦。品味美食，总能让人得到心理上的满足，是一种让自己快乐的生活方式，是真实自然的慰藉；是一种向生命表达善意的举动，是水到渠成的升华。', '', 'pub_upload/2020-10-29/c6p8xz30dbhcxzygv6.png', 0, '');
INSERT INTO `cms_news` VALUES (120, 2, 1, 0, 1, 1, 1, 0, 1603961750, 1604020305, 1603961685, 0, '超好吃的成都美食，这是一篇有味道的文章', '', '中国地广物博，各地饮食更是五花八门，各具持色...其中就有这样一座城市，让你来了就不想走...不是因为太美的风景驻足，而是它牢牢地拴住了一个吃货的心，如果说，在这么多城市中选择一座一定要去的城市，那肯定是吃货的天堂“天府之国”的成都啦~下面就来简单的盘点一下，成都必吃的美食吧', '', 'pub_upload/2020-10-29/c6p8za2ovxxgp3vejs.jpg', 0, '');
INSERT INTO `cms_news` VALUES (121, 2, 1, 0, 0, 0, 3, 0, 1604020316, 1604020440, 1604020308, 0, '14部门联合发文 19条措施力挺扩内需促消费', '', '10月29日，国家发展改革委发布通知指出，国家发展改革委等14个部门共同研究制定了《近期扩内需促消费的工作方案》（以下简称《方案》）。《方案》从推动线下服务消费加速“触网”、开辟服务消费新模式、实施促进实物消费政策、加大对制造业企业支持力度等四个方面推出19条措施。', '', '', 0, '');
INSERT INTO `cms_news` VALUES (122, 2, 1, 0, 1, 0, 0, 0, 1604028550, 1604028655, 1604028490, 0, '特朗普发推提主张：美国和欧盟同时取消所有关税', '', '特朗普在推文中称，“欧盟明天将前往华盛顿商讨贸易协议。我有个主张，美国和欧盟同时取消所有关税、壁垒以及补贴。那样最终会被视为自由市场和公平贸易！希望他们能做到，我们是已经做好了准备——但他们不会。”', '', 'pub_upload/2020-10-30/c6pwno8goau0ukjg3q.jpg', 0, '');
INSERT INTO `cms_news` VALUES (123, 2, 1, 0, 0, 0, 1, 0, 1604028769, 1604028769, 1604028668, 0, '徐峥最满意的影片,《药神》火爆背后的主创故事', '', '2017年3月，南京，深夜，驻组宾馆，《我不是药神》的主要演员，徐峥、周一围、王传君、谭卓、章宇、杨新鸣、李乃文围读剧本以后，开始一场场地排戏。像在话剧舞台上，演员们都十分投入，随着语气时而高昂，时而低沉，幽默、温馨、凝重等气氛在简单的小会议室里轮番上演。', '', 'pub_upload/2020-10-30/c6pwqm121lnoncnkvs.jpg', 0, '');
INSERT INTO `cms_news` VALUES (124, 2, 1, 0, 1, 1, 1, 0, 1604028843, 1604028862, 1604028801, 0, '最全汇总：iPhone X Plus的传闻都在这儿了', '', '外界普遍预计，苹果将在两个月以后发布三款新 iPhone，包括 5.8 英寸 iPhone X 的继任者、尺寸更大的 iPhone X Plus 以及一款价格较低的 LCD iPhone 机型。我们暂且将较大英寸的 OLED 机型称为 iPhone X Plus，到目前为止，关于这款机型的传闻有很多，今天我们就来汇总一下。', '', 'pub_upload/2020-10-30/c6pwrxducjwol7kb2q.jpeg', 0, '');
INSERT INTO `cms_news` VALUES (125, 2, 1, 0, 1, 0, 2, 0, 1604028929, 1604029262, 1604028885, 0, '百城住宅库存连跌35个月 三四线库存创10年新低', '', '随着三、四线城市楼市交易量的提升，全国百城住宅库存再次降低。截至6月底，全国百城住宅库存已经连续35个月减少。', '', 'pub_upload/2020-10-30/c6pwsqcu6mi85nxf0g.png', 0, '');
INSERT INTO `cms_news` VALUES (126, 2, 1, 0, 1, 0, 0, 0, 1604029060, 1604029060, 1604028980, 0, '特斯拉Model 3高清官图公布:设计极简 配15英寸大号iPad', '', '特斯拉Model 3是是特斯拉Model X系列的新品，北京时间2016年4月1日11点30分在美国发布，基础售价35000美元。在开放官网预定之前，仅靠门店排队预定，Model 3的订单数量已经超过11.5万辆。', '', 'pub_upload/2020-10-30/c6pwuapknpacaljqm5.jpg', 0, '');
INSERT INTO `cms_news` VALUES (127, 2, 1, 0, 1, 1, 3, 0, 1604029132, 1604029132, 1604029092, 0, '世界杯最大牌女球迷，一举动令人钦佩', '', '要说世界杯最大牌的女球迷，一定就是克罗地亚总统格拉巴尔·基塔罗维奇，为了支持球队，她没有像其他国家元首那样坐在VIP包厢，而是和球迷出现在看台上，这样的亲民让人钦佩。如今，克罗地亚杀入8强，接下来四分之一决赛对阵俄罗斯，格拉巴尔·基塔罗维奇也将赴现场为球队加油打气。', '', 'pub_upload/2020-10-30/c6pwvdddc9kolqpyvu.jpg', 0, '');
INSERT INTO `cms_news` VALUES (128, 2, 1, 0, 0, 0, 0, 0, 1604029202, 1604041385, 1604029162, 0, '百胜中国“捐一元”开启第十一年爱心之旅', '', '对于贵州省三都水族自治县都江镇甲找村甲找小学的师生而言，7月24日是个美好的日子。学校里来了许多和善的叔叔阿姨，他们带着满满的爱心，为孩子们送上用心准备的礼物：精美的图书、崭新的体育用品……中国扶贫基金会执行副理事长王行最', '', 'pub_upload/2020-10-30/c6pww9dkku60m8yrpv.jpg', 0, '');
INSERT INTO `cms_news` VALUES (129, 2, 1, 0, 0, 1, 1, 0, 1604029355, 1604029380, 1604029313, 0, '摩洛哥撒哈拉攻略干货，解锁网红拍照点', '', '撒哈拉之于我，除了三毛还有地理书上学到的世界上最大的沙漠。我想亲近沙子，想去看看这个世界上最大的猫砂盆到底长啥样。\n进撒哈拉有三种方式。一种是自驾，但是有些路段不建议自驾，且摩洛哥警察真的很坑啊啊，随便就是几百上千罚款不见了。第二种是三天两夜散拼团，一般十几个人以上，可以结识世界各地的朋友，但是拼团的住宿条件和车况不太好，听说晚上都是睡大通铺，而且不能洗澡充电。第三种是三天两夜私人团，沙漠里有独立房间，可以洗澡且是白帐篷，好看的多且是4驱越野车。私人团还有四天三夜，行程会更放松，有时间的强烈建议4天3夜。', '', 'pub_upload/2020-10-30/c6pwy5wn1398e93sjy.jpg', 0, '');
INSERT INTO `cms_news` VALUES (130, 2, 1, 0, 0, 0, 4, 0, 1604029504, 1605769566, 1604029434, 0, '时政新闻眼丨五中全会公报这些新提法，即将走进你我生活', '', '“全面促进消费”“扎实推动共同富裕”“新型工农城乡关系”“实施乡村建设行动”“促进经济社会发展全面绿色转型”“确保二〇二七年实现建军百年奋斗目标”……这些新提法、新部署体现了鲜明的问题导向，彰显了以人民为中心的发展思想。', '', 'pub_upload/2020-10-30/c6pwzxde4qkkciir2g.jpeg', 0, '');

-- ----------------------------
-- Table structure for cms_news_attr
-- ----------------------------
DROP TABLE IF EXISTS `cms_news_attr`;
CREATE TABLE `cms_news_attr`  (
  `art_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  `thumbnail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '缩略图',
  `news_files` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '附件',
  `news_file` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '单附件',
  `news_imgs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '多图片',
  `news_title` int(11) NOT NULL DEFAULT 0 COMMENT '文章标题',
  `news_info` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '多选测试',
  `time_demo` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时间测试',
  PRIMARY KEY (`art_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 131 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_news_attr
-- ----------------------------
INSERT INTO `cms_news_attr` VALUES (111, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b56-800x400.jpeg\" style=\"height:400px; width:800px\" /></p>\n\n<p>炒面是我家的日常早餐之一，也没有为什么，主要是比较耐饿，记得少时妈妈在炒面的时候，总放点咱仨姐弟喜欢的配菜，虽然说是普普通通的，但不知为啥特别香，有时想来，也不失为一种让人怀念惦记的家常美味，也可以说是家的味道</p>\n\n<p>犹自记得我曾问老妈为啥她炒的面那么香，她就说这有什么难，只要花小许时间和耐性，把面条煎得有点焦脆，再做后面的步骤，这样炒出的面条肯定会特别香，配点肉丝、榨菜、鸡蛋&hellip;就非常美味，后来我每逢炒面也会照着做，儿子吃了一碗肯定是不够的，还不断追问有吗？有吗？</p>\n\n<p>材料：鸡蛋面（干） 1块，肉丝 50克，榨菜 15克，鸡蛋 1个，韭菜花30克，胡萝卜 10克，蒜 5克，小葱 5克</p>\n\n<p>辅料：亚麻籽油 15克，麻油 5克</p>\n\n<p>调味：蚝油 1匙，生抽 1匙，胡椒粉 1克</p>\n\n<p>各材料，肉丝用小许盐、糖、胡椒粉腌过，韭菜花、胡萝卜切段、切丝</p>\n\n<p>鸡蛋面用沸水焯1分钟</p>\n\n<p>焯过的面条再用冷水冲过，滤去水分</p>\n\n<p>鸡蛋煎好后切小段，待用</p>\n\n<p>热锅，爆香蒜后下肉丝炒熟，再放榨菜拌一下，盛起待用</p>\n\n<p>再加点油，下面条煎至有点焦脆。加入蚝油与生抽</p>\n\n<p>调味料与面炒均匀后，再下韭菜花</p>\n\n<p>韭菜花炒至转绿后加入鸡、肉丝、榨菜、小葱</p>\n\n<p>全部材料炒透</p>\n\n<p>淋入麻油拌好，关火</p>\n\n<p>上碟即可，吃早餐啦！</p>\n', '', '', '', '', 0, '1,2', 1603786516);
INSERT INTO `cms_news_attr` VALUES (113, '<h1><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b57-800x400.jpg\" style=\"height:400px; width:800px\" /></h1>\n\n<p>饮食常常能体现一个地方的特色。北方夏天吃馒头是常事，早上一碗稀饭几个馒头，搭配适量的咸菜是北方人常吃的早餐，这样简易又营养的早餐，足以体现北方人对面食的热爱，而山西人吃面食也是全国有名的，而这边人吃馒头大都是老面发酵的方式，老面馒头吃起来劲道、麦香、柔软、又白又大，吃过的人都知道这样的老式发酵的面食才地道好吃！</p>\n\n<p>回老家就是能吃地道的面食。老妈经常给我们做各种各样的面食，花卷、馒头、各种菜馅儿包子、面条&hellip;&hellip;凡是常吃的老妈都要做一遍。今天做了孩子最喜欢吃的奶香馒头，这样的馒头特别适合孩子吃，营养翻倍，口感柔软香甜，孩子特别喜欢吃！</p>\n\n<p>制作配料：面粉300克 食用碱适量 小苏打适量 温水适量 奶粉20克</p>\n\n<p>制作方法：</p>\n\n<p>1、面粉用温水和成面团，放在温暖的地方发酵成蜂窝状；</p>\n\n<p>2、发酵好的面团放入适量食用碱、小苏打；</p>\n\n<p>3、直到面团变得蓬松又紧致，再加入奶粉揉均匀；</p>\n\n<p>4、切开面团看有很多细小的空洞；</p>\n\n<p>5、面团确定好碱水量，搓成长条，切成大小一致的小剂子；</p>\n\n<p>6、均匀地摆放在蒸笼屉上；</p>\n\n<p>7、开水上锅蒸15分钟左右即可；</p>\n\n<p>【注意事项】</p>\n\n<p>老面发酵的馒头最重要就是碱水量的控制，碱水量大了发黄，碱水量小了就发酵不起来，如果新手做，就要上锅测试碱水量是否合适；</p>\n', '', '[{\"name\":\"b57-800x400.jpg\",\"status\":\"success\",\"uid\":1603875652444,\"url\":\"pub_upload/2020-10-28/c6oeguxwjjv4rm8zja.jpg\"}]', '', '', 0, '1', 1603875527);
INSERT INTO `cms_news_attr` VALUES (115, '<p><img alt=\"\" src=\"http://localhost:8200/pub_upload/2020-10-29/c6p0hgixeelomzqqt5.jpg\" style=\"height:400px; width:800px\" /></p>\n\n<p>海南，简称&ldquo;琼&rdquo;，中华人民共和国省级行政区，省会海口。海南省位于中国最南端，北以琼州海峡与广东省划界，西临北部湾与广西壮族自治区和越南相对，东濒南海与台湾省对望， 东南和南边在南海中与菲律宾、文莱和马来西亚为邻。省内的三沙市是中国地理位置最南、总面积最大（含海域面积）、陆地面积最小且人口最少的地级区划。海南省下辖4个地级市，5个县级市，4个县，6个自治县；截至2017年末，全省常住人口925.76万人。</p>\n\n<p>海南省陆地（主要包括海南岛和西沙群岛、中沙群岛、南沙群岛）总面积3.54万平方公里， 海域面积约200万平方公里。海南岛是仅次于台湾岛的中国第二大岛，海南省是中国国土面积（含海域）第一大省。 海南别称琼崖、琼州，西元前110年，中央政府在海南岛设置珠崖郡、儋耳郡，属交州刺史管辖，标志着海南正式纳入中国版图。1988年4月13日，海南行政区从广东省划出，独立建省，海南省和海南经济特区正式成立。海南经济特区是中国最大的，也是唯一的省级经济特区。</p>\n\n<p>2018年4月13日，党中央决定支持海南全岛建设自由贸易试验区，支持海南逐步探索、稳步推进中国特色自由贸易港建设，分步骤、分阶段建立自由贸易港政策和制度体系。</p>\n\n<p>2018年6月3日，经海南省委、省政府深入调研、统筹规划，决定设立海口江东新区，将其作为建设中国（海南）自由贸易试验区的重点先行区域。</p>\n\n<p>三亚北靠高山，南临大海，地势自北向南逐渐倾斜，形成一个狭长状的多角形。境内海岸线长258.65千米，有大小港湾19个。主要港口有三亚港、榆林港、南山港、铁炉港、六道港等。主要海湾有三亚湾、海棠湾、亚龙湾、崖州湾、大东海湾、月亮湾等。有大小岛屿40个，主要岛屿10个。</p>\n\n<p>三亚拥有200万平方千米的南海，自己的海岸线长度是209千米，管辖的海域面积5000平方千米，拥有土地面积是1919.6平方千米。</p>\n\n<p>三亚市区三面环山，北有抱坡岭，东有大会岭、虎豹岭和海拔393米的高岭（狗岭），南有南边岭，形成环抱之势，山岭绵延起伏、层次分明；同时，山脉的延伸将市区分成若干青山围成的空间，为城市不同地区提供了各具特色的空间景观环境。三亚面临南海，海湾较多，众多海湾各有佳景。处于市区的大东海、小东海、三亚湾与市民生活的关系最为密切。</p>\n', '', '', '', '', 0, '1', 1603937714);
INSERT INTO `cms_news_attr` VALUES (116, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b54-800x400.jpg\" style=\"height:400px; width:800px\" /></p>\n\n<p>现如今，越来越多的小伙伴加入到无肉不欢的队伍中来，可见肉是多么勾人胃口。今天发哥要说的，是最常见的猪肉，菜场的猪肉五花八门，怎么挑选才最好呢？值得注意的是，下面这4种猪肉，再便宜也不能买。</p>\n\n<p>1.按压无弹性</p>\n\n<p>新鲜的猪肉质地紧密而富有弹性，宝宝们买的时候用手指按压一下，凹陷会立刻复原。如果猪肉贮藏时间过长或被注水，其中的蛋白质和脂肪会逐渐分解，从而使肌纤维被破坏，这将导致猪肉表面失去弹性。</p>\n\n<p>2.摸起来黏手</p>\n\n<p>注意啦，新鲜的猪肉外表应是微干或湿润的，其切面会有点潮湿，摸起来有油质感，但不黏手。如果摸起来黏手，是猪肉变质的标志。</p>\n\n<p>3.表面没光泽</p>\n\n<p>看起来没有光泽，表面或面呈灰色或暗红色，表皮脂肪有部分淡绿色的污秽，这样的猪肉是很不新鲜的。新鲜猪肉为淡红色或淡粉色，表皮肥肉部分呈有光泽的白色。</p>\n\n<p>4.肥肉层太薄</p>\n\n<p>一般来讲，普通品种的猪肉肥膘较厚，而杂交品种的猪肉肥膘较薄。需要注意的是，含瘦肉精的猪肉除了异常鲜艳外，其皮下肥肉层也较薄，通常不足1厘米，肌纤维比较疏松，对于这种肉，要谨慎购买。</p>\n\n<p>最近有很多粉丝在群里问发哥，不同的排骨怎么烹饪。其实排骨是猪肋骨的统称，包含了肋排、脊骨、大排、前排等，每一种适合的烹饪方式也有不同，下面发哥就带你来详细了解一下，厨房小白看过来！</p>\n\n<p>1.大排大排也叫中排，因地域差别各个地方有各个地方的叫法。大排在猪身上的腹腔部位，也就是到三线肉那点，大排肉质鲜嫩，无论是煲汤、蒸制，还是做糖醋排骨、粉蒸排骨都很适合。</p>\n\n<p>2.前排前排也称小排，同时也分无颈前排和带颈前排。最佳用处：因为前排身处猪靠颈部，骨骼相对粗大些，肉质还是很细嫩的所有建议煲汤、红烧等。</p>\n\n<p>3.精肋排</p>\n\n<p>精肋排是猪身上最好的排骨，精肋排的特点是除去了多余的大骨，排骨上面的肉包裹均匀饱满，所以这样的排骨通称精肋排，很适合用来做糖醋排骨，香酥排骨等。</p>\n\n<p>4.子排子排是指腹腔连接背脊的部位，呈三角形斜切片状。子排的肉层很厚。适合炸、烤、红烧，长度以5～7厘米为宜。</p>\n', '', '', '', '', 0, '1', 1603961145);
INSERT INTO `cms_news_attr` VALUES (118, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b55-800x400.jpg\" style=\"height:400px; width:800px\" /></p>\n\n<p>来到青海出差，吃到了好多当地的美食啊，味道正宗不说，服务还很好。其中有这样一道菜，是由肉丸、豆腐和肉块炖成的，味道很小，这边的朋友说这是当地最有特色的食物之一。遗憾的是，我实在是没有记住是什么菜名，所以大概只能吃到这一次了，一想到这里，我就觉得莫名的有些难过。</p>\n\n<p>这道菜中最好吃的就是豆腐了，所以为了表达我的深切怀念，我决定要做一个常做的菜，那就是家常豆腐。</p>\n\n<p>准备食材：豆腐、木耳、青椒、葱末、蒜末等。</p>\n\n<p>1、将豆腐切成薄的三角片状，留以备用。</p>\n\n<p>2、起锅烧油，将豆腐放在锅中煎炸。</p>\n\n<p>3、在豆腐呈现金黄色的时候，翻面继续煎炸，双面呈现金黄色之后捞出。</p>\n\n<p>4、将准备好的辣椒切成块状。</p>\n\n<p>5、另起锅烧油，将准备好的葱末、蒜末放在锅中进行爆香。</p>\n\n<p>6、郫县豆瓣酱来一勺子，放在锅中。</p>\n\n<p>7、将煎炸过的豆腐放进锅中，进行翻炒。</p>\n\n<p>8、将泡发的木耳放在锅中，进行翻炒。</p>\n\n<p>9、再在锅中放入适当的清水。</p>\n\n<p>10、加入一点点的白糖。</p>\n\n<p>11、将切好的辣椒放在锅中，进行翻炒。</p>\n\n<p>12、搞点水淀粉放在锅中，大火收锅就可以盛出来了。</p>\n\n<p>这道菜就做好了！这个形状的豆腐特别的好吃，大概是因为豆腐很少做成这个形状的吧！</p>\n', '', '', '', '', 0, '1', 1603961319);
INSERT INTO `cms_news_attr` VALUES (119, '<p>时下，流行一种说法：懂得生活的人，是不会亏待自己的胃的；热爱生活的人，是不会让自己的心灵寂寞的。因为人最原始的需求就是由温饱而求舌尖美味，继而寻找精神上的愉悦。品味美食，总能让人得到心理上的满足，是一种让自己快乐的生活方式，是真实自然的慰藉；是一种向生命表达善意的举动，是水到渠成的升华。</p>\n\n<p>美食可以是一种习惯，能让生活变得怡然自乐，称心快意。在我看来，食物的美，既有食物本身带给味蕾的美妙，又有源自生活中的点滴快乐。拥有美食和享受美食的快乐，是构成幸福生活的重要部分。</p>\n\n<p>在那个物质极度匮乏的年代，为了果腹，偷桃摘李，摸瓜挖薯；为了满足舌尖的刺激，遇上有亲戚朋友办喜事，不管是否方便，要么眼泪一行鼻涕一把地哭求，要么在地上撒泼打滚，都要跟着大人去，蹭鱼蹭肉蹭好吃的。</p>\n\n<p>车尔尼雪夫斯基说&ldquo;美是生活&rdquo;。在我眼里，美食是精致的生活。喜欢美食，就像人要吃喝拉撒一样自然，那是浸润在骨子里的一种基因、一种传承。可以不喝酒、不抽烟、不打牌，但对于美食，会想方设法去吃、去品。</p>\n\n<p><img alt=\"\" src=\"https://inews.gtimg.com/newsapp_bt/0/11457249193/641\" /></p>\n\n<p>生活的山城不大，口袋上不殷实，却喜欢走大街钻小巷，追寻各种美食。家乡的酸、辣刺激，外来的香、甜可口，夜市摊点的惬意、街边小吃的欢畅、酒店佳肴的舒适，&ldquo;吃&rdquo;味道，注重吃的艺术，早已与生活融为一体。</p>\n\n<p>出差在外，同样沉迷于遍尝不同地方特色美食，川菜的麻辣、 粤菜的鲜嫩、 苏菜的精细、 浙菜的花样、湘菜的熏辣、 徽菜的醇厚&hellip;&hellip;时间长了，尝过的美食大都已有些模糊，但每当想起北京的烤鸭、炒肝、爆肚，上海的生煎包、五香豆、松饼，广州的肠粉、老火靓汤、叉烧包，南京的盐水鸭、梅花糕、茴香豆，依然口舌生津。</p>\n\n<p>关于食的境界 ，《中庸》有言：&ldquo;人莫不能饮食也，鲜能知味也。&rdquo;食是件容易的事，但能食好的人不多。</p>\n\n<p>有人说，家是美味。要留住一个人，就要留住他（她）的心；要留住他（她）的心，不妨留住他（她）的胃。</p>\n\n<p><img alt=\"\" src=\"https://inews.gtimg.com/newsapp_bt/0/11457250797/641\" /></p>\n\n<p>习惯了家里的锅碗瓢盆、油盐酱醋，也许是春天增强胃动力的人参叶，也许是仲夏口舌生香的石螺，也许是深秋醇香浓郁的酿豆腐，也许是寒冬酣畅淋漓的酸酒鸭，还有很多童年的、曾经的味道。这是来自家的浓情和爱意，是非比寻常的滋味。当这一切充盈心胃的时候，作为家庭的一份子，我能找到一份心灵的平静，在某个角落里慢慢咀嚼，轻轻回味静谧美好的岁月。</p>\n\n<p>回望过去，我看过很多好书，读过很多美文。在看过的这些书中，尤爱有关美食的美文。</p>\n\n<p>写美食，很容易落人口实，有炫耀之嫌。但汪曾祺先生写美食，平淡中充满了力量的智慧光芒。他真心爱生活，真情过日子，是润物细无声的那种爱和情，看似像房前屋后的溪流一样平静，却又是律动的，温馨、隽永、唯美、崇尚自然，又有绵延悠长的神韵。</p>\n\n<p>汪老先生写美食的美文，都是日常小菜，经他的妙笔，不但没有了油腻的柴火味，还成了诱人的美文，特别有味道。品读他的文字就像在审美，会觉得连纸张的味道都变得清香。在《家常酒菜》中，写了六道凉拌菜、四道热菜。他把老家江苏高邮拌枸杞头拌荠菜的方法，用来拌菠菜，十几道工序娓娓道来，写得生动有趣又井然有序，几乎可以当作菜谱。粗粗浏览一遍，就已食欲蠢蠢，垂涎欲滴。还有《故乡的食物》、《故乡的元宵》、《故乡的野菜》、《鱼我所欲也》、《萝卜》、《豆腐》、《蚕豆》等等，这些，都已成为我深深的记忆，就像镌刻在脑海中儿时吃过的美食。</p>\n\n<p><img alt=\"\" src=\"https://inews.gtimg.com/newsapp_bt/0/11457252297/641\" /></p>\n\n<p>很多时候，都期盼着这么一种情景：在如诗如画的田园中，置一小桌，品着家乡的美食，在古筝的弹奏声中，捧美文在手，或激情朗诵，或无声阅读。即使筚路蓝缕，余生繁琐，清贫如洗，也会甘之如饴。</p>\n\n<p>美食，爱其成瘾，遍寻无方，常令我左支右绌。当人生经历了诸多不顺，当嗜书赏文成了生命中的典藏，我懂得了挫折会来也会远去，眼泪会流也会止住。就如手中的掌纹，无论多么曲折，却掌握在自己的手里。</p>\n\n<p>品读美文让我变得纯真朴实，善良如初。走自己的路，看自己的景，唱自己的歌，纵然自己还做不到清新寡欢，但有美食美文相伴的日子，同样活色生香，有滋有味；开始书写文字的日子，时光不再孤寂，岁月不再寒冷，生命变得淡然优雅。</p>\n\n<p>&ldquo;文章千古事，得失寸心间。&rdquo;文字很浅，人生很深；人生短暂，文字悠长。思我所思，写我所想，期冀自己的文字，像冬日暖阳，能给人以温暖。</p>\n\n<p>&ldquo;一夕懂珍馐，一生恋其味&rdquo;。美食，让我经历，让我珍惜，也让我学会；美文，让我思考，让我懂得，更让我沉淀。</p>\n\n<p>美食如文，美文如食，二者可皆得，二者都不可负。</p>\n', '', '', '', '', 0, '1', 1603961590);
INSERT INTO `cms_news_attr` VALUES (121, '<p>10月29日，国家发展改革委发布通知指出，国家发展改革委等14个部门共同研究制定了《近期扩内需促消费的工作方案》（以下简称《方案》）。《方案》从推动线下服务消费加速&ldquo;触网&rdquo;、开辟服务消费新模式、实施促进实物消费政策、加大对制造业企业支持力度等四个方面推出19条措施。</p>\n\n<p>　　《方案》提出，积极支持餐饮恢复发展。鼓励有条件的地方在做好常态化疫情防控、不影响周边居民正常生活的前提下，有序恢复酒吧、 咖啡店、餐饮店等经营，因地制宜，放宽临时外摆限制。</p>\n\n<p>　　《方案》指出，加大对城镇老旧小区改造的支持。加快落实支持城镇老旧小区居民提取住房公积金，用于加装电梯等自住住房改造个人支付部分的政策。鼓励各地对城镇老旧小区有条件的楼栋加装电梯。</p>\n\n<p>　　《方案》要求，开展&ldquo;大家电安全使用年限提醒&rdquo;活动。鼓励相关社会团体制定家用电器安全使用和更新换代的团体标准，开展&ldquo;大家电安全使用年限提醒&rdquo;活动，促进相关标准有效实施，推动超龄大家电更新换代。</p>\n\n<p>　　《方案》提出，加快推进5G网络基站建设。通过进一步扩大电力市场化交易、推动转供电改直供电、加强转供电环节价格监管等措施，进一步降低5G基站运行电费成本。支持各地在站址资源获取、资金补贴等方面加大对5G网络建设的支持力度。</p>\n\n<p>　　《方案》还明确，进一步扩大&ldquo;同线同标同质&rdquo;实施范围。将内外销产品&ldquo;同线同标同质&rdquo;实施范围扩大到一般消费品和工业品，促进出口企业的优质产品在国内市场竞争中开拓局面。</p>\n', '', '', '', '', 0, '1', 1604020310);
INSERT INTO `cms_news_attr` VALUES (122, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b40-800x400.jpg\" style=\"height:400px; width:800px\" /></p>\n\n<p>当地时间周二（24日），美国总统特朗普发布推文，主张美国和欧盟同时取消所有关税、壁垒以及补贴。</p>\n\n<p>特朗普在推文中称，&ldquo;欧盟明天将前往华盛顿商讨贸易协议。我有个主张，美国和欧盟同时取消所有关税、壁垒以及补贴。那样最终会被视为自由市场和公平贸易！希望他们能做到，我们是已经做好了准备&mdash;&mdash;但他们不会。&rdquo;</p>\n\n<p>美国6月1日起向欧盟、加拿大和墨西哥的钢铝产品加征高关税，同时正在考虑向这三方的汽车及其零配件加征关税。美国政府还对其他国家采取关税制裁。</p>\n\n<p>对此，欧盟经济和金融事务委员皮埃尔&middot;莫斯科维奇22日说，美国政府对欧盟的贸易制裁&ldquo;不合适&rdquo;，陷入贸易争端的欧美本应&ldquo;像盟友一样&rdquo;行事。</p>\n\n<p>容克定于25日访问美国，会见美国总统特朗普。在美国政府挑起对欧贸易争端的背景下，容克此行能否缓和局势，防止对峙升级，成为国际舆论关注焦点。</p>\n\n<p>有媒体分析指出，面对公开把欧盟称为&ldquo;敌人&rdquo;的特朗普，容克这次也是有备而来，一方面坚持强硬立场和做好反制准备，另一方面表示愿意通过谈判解决争端。但欧盟&ldquo;软硬兼施&rdquo;的策略能否奏效，仍存变数。</p>\n\n<p>欧盟方面多次表示，如果美欧会谈不利，则也已备好后手：美方若执意出台汽车税，欧盟已在考虑反制清单，其中将考虑对美产煤炭、药品和化学产品等征收报复性关税。此前，欧盟已经警告美国，如对全球实施汽车税，将引发全面贸易战，全球反制措施将涉及3000亿美元的美国产品，即涵盖美国对外出口19%的产品。</p>\n', '', '', '', '', 0, '1', 1604028497);
INSERT INTO `cms_news_attr` VALUES (123, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/12.jpg\" style=\"height:345px; width:550px\" /></p>\n\n<p>2017年3月，南京，深夜，驻组宾馆，《我不是药神》的主要演员，徐峥、周一围、王传君、谭卓、章宇、杨新鸣、李乃文围读剧本以后，开始一场场地排戏。像在话剧舞台上，演员们都十分投入，随着语气时而高昂，时而低沉，幽默、温馨、凝重等气氛在简单的小会议室里轮番上演。</p>\n\n<p>&ldquo;做制片人10多年，现在别说排戏了，有些剧演员能给足拍摄时间就不错了，药神的情况很珍贵，特别久违，这个口碑我一点都不意外，拍不好我才意外呢。&rdquo;制片人王易冰说。</p>\n\n<p>他点了根烟，靠向沙发，身后的白板上写满《我不是药神》的点映场次，几点，在哪，几号厅。</p>\n\n<p>近来主创们都忙得够呛，虽然对口碑很有信心，但其传播速度和影响层次还是出乎意料。事实上，影片的前期宣传声量并不大，数据也相当平淡，团队都暗暗着急。</p>\n\n<p>但点映以后《我不是药神》口碑爆发，&ldquo;自来水&rdquo;灌满朋友圈，豆瓣评分高达9分，上一部&ldquo;9分华语片&rdquo;还是16年前的《无间道》。</p>\n\n<p>有业内人士预测《药神》票房将破40亿，甚至挑战《战狼2》。而王易冰和宁浩都坦言，这部电影的上映，就是最大的成功。</p>\n\n<p>《药神》的投资在1亿多，团队此前预期的票房是4到5亿。截止首映日目前，药神收获了3亿票房，猫眼专业版预测票房33.6亿。</p>\n\n<p>毫无疑问的是，今年这个暑期档，《我不是药神》抢先掀起了一波热潮，药神现象初显。对此，娱乐资本论策划了一系列稿件，试图从制作幕后、创作考量、幕后资本，乃至社会话题角度剖析这部现象级影片火爆的根源。</p>\n\n<p>先上制作篇。</p>\n\n<p>&ldquo;我们舍弃了更大牌，但不给足够时间的演员&rdquo;</p>\n\n<p>徐峥：&ldquo;这是我演艺生涯迄今为止最满意的影片。&rdquo;王易冰：&ldquo;这是我从业18年做过的最好的电影之一。&rdquo;</p>\n\n<p>被两位资深从业者用这样的话形容，我们不禁好奇，纵使外界赞誉很多，参与了内部创作的人也能够如此放言吗？从他们的视角看，《我不是药神》究竟好在哪？</p>\n\n<p>王易冰用了一个词&mdash;&mdash;非常团结。</p>\n\n<p>&ldquo;这很难得， 老实说我拍了这么多年，各种各样的剧组状况都碰到，闹矛盾的，争利益的，所以药神这个剧组的团结尤为珍贵。&rdquo;</p>\n\n<p>能够凑齐一个向心力强的团队，首当其冲是选角考量。他们建议导演舍弃了一些可能更大牌，但不愿意给出时间的演员。</p>\n\n<p>&ldquo;我不相信演员下了飞机到现场穿上衣服就知道怎么演这场戏，那些拍两天又走的，能有好的创作吗？&rdquo;剧组要求主要演员提前两个星期进组观察磨合。</p>\n\n<p><strong>&ldquo;做有尊严的电影&rdquo;</strong></p>\n\n<p>　　&ldquo;这个片子能够出来太难了。&rdquo;团队内外都有人向河豚君感慨。</p>\n\n<p>　　&ldquo;中国只有一种病，穷病。&rdquo;&ldquo; 他才只有二十岁，他只是想活着，他有什么罪！&rdquo;《我不是药神》中的几句台词引发了巨大的讨论和共鸣。这样现实主义题材的出现，聚焦慢粒白血病，关乎社会民生，涉及国家公检法机关，让影迷们激动地说中国终于出现了一部可以在拍出《出租车司机》《熔炉》的韩国面前挺直腰杆儿的电影，人们开始期待药神的出现能推动现实层面的进步。</p>\n\n<p>　　王易冰则谈了一个让他颇有感触的评论，有影评人看完药神后写道：&ldquo;找回尊严，做电影的尊严！&rdquo;</p>\n\n<p>　　他的感触在于：&ldquo;最近这几年大家对于拍电影这件事有各种各样的声音，觉得挺乱的，烂片、骗钱、泡沫&hellip;&hellip;有时候会觉得你自己在干的这个事是不是有点&hellip;&hellip;没劲。所以看到&lsquo;尊严&rsquo;这个词印象就比较深，其实就是尊重&mdash;&mdash;这个事你做完以后能得到其他人的尊重，你会觉得这是个有意义的事。&rdquo;</p>\n\n<p>　　进一步解读这句&ldquo;意义&rdquo;，回顾这次《我不是药神》的制作和宣发，是一场从制片人、导演、监制、演员、宣发，到全团队的通力合作。背后透露的是一份实打实的对电影的诚意和观众的尊重。《药神》的现象化，也给中国认真做电影的人带去了鼓励，在当下，专注去做一部尊重创作和观众的电影依然是必经之路，没有捷径。</p>\n', '', '', '', '', 0, '1', 1604028722);
INSERT INTO `cms_news_attr` VALUES (124, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/36.jpeg\" style=\"height:316px; width:474px\" /></p>\n\n<p>外界普遍预计，苹果将在两个月以后发布三款新 iPhone，包括 5.8 英寸 iPhone X 的继任者、尺寸更大的 iPhone X Plus 以及一款价格较低的 LCD iPhone 机型。我们暂且将较大英寸的 OLED 机型称为 iPhone X Plus，到目前为止，关于这款机型的传闻有很多，今天我们就来汇总一下。</p>\n\n<p><strong>尺寸和设计</strong></p>\n\n<p>iPhone X Plus 很可能采用与现有 iPhone X 相同的设计，只是尺寸更大。它同样采用无边框设计，没有 Home 键，顶部有一个用于存放人脸识别组件的凹槽。</p>\n\n<p>之前供应链的设计图显示，该设备的尺寸为 157.53mm x 77.44mm x 7.85mm。作为比较，目前 iPhone 8 Plus 的尺寸为 158.4mm x 78.1mm x 7.5mm。这意味着 iPhone X Plus 可能会更短、更窄，但会更厚一点。</p>\n\n<p>在其他方面，我们预计 iPhone X Plus 将采用与当前 iPhone X 相同的玻璃背面和不锈钢边框。一份报告还暗示，它可能会提供新的金色配色，并且支持双卡双待。</p>\n\n<p><strong>显示屏幕</strong></p>\n\n<p>iPhone X Plus 预计将搭载 6.4 英寸的 OLED 显示屏，ppi 在 480-500 之间，分辨率约为 1242 x 2688。相比之下，目前的 iPhone X 和 iPhone 8 Plus 分别为 458ppi 和 401ppi。与 iPhone 8 Plus 的 LCD 屏幕相比，OLED 屏幕在色彩显示方面会有更好的表现。</p>\n\n<p>虽然早些时候的一些报道称，iPhone X Plus将采用 6.5 英寸的屏幕，但最新的设计图显示，实际可用的屏幕尺寸为 6.4 英寸。不论如何，iPhone X Plus 的显示屏都将明显大于 iPhone 8 Plus，但其机身尺寸几乎相同。</p>\n\n<p><strong>性能</strong></p>\n\n<p>台积电最近开始大规模生产一款 7 纳米处理器，该处理器将用于今年的 iPhone 系列。这款处理器很可能会被苹果公司命名为 A12。目前，iPhone X 使用的是 A11 仿生处理器。</p>\n\n<p>值得注意的是，A12 是苹果首款基于 7 纳米设计的处理器，比过去的 10 纳米处理器更快、更小、更高效。另外，iPhone X Plus 的运行内存可能会比 iPhone X 和 iPhone 8 Plus 的 3GB 更大一些，达到 4GB。</p>\n\n<p>虽然有传言说 2018 年的 iPhone 机型将完全转向 USB-C，但最近的一份报告显示，苹果今年还会继续使用 Lightning 接口，不过该报告还暗示，苹果将在盒子里提供 USB-C 至 Lightning 充电线缆，以及 USB-C 充电器。</p>\n\n<p><strong>相机</strong></p>\n\n<p>据说，iPhone X Plus 将搭载与目前的 iPhone X 相同的双摄像头设置，这意味着新机将获得一个广角镜头和一个长焦镜头，用于人像模式等功能。虽然一些人最初认为今年将是 iPhone 进入三摄像头设计的年份，但事实似乎并非如此。</p>\n\n<p>不过，目前仍不清楚的是，这款双摄像头设备将采用何种技术。iPhone X 的摄像头像素达到 1200 万，而我们无法确定 iPhone X Plus 是否会在这方面做出任何改进。</p>\n\n<p><strong>价格</strong></p>\n\n<p>对于许多对 iPhone X Plus 满怀希望的用户来说，最可怕的事情之一就是价格。2017 年的 iPhone X 起售价为 999 美元，很多人担心 iPhone X Plus 的价格会高得吓人。</p>\n\n<p>然而，分析师们似乎并不这么认为。一位分析师表示，由于去年发布的 iPhone X 并没有带来真正的&ldquo;超级周期&rdquo;，因此苹果今年将把 5.8 英寸的 iPhone X 继任者降价至 899 美元，iPhone X Plus 的起售价则为 999 美元。</p>\n\n<p>值得注意的是，苹果在产品的定价方面通常会出人意料，无法提前预测。虽然硬件配置可以通过供应链进行追踪，但是定价仍无法确定。另外还有一份报告称，苹果预计 iPhone X Plus 将是今年最受欢迎的机型，甚至超过了更便宜的 LCD 机型。</p>\n\n<p><strong>发售日期</strong></p>\n\n<p>与过去几年一样，人们普遍预计苹果将在 9 月份的发布会上宣布推出 iPhone X Plus 以及其他新款 iPhone，然后在接下来的几个星期内将新机推入市场。</p>\n', '', '', '', '', 0, '1', 1604028805);
INSERT INTO `cms_news_attr` VALUES (125, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b49-800x400.png\" style=\"height:400px; width:800px\" /></p>\n\n<p>随着三、四线城市楼市交易量的提升，全国百城住宅库存再次降低。截至6月底，全国百城住宅库存已经连续35个月减少。</p>\n\n<p>截至2018年6月底，易居研究院监测的100个城市新建商品住宅库存总量为42643万平方米，环比减少0.2%，同比减少8.0%。观察历史数据，2015年以来全国100城库存规模就呈现出持续性的下跌态势，充分体现出近三年全国去库存&ldquo;战役&rdquo;取得了较好的效果。当前全国100城库存规模相当于2012年3月份的水平，即库存规模回落到了6年前的水平。</p>\n\n<p>值得一提的是，在100个城市中，有74个城市的库存出现了同比下滑态势，其中大连、杭州和金华的同比跌幅较大，跌幅分别为56%、48%和46%。总体上说，库存同比下跌的城市数量更多，这也带动了百城库存规模出现下跌。</p>\n\n<p>住宅库存的下跌，意味着消化周期的缩短，导致有些城市可能出现供小于求的楼市供需关系。</p>\n\n<p>另一组数据显示，截至2018年5月份，100个城市新建商品住宅&ldquo;存销比&rdquo;，即库存去化周期为9.8个月，这也意味着市场仅需9.8个月的时间就能消化完这些库存，该数值与5月份持平。</p>\n\n<p>易居研究院智库中心研究总监严跃进表示，鉴于房地产行业的特性，一般来说，库存去化周期合理区间为12个月-16个月。由此可见，百城住宅库存规模偏小，不足10个月就可以卖完。</p>\n\n<p>具体来看，一线城市、二线城市、三、四线城市新建商品住宅存销比分别为13.4个月、9.7个月和9.6个月，与5月份相比，一、二线城市存销比有所反弹，而三、四线城市继续收窄。</p>\n\n<p>更重要的是，三、四线城市的存销比下跌较为明显。当前数值是2009年以来的月度最低值，即最近10年中，三、四线城市的去化周期达到了最低值。在存销比小于6个月的24个城市中，17个城市为三、四线城市。</p>\n\n<p>具体来看，在100个城市中，有19个城市的存销比大于16个月，此类城市去库存压力依然较大；有21个城市的存销比位于12个月-16个月之间，此类城市的去库存周期相对适中；有60个城市的存销比小于12个月，此类城市的去库存周期相对偏小。</p>\n\n<p>严跃进表示，2018年上半年，全国百城库存水平继续下跌，这与房屋销售行情总体不错有关系。库存规模正步入到&ldquo;缺货&rdquo;的阶段，这也可以解释今年上半年房价持续上涨的现象。</p>\n\n<p>他进一步称，2018年下半年，相关城市需要继续调整供求关系，进而稳定房价。若开发商下半年稳定不移地推进补库存战略，包括加大拿地力度和加快开工节奏，那么相关城市将有更多可售房源或库存。但是客观来说，考虑到存销比目前依然处于历史低位，要想反弹、回归到均衡值或合理值水平，仅靠半年时间其实还是略有压力的。</p>\n', '', '', '', '', 0, '1', 1604028889);
INSERT INTO `cms_news_attr` VALUES (126, '<p><img alt=\"\" src=\"http://localhost:8200/pub_upload/2020-10-30/c6pwu12qs27obwzcfg.jpg\" style=\"height:400px; width:800px\" /></p>\n\n<p>特斯拉Model 3是是特斯拉Model X系列的新品，北京时间2016年4月1日11点30分在美国发布，基础售价35000美元。在开放官网预定之前，仅靠门店排队预定，Model 3的订单数量已经超过11.5万辆。</p>\n\n<p>2017年7月，特斯拉宣布，首批30辆Model3将在2017年7月28日举办的庆典上交付给顾客。</p>\n\n<p>截至2018年5月28日，该款车型只在美国和加拿大实现交付，特斯拉推迟Model 3的欧亚洲交付时间至2019年。 [1] 2018年6月5日 特斯拉对Model 3车型进行了升级，提升了驾驶舒适度。公司不仅升级了车辆的悬架系统，还升级了后座的配置。</p>\n\n<p><img alt=\"\" src=\"http://localhost:8200/pub_upload/2020-10-30/c6pwu61nfmk8gqwwnw.jpg\" style=\"height:400px; width:800px\" /></p>\n', '', '', '', '', 0, '1', 1604028986);
INSERT INTO `cms_news_attr` VALUES (127, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/18-800x400.jpg\" style=\"height:400px; width:800px\" /></p>\n\n<p>要说世界杯最大牌的女球迷，一定就是克罗地亚总统格拉巴尔&middot;基塔罗维奇，为了支持球队，她没有像其他国家元首那样坐在VIP包厢，而是和球迷出现在看台上，这样的亲民让人钦佩。如今，克罗地亚杀入8强，接下来四分之一决赛对阵俄罗斯，格拉巴尔&middot;基塔罗维奇也将赴现场为球队加油打气。</p>\n\n<p>格拉巴尔&middot;基塔罗维奇今年50岁，俄罗斯世界杯期间，她关注了克罗地亚的每一场比赛，此前，她就曾出现在球迷看台上，和克罗地亚球迷一起，为自己的祖国球队加油。</p>\n\n<p>谈到克罗地亚的表现，格拉巴尔&middot;基塔罗维奇可谓是眉飞色舞，她最满意克罗地亚在对阵阿根廷时的表现，那场比赛，克罗地亚3比0大胜。此外，克罗地亚在八分之一决赛中苦战点球击败丹麦，格拉巴尔&middot;基塔罗维奇赛后还去到更衣室，对球员们表示了祝贺。</p>\n\n<p>事实上，作为一国总统，她完全可以坐在VIP包厢里，舒服的观看比赛，但是格拉巴尔&middot;基塔罗维奇没有这么做，她和球迷坐在一起，并称自己是拉拉队队长。</p>\n\n<p>接下来的四分之一决赛，格拉巴尔&middot;基塔罗维奇将确定现场观战，对阵东道主俄罗斯，克罗地亚难有必胜把握，但有了总统现场助威，相信球员们会信心倍增。</p>\n', '', '', '', '', 0, '1', 1604029096);
INSERT INTO `cms_news_attr` VALUES (128, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b46-800x398.jpg\" style=\"height:398px; width:800px\" /></p>\n\n<p>对于贵州省三都水族自治县都江镇甲找村甲找小学的师生而言，7月24日是个美好的日子。学校里来了许多和善的叔叔阿姨，他们带着满满的爱心，为孩子们送上用心准备的礼物：精美的图书、崭新的体育用品&hellip;&hellip;中国扶贫基金会执行副理事长王行最、百胜中国首席公共事务官王立志（Alice Wang）、百胜中国首席供应链官兼塔可贝尔总经理陈玟瑞（Danny Tan）等领导，与百胜中国员工代表，全国媒体代表、志愿者们一起来到了这所位于黔南山区的乡村小学，将凝聚着千万消费者与百胜中国员工爱心的营养加餐和礼物分发到全校100多名小学生手里。</p>\n\n<p><strong>十一年的坚持，捐一元汇集大爱</strong></p>\n\n<p>&ldquo;捐一元?献爱心?送营养&rdquo;公益项目（下简称：&ldquo;捐一元&rdquo; ）项目于2008年由中国扶贫基金会携手百胜中国共同发起，向全社会号召一人捐出一元钱，为贫困地区孩子提供营养加餐，并为孩子们进行营养知识普及。目前，该项目已是百胜中国标志性企业社会责任项目，并通过百胜中国旗下遍布全国约8000家餐厅和相关的网络订餐系统向社会募捐，搭建了一个&ldquo;全民公益&rdquo;的捐款平台。甲找小学距离贵阳220公里，位于三都水族自治县县城东南，离县城45公里，但因为山路弯曲狭窄，这45公里开车就要开一个半小时以上。学校覆盖周边五个村落，其中最远的离学校有12公里，所以住校的学生占了90%以上。这意味着学校不但负责教育，也承担起孩子们的食宿照顾。2016年， &ldquo;捐一元&rdquo;公益项目进入了甲找小学，除了为孩子们提供牛奶和鸡蛋的营养加餐，也为该校捐赠了全新&ldquo;爱心厨房&rdquo;。从此，孩子们可以在学校吃上更营养更健康的餐食。截至2018年6月，&ldquo;捐一元&rdquo;项目已为贵州三都县累计投入超过320万元，受益学生约1.7万人次，为学生提供了92万份营养加餐，并为17所小学配备爱心厨房设备。活动当天，百胜中国和中国扶贫基金会的代表们为孩子们带来了精心准备的礼品，包括体育用品和优质儿童图书。百胜中国首席执行官屈翠容（Joey Wat）虽然无法亲临现场，专门委托同事为孩子们带去崭新的书包。中午，大家一起为孩子们发放营养加餐。</p>\n\n<p>中国扶贫基金会执行副理事长王行最表示：&ldquo;今年是捐一元项目的第十一年。感谢百胜中国十一年来的坚持，捐一元可以说是推动&ldquo;全民公益&rdquo;的典范，赢得了社会公众的高度认可和积极参与，累计参与公众超过一亿人次，已成为参与人数最多的全民公益项目之一。&rdquo;</p>\n\n<p>看着孩子们的笑脸，百胜中国首席公共事务官王立志女士欣慰地表示：&ldquo;我非常高兴地看到，在过去十年内，&lsquo;捐一元&rsquo;项目为数十万贫困地区的小学生提供每日营养加餐，持续改善他们的营养状况。同时这个项目也提升了45万百胜中国员工的公益意识和参与公益的主动性。更重要的是，我们通过十年的探索和努力，传播了&lsquo;人人公益&rsquo;的理念，一元钱的力量虽小，汇集起来便是大爱。就能为孩子创造更健康、更美好的未来。&rdquo;</p>\n', '', '', '', '', 0, '1', 1604029165);
INSERT INTO `cms_news_attr` VALUES (129, '<p><img alt=\"\" src=\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/27.jpg\" style=\"height:309px; width:550px\" /></p>\n\n<p>撒哈拉之于我，除了三毛还有地理书上学到的世界上最大的沙漠。我想亲近沙子，想去看看这个世界上最大的猫砂盆到底长啥样。</p>\n\n<p>进撒哈拉有三种方式。一种是自驾，但是有些路段不建议自驾，且摩洛哥警察真的很坑啊啊，随便就是几百上千罚款不见了。第二种是三天两夜散拼团，一般十几个人以上，可以结识世界各地的朋友，但是拼团的住宿条件和车况不太好，听说晚上都是睡大通铺，而且不能洗澡充电。第三种是三天两夜私人团，沙漠里有独立房间，可以洗澡且是白帐篷，好看的多且是4驱越野车。私人团还有四天三夜，行程会更放松，有时间的强烈建议4天3夜。</p>\n\n<p>对于我这种一天不洗头就会死星人且时间不够，那必须选择可以洗澡的三天两夜私人团。经过一番对比最后选择的是心享游。私人团一般是2-6人，一般是200欧-490欧不等。可以选择每晚要住的酒店和帐篷。至于酒店我们选的是网红XALUCADADES酒店，帐篷有豪华帐篷和顶级帐篷两种，都能充电，都能洗澡，都有独立卫生间，所以我们就选择了豪华帐篷。顶级帐篷是林志玲同款，需要➕80欧一人。4个人最好，6个人最多。人不够可以跟客服要求拼人。我们三个人，就拼了一对非常非常可爱的姐弟，一路有说有笑非常有趣。</p>\n\n<p>在沙漠里可以住上这样的带卫生间有热水，还能充电的房间我已经非常满意了。</p>\n\n<p>在沙漠营地的中间，一般都会有篝火。一个高机位的构图，把远处的帐篷、沙漠，近处的篝火，营地等都拍进去。最好的状态就是两个人自然的瘫在垫子上，有一搭没一搭的聊天。或者单人照的话像我第一张图上的一个纯粹的背影也可以</p>\n\n<p>我们跟传统线路是反着来的。一般从马拉喀什出发三天两夜到非斯结束的人比较多。可是我们几个却不约而同的选择了非斯出发到马拉喀什结束。</p>\n\n<p>同行的两姐弟一个在美国留学，一个在英国留学，他们在暑假开始前相约一起来摩洛哥旅行。大家都是年轻人，所以分分钟打成了一片，谁叫我们都爱喝酒呢！</p>\n\n<p>第一天的行程基本上是在赶路，从非斯到沙漠腹地，中间会路过沙漠绿洲和沙漠中的湖泊。大概下午4点左右我们便达到了集合点。行李会有越野车带进营地，而我们可以在夕阳下骑着骆驼大约一个小时进入到沙漠营地。</p>\n\n<p>晚餐在最大的帐篷里面吃的，吃的东西非常的丰富。但是我实在是对摩洛哥饭菜不感冒，幸亏自己带了泡面和辣椒面。这简直是中国胃的福音啊。</p>\n\n<p>也不知道谁是雨神，在进沙漠的途中，天空被乌云笼罩，到了营地居然下起了大雨。什么日落？什么银河？一个都没看到！原本天气好的时候在室外开的篝火晚会唱歌什么的改成了在室内的唱歌舞蹈。。。。</p>\n\n<p>天气好的话，这里大概就是银河了吧。</p>\n\n<p>第二天一早看见外面晴空万里果断的立即换上美美的衣服来两张。撒哈拉的沙子非常的细，踩上去没有一点的扎脚。注意要拍美美的照片一定要早起！！早上太阳斜斜的光影才好看呢。</p>\n\n<p>拍沙漠一定要选择亮色的衣服，红色我个人觉得太俗。所以选择的是白色的花裙子。一定要在日出或者日落的时候拍，光打在沙上有对比的层次。站在沙丘的最边缘，踩出一条脚步也能给画面带来延伸感。可以走路或者奔跑。</p>\n\n<p>每想你一次，天上飘落一粒沙，从此形成了撒哈拉。</p>\n\n<p>一路向瓦尔扎扎特行进，沿途上可以经过很多这样的绿洲边上的城市，一边是苍凉，一边是希望。</p>\n\n<p>在沙漠绿洲的地方选择的还是那条白色底花纹的白裙子，戴的一顶白色的帽子。用的是一张竖构图，上面天空留少少，远处是沙漠，中间是城市，最近的是绿洲。</p>\n\n<p>途中会经过托德拉山谷，听说这里有个喝了可以怀孕的泉水非常的有名。有想法的宝宝可以去哦。不过这里不要离山谷太近，要注意有落石！</p>\n\n<p>第二天住的是瓦尔扎扎特的网红酒店XALUCADADES，一下车就会有人在门口唱歌迎接，在房间可以看到城市的全景，有个网红游泳池，房间也非常的有洞穴风情。</p>\n\n<p>这个酒店最有名的就是这个游泳池了，在一些房间里可以拍到沙漠里的游泳池的景色。我就是被这个游泳池吸引来的！</p>\n\n<p>除了撒哈拉，最让我期待的就是第三天的行程了。摩洛哥最美的古村落AIT BENHADDOU（阿伊特。本。杜哈筑垒村）这里在世界有名。这里是《盗墓迷城》、《星球大战》、《权利的游戏》、《红海行动》等等等等影视作品的取景地。</p>\n\n<p>在这个城里，还有一个网红拍摄点。可是去到一看，这必须得爬上隔壁的屋顶才能拍下下面这张图。不得不说的是，本来晴空万里的天空，在我要拍照的那一秒就下起了雨。。。下面都是苦笑（微笑脸）</p>\n\n<p>高机位才能把近处的人和远处的风景框在一张照片中。这张是爬上了旁边的屋顶拍摄的，这时需要的是朋友几个聊点有趣的事情，可以进行抓拍，拍最自然的时刻。这里比较难找，找当地向导，给他看图，会带你去，事先记得谈好价格。</p>\n\n<p>从城里下来可以走到河道上拍摄一个全景的大景。选的是一个露背的蓝色大裙摆裙子。大景的地方裙摆大点总是会好看的多。选好位置以后，直直往前走，让同伴多拍几张，选出一张最自然裙摆最好看的就好。</p>\n\n<p>最后一点tips：</p>\n\n<p>由于路程比较遥远，记得多多配备零食和水。路程中会有吃饭的点，但是中国胃记得备好吃的！比如辣椒面、老干妈或者方便面什么的。</p>\n\n<p>沙漠水电是限量的，所以到了沙漠记得先洗澡充电。不过我们好像没有遇到没有热水和充电的情况。请节约用水用电。</p>\n\n<p>在艾特本哈杜筑垒村请向导的话记得提前谈好价格，把照片给他看，他会带你去你想去的点。</p>\n\n<p>在托德拉山谷一定一定一定要注意山上掉下来的落石，我们在拍照的时候山上有掉下落石在朋友旁边，幸亏没有伤到人。一定要注意。</p>\n', '', '', '', '', 0, '1', 1604029322);
INSERT INTO `cms_news_attr` VALUES (130, '<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980379506_278_1080x1622.jpeg\" /></p>\n\n<p>10月29日，党的十九届五中全会在北京闭幕。会议发表6000余字的公报，透露了丰富信息。&ldquo;四个全面&rdquo;中的第一个&ldquo;全面&rdquo;要改为&ldquo;全面建设社会主义现代化国家&rdquo;了。中等收入群体要显著扩大了。我国要实施&ldquo;乡村建设行动&rdquo;了&hellip;&hellip;公报中的许多新提法，即将走进我们的生活。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>△联播视频丨中国共产党第十九届中央委员会第五次全体会议公报</p>\n\n<p><strong>&nbsp;新成果：勾画&ldquo;十四五&rdquo;发展蓝图&nbsp;</strong></p>\n\n<p>五中全会审议五年规划建议，近年来已成惯例。五年前的同一天，2015年10月29日，党的十八届五中全会审议通过了《中共中央关于制定国民经济和社会发展第十三个五年规划的建议》。</p>\n\n<p>今年的十九届五中全会审议通过了《中共中央关于制定国民经济和社会发展第十四个五年规划和二〇三五年远景目标的建议》。这份文件不仅谋划未来5年发展，还勾画未来15年蓝图。在此之前，1995年召开的十四届五中全会曾审议通过《中共中央关于制定国民经济和社会发展&ldquo;九五&rdquo;计划和2010年远景目标的建议》。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980438512_417_1000x750.jpg\" /></p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980449175_855_1000x750.jpg\" /></p>\n\n<p>△第三届中国国际进口博览会即将在上海举办，会展中心已准备就绪。</p>\n\n<p>五年规划建议，重在宏观性、战略性、指导性。五年规划建议通过之后，还要根据建议制定五年规划纲要，重在规定具体的工作部署。五年前，十八届五中全会审议通过&ldquo;十三五&rdquo;规划建议后，次年3月，十二届全国人大四次会议审议通过了&ldquo;十三五&rdquo;规划纲要。</p>\n\n<p>审议通过&ldquo;十四五&rdquo;规划建议，是十九届五中全会的最重要成果。明年即将开启的&ldquo;十四五&rdquo;时期，是中国向第二个百年奋斗目标进军的第一个五年。&ldquo;十四五&rdquo;规划建议将为今后一个时期中国经济社会发展指明方向、勾画蓝图。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980473822_641_1000x1335.jpeg\" /></p>\n\n<p>△10月26日，我国在西昌卫星发射中心使用长征二号丙运载火箭成功将遥感30号07组卫星送入预定轨道。这是壮观的火箭尾焰特写。</p>\n\n<p>按照惯例，在五中全会闭幕几天之后，五年规划建议将全文公布。五中全会闭幕当天发布的公报，是外界提前了解五年规划建议的重要窗口。</p>\n\n<p><strong>&nbsp;新论断：我国发展仍然处于重要战略机遇期&nbsp;</strong></p>\n\n<p>十九届五中全会公报指出，全会深入分析了我国发展环境面临的深刻复杂变化。</p>\n\n<p>今年7月30日召开的中央政治局会议，作出了今年10月在北京召开十九届五中全会的决定。那次会议作出论断：当前和今后一个时期，我国发展仍然处于战略机遇期，但机遇和挑战都有新的发展变化。此次五中全会公报把前半句修改为：我国发展仍然处于<strong>重要</strong>战略机遇期。新增的&ldquo;重要&rdquo;两字，是十分重要的判断。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603981028451_425_1000x563.jpeg\" /></p>\n\n<p>△汽车产业是大连自贸片区的八大产业项目之一，现已形成集整车生产、零部件加工、销售、运输、平行进口汽车等全链条的汽车产业。</p>\n\n<p>另一个新提法，7月30日的政治局会议提出&ldquo;善于在危机中育新机、于变局中开新局&rdquo;，十九届五中全会公报则提出&ldquo;善于在危机中<strong>育先机</strong>、于变局中开新局&rdquo;。从&ldquo;育新机&rdquo;到&ldquo;育先机&rdquo;，强化了要下先手棋、抢抓机遇。</p>\n\n<p>《时政新闻眼》发现，在五中全会召开十多天前的中央党校（国家行政学院）中青年干部培训班开班式上，习近平总书记就开始用了&ldquo;要在危机中育先机、于变局中开新局&rdquo;这一新提法。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980535104_698_1000x563.jpeg\" /></p>\n\n<p>△中央党校校园内名为&ldquo;一大代表&rdquo;的主题雕塑</p>\n\n<p>分析环境变化，是为了作出科学决策。今年以来，习近平多次强调，<strong>必须在一个更加不稳定不确定的世界中谋求我国发展</strong>。十九届五中全会审议通过的&ldquo;十四五&rdquo;规划建议，就是要为不确定性的世界注入确定性，为中国人民瞻望可以预期的未来。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603981406951_3_1000x563.jpeg\" /></p>\n\n<p>△上海洋山港</p>\n\n<p><strong>&nbsp;新目标：国力强、人民富、底气足&nbsp;</strong></p>\n\n<p>5年之后，中国将发展到哪一步？15年之后，我们将过上什么样的生活？从十九届五中全会公报中都可以找到答案和线索。</p>\n\n<p>全会提出了&ldquo;十四五&rdquo;时期经济社会发展主要目标，主要体现在六个方面：经济发展取得新成效，改革开放迈出新步伐，社会文明程度得到新提高，生态文明建设实现新进步，民生福祉达到新水平，国家治理效能得到新提升。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980601826_832_1000x563.jpg\" /></p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980611596_692_1000x563.jpg\" /></p>\n\n<p>△国家实施长江流域禁捕退捕政策后，江苏宿迁泗洪县启动洪泽湖水域禁捕退捕和住家船整治工作。这是聚集在渔港等待拆解的渔船。</p>\n\n<p>全会提出了&ldquo;十四五&rdquo;时期经济社会发展指导思想和必须遵循的原则。全面建成小康社会胜利在望，&ldquo;四个全面&rdquo;战略布局中的第一个&ldquo;全面&rdquo;也相应修改为&ldquo;<strong>全面建设社会主义现代化国家</strong>&rdquo;。全会还鲜明提出了发展的&ldquo;主题主线&rdquo;和&ldquo;两个根本&rdquo;：以推动高质量发展为主题，以深化供给侧结构性改革为主线，以改革创新为根本动力，以满足人民日益增长的美好生活需要为根本目的。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980641183_751_1000x750.jpg\" /></p>\n\n<p>△江西吉安黄岗村，供电公司工人正在检修&ldquo;光伏+取暖&rdquo;设备，保障村民温暖过冬。</p>\n\n<p>全会还提出了到2035年基本实现社会主义现代化远景目标。三年前，习近平总书记在党的十九大曾展望了到2035年的发展目标。两相对比，新风扑面。党的十九大报告中提出的目标是&ldquo;我国经济实力、科技实力将大幅跃升&rdquo;，此次的提法是&ldquo;我国经济实力、科技实力、<strong>综合国力</strong>将大幅跃升&rdquo;。坚实的综合国力，是中国的深厚底气。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980664079_585_1000x563.jpg\" /></p>\n\n<p>△位于河套地区的深港科技创新合作区</p>\n\n<p>十九大报告提出的2035年发展目标之一是&ldquo;人民生活更为宽裕，中等收入群体比例明显提高&rdquo;，此次表述为：&ldquo;人均国内生产总值达到中等发达国家水平，中等收入群体显著扩大&rdquo;，&ldquo;全体人民共同富裕取得更为明显的实质性进展&rdquo;。从脱贫到共富，主题悄然变迁。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980689605_787_1000x750.jpg\" /></p>\n\n<p>△山东枣庄市山亭区因地制宜发展花卉培育，带动贫困村民多渠道增收。</p>\n\n<p><strong>&nbsp;新部署：</strong><strong>人民对美好生活的向往就是我们的奋斗目标&nbsp;</strong></p>\n\n<p>&ldquo;十四五&rdquo;规划建议除了确立发展理念、方向思路，还明确了发展的重点任务、重大举措。十九届五中全会公报指出，从坚持创新在我国现代化建设全局中的核心地位，到坚持党的全面领导，全会在十几个领域作出了全面部署。许多新提法，令人瞩目。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603983661339_401_1000x563.jpeg\" /></p>\n\n<p>△江西于都，中央红军长征出发渡口</p>\n\n<p>十九届五中全会继续把创新作为推动发展的第一动力。全会首次提出，&ldquo;<strong>把科技自立自强作为国家发展的战略支撑</strong>&rdquo;。今年7月，在吉林一汽集团考察时，习近平总书记就曾强调，&ldquo;必须加强关键核心技术和关键零部件的自主研发，实现技术自立自强，做强做大民族品牌。&rdquo;面对&ldquo;卡脖子&rdquo;问题，中国科技必当自立自强。</p>\n\n<p>在加快发展现代产业体系领域，全会提出，要坚定不移建设制造强国、质量强国、网络强国、数字中国。把<strong>制造强国</strong>摆在第一位，重点体现了坚持把发展经济着力点放在实体经济上的理念。在构建新发展格局领域，全会提出，要坚持扩大内需这个战略基点，加快培育完整内需体系。<strong>培育完整内需体系</strong>，这是以国内大循环为主体的必然要求。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603982614968_851_1000x563.jpeg\" /></p>\n\n<p>△浙江长兴制造基地生产的全新一代7DCT双离合自动变速器，拥有完全自主知识产权。</p>\n\n<p>&ldquo;全面促进消费&rdquo;&ldquo;扎实推动共同富裕&rdquo;&ldquo;新型工农城乡关系&rdquo;&ldquo;实施乡村建设行动&rdquo;&ldquo;促进经济社会发展全面绿色转型&rdquo;&ldquo;确保二〇二七年实现建军百年奋斗目标&rdquo;&hellip;&hellip;这些新提法、新部署体现了鲜明的问题导向，彰显了以人民为中心的发展思想。</p>\n\n<p>&nbsp;</p>\n\n<p><img src=\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603982015006_333_1000x563.jpeg\" /></p>\n\n<p>△天安门广场，国庆大花篮</p>\n\n<p>&ldquo;好的方针政策和发展规划都应该顺应人民意愿、符合人民所思所盼，从群众中来、到群众中去。&rdquo;习近平总书记今年9月在基层代表座谈会上强调的这一理念，已经鲜明体现到了&ldquo;十四五&rdquo;规划建议之中，也将随着规划实施走进每个中国人的生活之中。</p>\n', '', '', '', '', 0, '1', 1604029437);

-- ----------------------------
-- Table structure for cms_yjf_attr
-- ----------------------------
DROP TABLE IF EXISTS `cms_yjf_attr`;
CREATE TABLE `cms_yjf_attr`  (
  `art_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章内容',
  PRIMARY KEY (`art_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_yjf_attr
-- ----------------------------
INSERT INTO `cms_yjf_attr` VALUES (106, '<p><img src=\"http://localhost:8200/pub_upload/2020-08-11/c4u2nxwu69iggkulk2.png\" style=\"height:2365px; width:1701px\" /></p>\n\n<p>&nbsp;</p>\n');
INSERT INTO `cms_yjf_attr` VALUES (107, '<p>dasdasfasfsa</p>\n\n<p>sadsadaf<img src=\"http://localhost:8200/pub_upload/2020-08-11/c4tzqrorcgmg1bqifr.png\" style=\"height:356px; width:1710px\" />ss</p>\n\n<p>safasfasf</p>\n');
INSERT INTO `cms_yjf_attr` VALUES (108, '<p>aaaaaaaaaaaaaaaaaaaaaaassss</p>\n');
INSERT INTO `cms_yjf_attr` VALUES (109, '<p>456465456456</p>\n');
INSERT INTO `cms_yjf_attr` VALUES (110, '<p>新闻动态第一条的具体内容在这里</p>\n');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (33, 'sys_dept', '部门表', 'dept', 'tree', 'gfast', 'module', 'dept', '部门', 'yunjie', '{\"tree_code\":\"config_id\",\"tree_name\":\"config_key\",\"tree_parent_code\":\"config_name\"}', 'admin', '2020-02-16 20:58:20', '', NULL, '');
INSERT INTO `gen_table` VALUES (34, 'model_category', '模型分类表', 'model_category', 'tree', 'gfast', 'module', 'category', '模型分类', 'gfast', '{\"tree_code\":\"c_id\",\"tree_name\":\"create_time\",\"tree_parent_code\":\"c_name\"}', 'admin', '2020-07-09 11:17:04', 'admin', '2020-07-10 11:25:07', '');
INSERT INTO `gen_table` VALUES (35, 'user', '用户表', 'user', 'crud', 'gfast', 'module', 'user', '用户', 'gfast', '', 'admin', '2020-07-09 11:17:04', '', NULL, '');
INSERT INTO `gen_table` VALUES (37, 'model_category', '模型分类表', 'model_category', 'crud', 'gfast', 'module', 'category', '模型分类', 'gfast', '', 'admin', '2020-07-09 11:44:12', '', NULL, '');
INSERT INTO `gen_table` VALUES (38, 'user', '用户表', 'user', 'crud', 'gfast', 'module', 'user', '用户', 'gfast', '', 'admin', '2020-07-09 11:44:13', 'admin', '2020-07-10 11:42:07', '');
INSERT INTO `gen_table` VALUES (39, 'model_category', '模型分类表', 'model_category', 'crud', 'gfast', 'module', 'category', '模型分类', 'gfast', '', 'admin', '2020-07-09 15:11:08', '', NULL, '');
INSERT INTO `gen_table` VALUES (40, 'user', '用户表', 'user', 'crud', 'gfast', 'module', 'user', '用户', 'gfast', '', 'admin', '2020-07-09 15:11:08', 'admin', '2020-07-13 17:18:31', '');
INSERT INTO `gen_table` VALUES (42, 'sp_list', '获取审批表单号', 'sp_list', 'crud', 'gfast', 'module', 'list', 'module', 'liu', '', 'demo', '2021-08-07 14:29:41', 'demo', '2021-08-07 16:04:46', '获取审批表单号');
INSERT INTO `gen_table` VALUES (45, 'sp_nolist', 'nolist明细表', 'sp_nolist', 'crud', 'gfast', 'module', 'nolist', 'nolist', 'gfast', '', 'demo', '2021-08-11 15:54:08', 'demo', '2021-08-11 15:54:40', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `go_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Go类型',
  `go_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Go字段名',
  `html_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'html字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 483 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (355, 33, 'dept_id', '部门id', 'bigint(20)', 'int64', 'DeptId', 'deptId', '1', '1', '0', '1', '0', '1', '1', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (356, 33, 'parent_id', '父部门id', 'bigint(20)', 'int64', 'ParentId', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (357, 33, 'ancestors', '祖级列表', 'varchar(50)', 'string', 'Ancestors', 'ancestors', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (358, 33, 'dept_name', '部门名称', 'varchar(30)', 'string', 'DeptName', 'deptName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (359, 33, 'order_num', '显示顺序', 'int(4)', 'int', 'OrderNum', 'orderNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (360, 33, 'leader', '负责人', 'varchar(20)', 'string', 'Leader', 'leader', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (361, 33, 'phone', '联系电话', 'varchar(11)', 'string', 'Phone', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (362, 33, 'email', '邮箱', 'varchar(50)', 'string', 'Email', 'email', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (363, 33, 'status', '部门状态（0正常 1停用）', 'char(1)', 'string', 'Status', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (364, 33, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'string', 'DelFlag', 'delFlag', '0', '0', '0', '1', '0', '0', '0', 'EQ', 'input', '', 10, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (365, 33, 'create_by', '创建者', 'varchar(64)', 'string', 'CreateBy', 'createBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 11, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (366, 33, 'create_time', '创建时间', 'datetime', 'Time', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datatime', '', 12, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (367, 33, 'update_by', '更新者', 'varchar(64)', 'string', 'UpdateBy', 'updateBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 13, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (368, 33, 'update_time', '更新时间', 'datetime', 'Time', 'UpdateTime', 'updateTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datatime', '', 14, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (369, 34, 'c_id', '主键', 'int(10) unsigned', 'int', 'CId', 'cId', '1', '1', '0', '1', '0', '1', '1', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (370, 34, 'c_name', '模型分类名称', 'varchar(60)', 'string', 'CName', 'cName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (371, 34, 'c_sort', '排序', 'int(11)', 'int64', 'CSort', 'cSort', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (372, 34, 'create_by', '创建人', 'int(10) unsigned', 'int', 'CreateBy', 'createBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (373, 34, 'create_time', '创建时间', 'bigint(20) unsigned', 'int64', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (374, 34, 'update_by', '修改人', 'int(10) unsigned', 'int', 'UpdateBy', 'updateBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (375, 34, 'update_time', '修改时间', 'bigint(20) unsigned', 'int64', 'UpdateTime', 'updateTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (376, 34, 'c_status', '状态', 'tinyint(3) unsigned', 'int', 'CStatus', 'cStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (377, 35, 'id', '', 'bigint(20) unsigned', 'int64', 'Id', 'id', '1', '1', '0', '1', '0', '0', '0', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (378, 35, 'user_name', '用户名', 'varchar(60)', 'string', 'UserName', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (379, 35, 'mobile', '中国手机不带国家代码，国际手机号格式为：国家代码-手机号', 'varchar(20)', 'string', 'Mobile', 'mobile', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (380, 35, 'user_nickname', '用户昵称', 'varchar(50)', 'string', 'UserNickname', 'userNickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (381, 35, 'birthday', '生日', 'int(11)', 'int64', 'Birthday', 'birthday', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (382, 35, 'create_time', '注册时间', 'int(11)', 'int64', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (383, 35, 'user_password', '登录密码;cmf_password加密', 'varchar(255)', 'string', 'UserPassword', 'userPassword', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (384, 35, 'user_status', '用户状态;0:禁用,1:正常,2:未验证', 'tinyint(3) unsigned', 'int', 'UserStatus', 'userStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (385, 35, 'user_email', '用户登录邮箱', 'varchar(100)', 'string', 'UserEmail', 'userEmail', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (386, 35, 'sex', '性别;0:保密,1:男,2:女', 'tinyint(2)', 'int', 'Sex', 'sex', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 10, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (387, 35, 'avatar', '用户头像', 'varchar(255)', 'string', 'Avatar', 'avatar', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (388, 35, 'last_login_time', '最后登录时间', 'int(11)', 'int64', 'LastLoginTime', 'lastLoginTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (389, 35, 'last_login_ip', '最后登录ip', 'varchar(15)', 'string', 'LastLoginIp', 'lastLoginIp', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (390, 35, 'dept_id', '部门id', 'bigint(20) unsigned', 'int64', 'DeptId', 'deptId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (391, 35, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (392, 35, 'is_admin', '是否后台管理员 1 是  0   否', 'tinyint(4)', 'int', 'IsAdmin', 'isAdmin', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (393, 37, 'c_id', '主键', 'int(10) unsigned', 'int', 'CId', 'cId', '1', '1', '0', '1', '0', '1', '1', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (394, 37, 'c_name', '模型分类名称', 'varchar(60)', 'string', 'CName', 'cName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (395, 37, 'c_sort', '排序', 'int(11)', 'int64', 'CSort', 'cSort', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (396, 37, 'create_by', '创建人', 'int(10) unsigned', 'int', 'CreateBy', 'createBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (397, 37, 'create_time', '创建时间', 'bigint(20) unsigned', 'int64', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (398, 37, 'update_by', '修改人', 'int(10) unsigned', 'int', 'UpdateBy', 'updateBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (399, 37, 'update_time', '修改时间', 'bigint(20) unsigned', 'int64', 'UpdateTime', 'updateTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (400, 37, 'c_status', '状态', 'tinyint(3) unsigned', 'int', 'CStatus', 'cStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (401, 38, 'id', '', 'bigint(20) unsigned', 'int64', 'Id', 'id', '1', '1', '0', '1', '0', '0', '0', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (402, 38, 'user_name', '用户名', 'varchar(60)', 'string', 'UserName', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (403, 38, 'mobile', '中国手机不带国家代码，国际手机号格式为：国家代码-手机号', 'varchar(20)', 'string', 'Mobile', 'mobile', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (404, 38, 'user_nickname', '用户昵称', 'varchar(50)', 'string', 'UserNickname', 'userNickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (405, 38, 'birthday', '生日', 'int(11)', 'int64', 'Birthday', 'birthday', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (406, 38, 'create_time', '注册时间', 'int(11)', 'int64', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (407, 38, 'user_password', '登录密码;cmf_password加密', 'varchar(255)', 'string', 'UserPassword', 'userPassword', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (408, 38, 'user_status', '用户状态;0:禁用,1:正常,2:未验证', 'tinyint(3) unsigned', 'int', 'UserStatus', 'userStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (409, 38, 'user_email', '用户登录邮箱', 'varchar(100)', 'string', 'UserEmail', 'userEmail', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (410, 38, 'sex', '性别;0:保密,1:男,2:女', 'tinyint(2)', 'int', 'Sex', 'sex', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', 'sys_user_sex', 10, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (411, 38, 'avatar', '用户头像', 'varchar(255)', 'string', 'Avatar', 'avatar', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (412, 38, 'last_login_time', '最后登录时间', 'int(11)', 'int64', 'LastLoginTime', 'lastLoginTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (413, 38, 'last_login_ip', '最后登录ip', 'varchar(15)', 'string', 'LastLoginIp', 'lastLoginIp', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (414, 38, 'dept_id', '部门id', 'bigint(20) unsigned', 'int64', 'DeptId', 'deptId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (415, 38, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (416, 38, 'is_admin', '是否后台管理员 1 是  0   否', 'tinyint(4)', 'int', 'IsAdmin', 'isAdmin', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (417, 39, 'c_id', '主键', 'int(10) unsigned', 'int', 'CId', 'cId', '1', '1', '0', '1', '0', '1', '1', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (418, 39, 'c_name', '模型分类名称', 'varchar(60)', 'string', 'CName', 'cName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (419, 39, 'c_sort', '排序', 'int(11)', 'int64', 'CSort', 'cSort', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (420, 39, 'create_by', '创建人', 'int(10) unsigned', 'int', 'CreateBy', 'createBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (421, 39, 'create_time', '创建时间', 'bigint(20) unsigned', 'int64', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (422, 39, 'update_by', '修改人', 'int(10) unsigned', 'int', 'UpdateBy', 'updateBy', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (423, 39, 'update_time', '修改时间', 'bigint(20) unsigned', 'int64', 'UpdateTime', 'updateTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (424, 39, 'c_status', '状态', 'tinyint(3) unsigned', 'int', 'CStatus', 'cStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (425, 40, 'id', '', 'bigint(20) unsigned', 'int64', 'Id', 'id', '1', '1', '0', '1', '0', '0', '0', 'EQ', 'input', '', 1, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (426, 40, 'user_name', '用户名', 'varchar(60)', 'string', 'UserName', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (427, 40, 'mobile', '中国手机不带国家代码，国际手机号格式为：国家代码-手机号', 'varchar(20)', 'string', 'Mobile', 'mobile', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (428, 40, 'user_nickname', '用户昵称', 'varchar(50)', 'string', 'UserNickname', 'userNickname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (429, 40, 'birthday', '生日', 'int(11)', 'int64', 'Birthday', 'birthday', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 5, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (430, 40, 'create_time', '注册时间', 'int(11)', 'int64', 'CreateTime', 'createTime', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (431, 40, 'user_password', '登录密码;cmf_password加密', 'varchar(255)', 'string', 'UserPassword', 'userPassword', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 7, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (432, 40, 'user_status', '用户状态;0:禁用,1:正常,2:未验证', 'tinyint(3) unsigned', 'int', 'UserStatus', 'userStatus', '0', '0', '1', '1', '1', '1', '', 'EQ', 'radio', '', 8, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (433, 40, 'user_email', '用户登录邮箱', 'varchar(100)', 'string', 'UserEmail', 'userEmail', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 9, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (434, 40, 'sex', '性别;0:保密,1:男,2:女', 'tinyint(2)', 'int', 'Sex', 'sex', '0', '0', '0', '1', '1', '1', '', 'EQ', 'select', 'sys_user_sex', 10, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (435, 40, 'avatar', '用户头像', 'varchar(255)', 'string', 'Avatar', 'avatar', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 11, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (436, 40, 'last_login_time', '最后登录时间', 'int(11)', 'int64', 'LastLoginTime', 'lastLoginTime', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 12, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (437, 40, 'last_login_ip', '最后登录ip', 'varchar(15)', 'string', 'LastLoginIp', 'lastLoginIp', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 13, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (438, 40, 'dept_id', '部门id', 'bigint(20) unsigned', 'int64', 'DeptId', 'deptId', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 14, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (439, 40, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 15, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (440, 40, 'is_admin', '是否后台管理员 1 是  0   否', 'tinyint(4)', 'int', 'IsAdmin', 'isAdmin', '0', '0', '0', '1', '1', '1', '', 'EQ', 'input', '', 16, 'admin', NULL, '', NULL);
INSERT INTO `gen_table_column` VALUES (447, 42, 'sp_id', '单号', 'varchar(200)', 'string', 'SpId', 'spId', '1', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 1, 'demo', '2021-08-07 14:29:41', '', '2021-08-07 14:29:41');
INSERT INTO `gen_table_column` VALUES (448, 42, 'errmsg', 'msg信息', 'varchar(100)', 'string', 'Errmsg', 'errmsg', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'demo', '2021-08-07 14:29:41', '', '2021-08-07 14:29:41');
INSERT INTO `gen_table_column` VALUES (449, 42, 'errcode', '错误id', 'varchar(100)', 'string', 'Errcode', 'errcode', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'demo', '2021-08-07 14:29:41', '', '2021-08-07 14:29:41');
INSERT INTO `gen_table_column` VALUES (450, 42, 'sort', '是否再次被拉去', 'int(100)', 'int', 'Sort', 'sort', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'demo', '2021-08-07 14:29:41', '', '2021-08-07 14:29:41');
INSERT INTO `gen_table_column` VALUES (451, 42, 'starttime', '开始时间', 'int(200)', 'int', 'Starttime', 'starttime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'demo', '2021-08-07 14:29:41', '', '2021-08-07 14:29:41');
INSERT INTO `gen_table_column` VALUES (452, 42, 'endtime', '至时间', 'int(200)', 'int', 'Endtime', 'endtime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'demo', '2021-08-07 14:29:41', '', '2021-08-07 14:29:41');
INSERT INTO `gen_table_column` VALUES (473, 45, 'sp_no', '单号', 'varchar(200)', 'string', 'SpNo', 'spNo', '1', '0', '0', '1', '0', '1', '1', 'EQ', 'input', '', 1, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (474, 45, 'sp_name', '单名', 'varchar(200)', 'string', 'SpName', 'spName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (475, 45, 'apply_time', '发起时间', 'int(150)', 'int', 'ApplyTime', 'applyTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (476, 45, 'userid', '填报人id', 'varchar(200)', 'string', 'Userid', 'userid', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (477, 45, 'datatest', '主体内容详情', 'varchar(200)', 'string', 'Datatest', 'datatest', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (478, 45, 'useridtest', '备注人id', 'varchar(200)', 'string', 'Useridtest', 'useridtest', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (479, 45, 'commenttimel', '备注填写时间', 'int(150)', 'int', 'Commenttimel', 'commenttimel', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (480, 45, 'commtest', '备注的详情', 'varchar(200)', 'string', 'Commtest', 'commtest', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (481, 45, 'spare', '备用', 'varchar(200)', 'string', 'Spare', 'spare', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');
INSERT INTO `gen_table_column` VALUES (482, 45, 'spare1', '备用1', 'varchar(200)', 'string', 'Spare1', 'spare1', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'demo', '2021-08-11 15:54:08', '', '2021-08-11 15:54:08');

-- ----------------------------
-- Table structure for lib_link
-- ----------------------------
DROP TABLE IF EXISTS `lib_link`;
CREATE TABLE `lib_link`  (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_zip` int(11) NULL DEFAULT NULL,
  `link_brief` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `link_edit` int(11) NULL DEFAULT NULL,
  `link_dewurl` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_remak` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link_addtime` time(0) NULL DEFAULT NULL,
  `link_open` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`link_id`) USING BTREE,
  UNIQUE INDEX `lib_link_link_id_uindex`(`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lib_link
-- ----------------------------
INSERT INTO `lib_link` VALUES (1, '测试脚本1', 'd:/', 0, 'test', 'http://localhost:8200/pub_upload/2021-08-03/cd9jktxmxndxl4bzvp.zip', 0, 'http://localhost:8200/pub_upload/2021-08-03/cd9jktxmxndxl4bzvp.zip', 'test', '00:00:00', 0);
INSERT INTO `lib_link` VALUES (2, '餐道下载地址脚本', '', 0, '餐道自动下载', '下载餐道exe文件', 1, 'http://localhost:8200/pub_upload/2021-08-04/cda2jmgbav1sc5vfjs.exe', '', NULL, 0);
INSERT INTO `lib_link` VALUES (3, '扫码枪二维码', '', 0, '', '', 0, 'http://localhost:8200/pub_upload/2021-08-04/cdaellx3015w9zua7p.png', '', NULL, 0);
INSERT INTO `lib_link` VALUES (4, 'updata_cli', '', 0, '这个是检测版本更新程序，列表名字不要改', '', 0, 'http://localhost:8200/pub_upload/2021-08-05/cdb6zy6z93agjmpepm.exe', '', NULL, 0);

-- ----------------------------
-- Table structure for lib_log
-- ----------------------------
DROP TABLE IF EXISTS `lib_log`;
CREATE TABLE `lib_log`  (
  `lib_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pos_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pos_ma` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pos_time` time(0) NULL DEFAULT NULL,
  `pos_state` int(11) NULL DEFAULT NULL,
  `pos_msg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lib_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lib_log
-- ----------------------------
INSERT INTO `lib_log` VALUES (1, '2', '3', '2', '02:00:00', 1, '2');

-- ----------------------------
-- Table structure for lib_rary
-- ----------------------------
DROP TABLE IF EXISTS `lib_rary`;
CREATE TABLE `lib_rary`  (
  `lib_id` int(11) NOT NULL AUTO_INCREMENT,
  `lib_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lib_rul` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lib_zip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lib_brief` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lib_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lib_addtime` time(0) NULL DEFAULT NULL,
  `lib_open` int(11) NULL DEFAULT NULL,
  `lib_edit` int(11) NULL DEFAULT NULL,
  `lib_remk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`lib_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lib_rary
-- ----------------------------
INSERT INTO `lib_rary` VALUES (12, '测试脚本1', 'pub_upload/2021-08-03/cd9jktxmxndxl4bzvp.zip', '不用解压', 'test', 'test', '00:00:00', 0, 0, 'set');
INSERT INTO `lib_rary` VALUES (13, 'test', 'pub_upload/2021-08-04/cda2jmgbav1sc5vfjs.exe', 'test', 'teet', 'etste', '00:00:00', 0, 0, 'test');
INSERT INTO `lib_rary` VALUES (14, '合同测试', 'pub_upload/2021-08-04/cdaedi3xwpdoci7ghp.zip', '测试', '', '', NULL, 0, 0, '');
INSERT INTO `lib_rary` VALUES (15, '扫码枪二维码', 'pub_upload/2021-08-04/cdaellx3015w9zua7p.png', '', '', '', NULL, 0, 0, '');
INSERT INTO `lib_rary` VALUES (16, 'update', 'pub_upload/2021-08-05/cdb6zy6z93agjmpepm.exe', '', '', '', NULL, 0, 0, '');

-- ----------------------------
-- Table structure for model_category
-- ----------------------------
DROP TABLE IF EXISTS `model_category`;
CREATE TABLE `model_category`  (
  `c_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `c_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模型分类名称',
  `c_sort` int(11) NOT NULL COMMENT '排序',
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人',
  `create_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_by` int(10) UNSIGNED NOT NULL COMMENT '修改人',
  `update_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  `c_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模型分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of model_category
-- ----------------------------
INSERT INTO `model_category` VALUES (1, '政府工作目标管理', 0, 1, 1594000376, 2, 1596530619, 1);
INSERT INTO `model_category` VALUES (5, '测试分类', 0, 1, 1594016237, 2, 1596530640, 1);
INSERT INTO `model_category` VALUES (6, 'cms', 0, 1, 1595316172, 1, 1595316184, 1);

-- ----------------------------
-- Table structure for model_fields
-- ----------------------------
DROP TABLE IF EXISTS `model_fields`;
CREATE TABLE `model_fields`  (
  `field_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模型字段ID',
  `model_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模型ID',
  `field_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段名称',
  `field_title` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段标题',
  `field_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段类型',
  `field_length` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段长度',
  `field_default` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段默认值',
  `field_data` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段数据',
  `field_desc` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段描述',
  `field_rules` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段规则',
  `field_sort` bigint(20) NOT NULL DEFAULT 1000 COMMENT '字段排序',
  `field_width` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段列表显示宽度',
  `field_align` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '字段列表显示对齐',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人',
  `update_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改人',
  `create_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改时间',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '模型字段表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of model_fields
-- ----------------------------
INSERT INTO `model_fields` VALUES (5, 6, 'id', '用户id', 'number', '', '', '', '', 'unsigned', 0, '', '', 1, 0, 1595237473, 1595237473);
INSERT INTO `model_fields` VALUES (6, 6, 'username', '用户名', 'text', '10', '', '', '用户名', 'required,unique', 1, '', '', 1, 1, 1595237518, 1595493630);
INSERT INTO `model_fields` VALUES (7, 6, 'nickname', '用户昵称', 'text', '30', '张三', '', '用户昵称', 'required', 2, '', '', 1, 1, 1595237549, 1595493589);
INSERT INTO `model_fields` VALUES (8, 6, 'age', '年龄', 'number', '', '18', '', '年龄', 'unsigned', 3, '', '', 1, 1, 1595300537, 1595493575);
INSERT INTO `model_fields` VALUES (12, 1, 'house_id', '房屋ID', 'number', '', '', '', '', 'unsigned', 0, '', '', 1, 0, 1595322614, 1595322614);
INSERT INTO `model_fields` VALUES (13, 1, 'belong_houses', '所属楼盘', 'selectnumber', '', '0', 'houses|h_id|h_name|h_order', '', 'required,unsigned', 1, '', '', 1, 31, 1595322665, 1599465550);
INSERT INTO `model_fields` VALUES (14, 1, 'belong_house_type', '所属房型', 'selectnumber', '', '0', 'house_type|ht_id|ht_name|ht_order', '', 'required,unsigned,ajax_select_change', 2, '', '', 1, 0, 1595322728, 1595322728);
INSERT INTO `model_fields` VALUES (15, 1, 'door_number', '门牌号', 'text', '10', '', '', '', 'required,unique', 3, '', '', 1, 0, 1595322849, 1595322849);
INSERT INTO `model_fields` VALUES (16, 9, 'news_title', '文章标题', 'selectnumber', '150', '', ':cms_news_type', '文章标题', 'required', 6, '', '', 31, 31, 1595917601, 1596415769);
INSERT INTO `model_fields` VALUES (17, 9, 'news_file', '单附件', 'file', '200', '', '', '', '', 4, '', '', 31, 31, 1595917633, 1596183979);
INSERT INTO `model_fields` VALUES (18, 9, 'news_imgs', '多图片', 'images', '30', '', '1:新浪,2:百度,3:腾讯', '文章相册', '', 5, '', '', 31, 31, 1595917776, 1596184646);
INSERT INTO `model_fields` VALUES (19, 9, 'art_id', '附加表主键', 'large_number', '', '0', '', '', 'unsigned', 0, '', '', 31, 0, 1595917830, 1595917830);
INSERT INTO `model_fields` VALUES (20, 9, 'thumbnail', '缩略图', 'imagefile', '', '', '', '缩略图', '', 2, '', '', 31, 31, 1596004062, 1596095953);
INSERT INTO `model_fields` VALUES (21, 9, 'news_files', '附件', 'files', '', '', 'plug_adtype|adtype_id|adtype_name|adtype_id asc|adtype_id>13', '', '', 3, '', '', 31, 31, 1596016878, 1596159484);
INSERT INTO `model_fields` VALUES (24, 9, 'news_content', '文章内容', 'richtext', '', '', '', '', '', 1, '', '', 31, 31, 1596095070, 1596095912);
INSERT INTO `model_fields` VALUES (25, 9, 'news_info', '多选测试', 'checkbox', '', '1', '1:张三,2:李四,3:王五', '', 'required', 7, '', '', 31, 0, 1596420410, 1596420410);
INSERT INTO `model_fields` VALUES (27, 9, 'time_demo', '时间测试', 'datetime', '', '', '', '', '', 8, '', '', 31, 0, 1596443050, 1596443050);
INSERT INTO `model_fields` VALUES (28, 10, 'project_id', '项目主键', 'large_number', '', '', '', '', 'unsigned', 0, '', '', 2, 2, 1596528913, 1596530964);
INSERT INTO `model_fields` VALUES (29, 10, 'project_pid', '父级ID', 'large_number', '50', '0', '', '', 'unsigned', 2, '', '', 2, 2, 1596528959, 1596530741);
INSERT INTO `model_fields` VALUES (30, 10, 'project_title', '项目标题', 'text', '150', '', '', '', '', 3, '', '', 2, 0, 1596530780, 1596530780);
INSERT INTO `model_fields` VALUES (31, 10, 'project_no', '项目编号', 'text', '50', '', '', '', 'unique', 1, '', '', 2, 0, 1596530990, 1596530990);
INSERT INTO `model_fields` VALUES (32, 10, 'project_status', '项目状态', 'switch', '', '0', '', '', '', 4, '', '', 2, 0, 1596531263, 1596531263);
INSERT INTO `model_fields` VALUES (33, 10, 'project_report_status', '汇报状态', 'switch', '', '0', '', '', '', 5, '', '', 2, 0, 1596531294, 1596531294);
INSERT INTO `model_fields` VALUES (34, 11, 'art_id', '附加表主键', 'large_number', '', '0', '', '', 'unsigned', 0, '', '', 31, 0, 1595917830, 1595917830);
INSERT INTO `model_fields` VALUES (35, 11, 'news_content', '文章内容', 'richtext', '', '', '', '', '', 1, '', '', 31, 31, 1596095070, 1596095912);

-- ----------------------------
-- Table structure for model_info
-- ----------------------------
DROP TABLE IF EXISTS `model_info`;
CREATE TABLE `model_info`  (
  `model_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `model_category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板分类id',
  `model_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模型标识',
  `model_title` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模型名称',
  `model_pk` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主键字段',
  `model_order` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '默认排序字段',
  `model_sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表单字段排序',
  `model_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列表显示字段，为空显示全部',
  `model_edit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '可编辑字段，为空则除主键外均可以编辑',
  `model_indexes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '索引字段',
  `search_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '高级搜索的字段',
  `create_time` bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `model_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态',
  `model_engine` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MyISAM' COMMENT '数据库引擎',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人',
  `update_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`model_id`) USING BTREE,
  UNIQUE INDEX `name_uni`(`model_name`) USING BTREE COMMENT '模型名唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文档模型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of model_info
-- ----------------------------
INSERT INTO `model_info` VALUES (1, 5, 'house_info', '房屋信息', 'house_id', 'hi_order', 'house_id', 'house_id,belong_houses,belong_house_type,door_number', 'belong_houses,belong_house_type,door_number', 'door_number', 'belong_houses,belong_house_type,door_number', 1498101800, 1514193091, 1, 'MyISAM', 0, 0);
INSERT INTO `model_info` VALUES (6, 1, 'demo', '测试', 'id', '', 'id,username,nickname', 'id,username,nickname,age', 'username,nickname,age', 'username,nickname', 'username,nickname,age', 0, 1595299599, 1, 'MyISAM', 0, 1);
INSERT INTO `model_info` VALUES (7, 5, 'demo2', '测试2', '', '', '', '', '', '', '', 1594803649, 1594803649, 1, 'InnoDB', 1, 0);
INSERT INTO `model_info` VALUES (8, 1, 'demo3', '测试3', '', '', '', '', '', '', '', 1594861449, 1595583462, 1, 'InnoDB', 1, 1);
INSERT INTO `model_info` VALUES (9, 6, 'cms_news_attr', '文章模型', 'art_id', '', 'art_id', 'news_info', 'news_content,thumbnail,news_files,news_file,news_imgs,news_title,news_info,time_demo', '', 'news_info', 1595316217, 1596095352, 1, 'InnoDB', 1, 31);
INSERT INTO `model_info` VALUES (10, 1, 'work_report', '政府工作报告', 'project_id', '', '', '', 'project_pid,project_title,project_status,project_report_status', '', '', 1596528880, 1596530597, 1, 'InnoDB', 2, 2);
INSERT INTO `model_info` VALUES (11, 6, 'cms_yjf_attr', '圆角方', 'art_id', '', 'art_id', '', 'news_content', '', '', 1595316217, 1597128476, 1, 'InnoDB', 1, 31);

-- ----------------------------
-- Table structure for plug_ad
-- ----------------------------
DROP TABLE IF EXISTS `plug_ad`;
CREATE TABLE `plug_ad`  (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_adtypeid` tinyint(5) NOT NULL COMMENT '所属位置',
  `ad_checkid` tinyint(2) NOT NULL COMMENT '1=图片 2=JS',
  `ad_js` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'JS代码',
  `ad_pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告图片URL',
  `ad_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告链接',
  `ad_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '广告文字内容',
  `ad_addtime` int(11) NOT NULL COMMENT '添加时间',
  `ad_sort` int(11) NOT NULL COMMENT '排序',
  `ad_open` tinyint(2) NOT NULL COMMENT '1=审核  0=未审核',
  PRIMARY KEY (`ad_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plug_ad
-- ----------------------------
INSERT INTO `plug_ad` VALUES (8, 'dasfdsf', 3, 2, 'asdasfagsgasdvb', '', '', 'fgfdbfd士大夫', 1595930069, 6, 0);
INSERT INTO `plug_ad` VALUES (26, '2222', 3, 1, 'asdafasf', 'pub_upload/2020-07-31/c4kijvnpspakoibsdr.png', 'sss', 'ss', 1596168625, 2, 0);
INSERT INTO `plug_ad` VALUES (10, 'dfgbsdfsd', 10, 2, '//:www.baiu.ocm', '', '', 'fgfdbfd士大夫', 1595930194, 4, 1);
INSERT INTO `plug_ad` VALUES (7, '1111', 2, 1, '', 'pub_upload/2020-07-31/c4kihqy0j2vczkexag.png', '111', '11111', 1595929955, 2, 0);
INSERT INTO `plug_ad` VALUES (11, 'fdgb电风扇', 11, 1, '', 'pub_upload/2020-07-31/c4ki6c4v8y0g5kivt6.png', 'https://wsww.sadf.asvb', 'fgfdb案发时fd', 1595930243, 5, 1);
INSERT INTO `plug_ad` VALUES (27, '121', 3, 1, '', 'pub_upload/2020-07-31/c4klu06r1xlk1bnmct.jpg', 'sdss', 'cssssssssssssssssssssss', 1596177749, 2, 1);
INSERT INTO `plug_ad` VALUES (28, 'gfast赞助', 21, 1, '', 'pub_upload/2020-10-16/c6e4fmhrpwewesaaia.png', '', '', 1602831749, 1, 1);

-- ----------------------------
-- Table structure for plug_adtype
-- ----------------------------
DROP TABLE IF EXISTS `plug_adtype`;
CREATE TABLE `plug_adtype`  (
  `adtype_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `adtype_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告位名称',
  `adtype_sort` int(11) NOT NULL COMMENT '广告位排序',
  PRIMARY KEY (`adtype_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plug_adtype
-- ----------------------------
INSERT INTO `plug_adtype` VALUES (3, 'fgfghsss', 4);
INSERT INTO `plug_adtype` VALUES (2, 'aaaaaa', 50);
INSERT INTO `plug_adtype` VALUES (8, '新增广告位', 12);
INSERT INTO `plug_adtype` VALUES (9, '新增2', 23);
INSERT INTO `plug_adtype` VALUES (10, 'asfasfa', 34);
INSERT INTO `plug_adtype` VALUES (11, '345', 23);
INSERT INTO `plug_adtype` VALUES (12, '342342', 13);
INSERT INTO `plug_adtype` VALUES (14, 'asdasfa', 2);
INSERT INTO `plug_adtype` VALUES (15, 'asdfx', 2);
INSERT INTO `plug_adtype` VALUES (20, '新增3', 2);
INSERT INTO `plug_adtype` VALUES (21, 'gfast赞助', 0);

-- ----------------------------
-- Table structure for plug_link
-- ----------------------------
DROP TABLE IF EXISTS `plug_link`;
CREATE TABLE `plug_link`  (
  `link_id` int(5) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接名称',
  `link_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '链接URL',
  `link_target` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '_blank' COMMENT '打开方式',
  `link_typeid` tinyint(4) NOT NULL DEFAULT 0 COMMENT '所属栏目ID',
  `link_qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系QQ',
  `link_order` bigint(10) NOT NULL DEFAULT 0 COMMENT '排序',
  `link_addtime` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `link_open` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0禁用1启用',
  `link_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '申请友情链接的联系人',
  `link_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `link_remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '申请友情链接时的备注',
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plug_link
-- ----------------------------
INSERT INTO `plug_link` VALUES (2, 'asssssssssssssssssasa', '/system/plug/linkType/add', '_blank', 1, '4512335', 7, 1594689455, 1, '', '', '');
INSERT INTO `plug_link` VALUES (3, '第一名23', '/system/plug/linkType/add', '_blank', 5, '4512335', 4, 1594689460, 1, '', '', '');
INSERT INTO `plug_link` VALUES (5, '梵蒂冈地方11', '/system/plug/linkType/add', '_blank', 3, '4512335', 1, 1594689469, 1, '', '', '');
INSERT INTO `plug_link` VALUES (6, '爱的速递撒', '/system/plug/linkType/add', '_self', 4, '4512335', 5, 1594689473, 1, '', '', '');
INSERT INTO `plug_link` VALUES (9, 'text123', 'safasga', '_blank', 1, '4534543', 6, 1595990353, 0, '', '', '');
INSERT INTO `plug_link` VALUES (11, 'testssssss', 'safasfasfasd11', '_self', 3, '3243242', 2, 1596016372, 1, '', '', '');
INSERT INTO `plug_link` VALUES (18, 'asdas', 'asf', '_blank', 1, '11111', 3, 1596080931, 0, '', '', '');
INSERT INTO `plug_link` VALUES (19, '百度', 'https://www.baidu.com/', '新标签页打开', 13, '177852', 1, 1601194070, 1, '老李', '11312', 'dasfasfaf');
INSERT INTO `plug_link` VALUES (20, '百度翻译', 'https://fanyi.baidu.com/#en/zh/', '本窗口打开', 13, '123124', 1, 1602325353, 1, 'asdasf', '2134@qq.com', '通过一下');
INSERT INTO `plug_link` VALUES (21, 'h', 'hjgjh', '_blank', 0, '45646', 1, 1602747055, 0, '4', '6546@qq.com', 'jhgj');
INSERT INTO `plug_link` VALUES (23, 'asdsa', 'http://www.baidu.com', '_blank', 0, '12312312', 0, 1602830363, 0, '萨达所所多', 'asdas@qq', 'fasd');
INSERT INTO `plug_link` VALUES (24, 'asd', 'https://fanyi.baidu.com/#en/zh/', '_blank', 0, '21312312', 0, 1602830396, 0, 'asd ', 'sadq@qq', 'sadsad ');

-- ----------------------------
-- Table structure for plug_linktype
-- ----------------------------
DROP TABLE IF EXISTS `plug_linktype`;
CREATE TABLE `plug_linktype`  (
  `linktype_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `linktype_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '所属栏目名称',
  `linktype_order` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`linktype_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of plug_linktype
-- ----------------------------
INSERT INTO `plug_linktype` VALUES (1, '我的', 5);
INSERT INTO `plug_linktype` VALUES (2, 'fasf', 4);
INSERT INTO `plug_linktype` VALUES (3, 'fvcc', 3);
INSERT INTO `plug_linktype` VALUES (4, 'gfdgd', 3);
INSERT INTO `plug_linktype` VALUES (5, 'fdvcc', 6);
INSERT INTO `plug_linktype` VALUES (8, 'dsfg', 3);
INSERT INTO `plug_linktype` VALUES (13, '博客友情链接', 3);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `data_scope` tinyint(3) UNSIGNED NOT NULL DEFAULT 3 COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 1, 1582773740, 1593680183, 0, '超级管理员', '备注', 3);
INSERT INTO `role` VALUES (2, 1, 1582773740, 1606698503, 0, '普通管理员', '备注', 3);
INSERT INTO `role` VALUES (3, 1, 1582773740, 0, 0, '站点管理员', '站点管理人员', 3);
INSERT INTO `role` VALUES (4, 1, 1582773740, 0, 0, '初级管理员', '初级管理员', 3);
INSERT INTO `role` VALUES (5, 1, 1582773740, 0, 0, '高级管理员', '高级管理员', 3);
INSERT INTO `role` VALUES (8, 1, 1582773740, 1593506004, 0, '区级管理员', '', 2);

-- ----------------------------
-- Table structure for role_dept
-- ----------------------------
DROP TABLE IF EXISTS `role_dept`;
CREATE TABLE `role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_dept
-- ----------------------------
INSERT INTO `role_dept` VALUES (8, 109);
INSERT INTO `role_dept` VALUES (8, 200);
INSERT INTO `role_dept` VALUES (8, 201);

-- ----------------------------
-- Table structure for sp_list
-- ----------------------------
DROP TABLE IF EXISTS `sp_list`;
CREATE TABLE `sp_list`  (
  `sp_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '单号',
  `errmsg` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'msg信息',
  `errcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '错误id',
  `sort` int(100) NULL DEFAULT NULL COMMENT '是否再次被拉去',
  `starttime` int(200) NULL DEFAULT NULL COMMENT '开始时间',
  `endtime` int(200) NULL DEFAULT NULL COMMENT '至时间',
  PRIMARY KEY (`sp_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sp_list
-- ----------------------------
INSERT INTO `sp_list` VALUES ('202108020005', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108020075', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108020076', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108020124', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108020151', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108020172', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108030004', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108030080', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108030086', 'ok', '0', 0, 1627719451, 1627719451);
INSERT INTO `sp_list` VALUES ('202108040026', 'ok', '0', 0, 1628648745, 1628043945);
INSERT INTO `sp_list` VALUES ('202108040031', 'ok', '0', 0, 1628650080, 1628045280);
INSERT INTO `sp_list` VALUES ('202108040055', 'ok', '0', 0, 1628659560, 1628054760);
INSERT INTO `sp_list` VALUES ('202108050033', 'ok', '0', 0, 1628736960, 1628132160);
INSERT INTO `sp_list` VALUES ('202108050118', 'ok', '0', 0, 1628760961, 1628156161);
INSERT INTO `sp_list` VALUES ('202108050121', 'ok', '0', 0, 1628760961, 1628156161);
INSERT INTO `sp_list` VALUES ('202108060057', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108060077', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108060082', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108060101', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108060102', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108070036', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090009', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090011', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090045', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090047', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090048', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090049', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090050', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108090051', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108100031', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108100046', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108110009', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108110016', 'ok', '0', 0, 1628820540, 1628215740);
INSERT INTO `sp_list` VALUES ('202108120011', 'ok', '0', 0, 1628820540, 1628215740);

-- ----------------------------
-- Table structure for sp_nolist
-- ----------------------------
DROP TABLE IF EXISTS `sp_nolist`;
CREATE TABLE `sp_nolist`  (
  `sp_no` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '单号',
  `sp_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单名',
  `apply_time` int(150) NULL DEFAULT NULL COMMENT '发起时间',
  `userid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '填报人id',
  `datatest` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主体内容详情',
  `useridtest` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注人id',
  `commenttimel` int(150) NULL DEFAULT NULL COMMENT '备注填写时间',
  `commtest` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注的详情',
  `spare` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备用',
  `spare1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备用1',
  PRIMARY KEY (`sp_no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sp_nolist
-- ----------------------------
INSERT INTO `sp_nolist` VALUES ('202108050033', '门店特许主数据递交申请', 1628132183, '052031', 'CS00117长沙市开福区月湖街道马栏山店---托管店申请系统建店，ID:TX0000408', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108050118', '门店特许主数据递交申请', 1628161110, '055164', '你好，陕西新开单店托管特许新店，还请帮忙系统建店，谢谢。\nWN00003  渭南临渭区吾悦广场店    张志瑞特许店\n', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108050121', '门店特许主数据递交申请', 1628169498, '049891', '深圳托管特许', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108060057', '门店特许主数据递交申请', 1628231527, '048664', '新特许商，新开托管门店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108060077', '门店特许主数据递交申请', 1628236289, '055164', '你好，陕西新开直营门店，还请帮忙系统建店，谢谢。\nXA00062	宝鸡渭滨区经一路步行街店\n', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108060082', '门店特许主数据递交申请', 1628237229, '049891', '福建直营门店', '049891', 1628477215, '@陈迪 ​表里漏个名字，店名福州站2店', '', '');
INSERT INTO `sp_nolist` VALUES ('202108060101', '门店特许主数据递交申请', 1628246003, '056624', '江西当先新增1家门店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108060102', '门店特许主数据递交申请', 1628246151, '056624', '上饶鑫耀新增1家门店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108070036', '门店特许主数据递交申请', 1628321310, '052031', 'ID:TX0000093,LD00004娄底娄星区高铁店--发展式特许店，申请系统建店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090009', '门店特许主数据递交申请', 1628472057, '004821', '湖北特许主数据建立', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090011', '门店特许主数据递交申请', 1628475249, '067655', '新增托管门店 麻烦设置SAP信息\nTZ10002	泰州靖江市上海城店\nJN00031	济南市中区纬一路店\n', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090045', '门店特许主数据递交申请', 1628491505, '048664', '老特许商新开特许门店HF00104', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090047', '门店特许主数据递交申请', 1628492655, '049891', '广东商贸 直营店的，预计开业时间8.15', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090048', '门店特许主数据递交申请', 1628492745, '049891', '深圳托管门店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090049', '门店特许主数据递交申请', 1628492848, '049891', '莞佛城市特许', '049891', 1628493606, '徐良庆TX0000099', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090050', '门店特许主数据递交申请', 1628492901, '049891', '广深内创门店', '049891', 1628493586, '张永钦TX0000133', '', '');
INSERT INTO `sp_nolist` VALUES ('202108090051', '门店特许主数据递交申请', 1628493346, '005952', 'BJ00522 ', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108100031', '门店特许主数据递交申请', 1628567194, '052031', 'ID:TX0000398  YY00102 益阳南县桂花中央广场店-- 托管特许店，申请系统建店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108100046', '门店特许主数据递交申请', 1628574460, '005952', '天津3家直营门店', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108110009', '门店特许主数据递交申请', 1628644276, '062576', '祥云温州店特许ID：TX0000097  详情请见附件!  ', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108110016', '门店特许主数据递交申请', 1628646427, '005952', 'BJ00523', '', 0, '', '', '');
INSERT INTO `sp_nolist` VALUES ('202108120011', '门店特许主数据递交申请', 1628732930, '004821', '湖北特许主数据建立', '', 0, '', '', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` tinyint(1) NULL DEFAULT 0 COMMENT '系统内置（Y是 N否）',
  `create_by` int(64) UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `create_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `update_by` int(64) UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `update_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE,
  UNIQUE INDEX `uni_config_key`(`config_key`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '文件上传-文件大小', 'sys.uploadFile.fileSize', '50M', 1, 31, 1582968376, 0, 0, '文件上传大小限制');
INSERT INTO `sys_config` VALUES (2, '文件上传-文件类型', 'sys.uploadFile.fileType', 'doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,exe', 1, 31, 1582968465, 31, 1628013033, '文件上传后缀类型限制');
INSERT INTO `sys_config` VALUES (3, '图片上传-图片类型', 'sys.uploadFile.imageType', 'jpg,jpeg,gif,npm,png', 1, 31, 1582968519, 0, 0, '图片上传后缀类型限制');
INSERT INTO `sys_config` VALUES (4, '图片上传-图片大小', 'sys.uploadFile.imageSize', '50M', 1, 31, 1582968538, 31, 1582991905, '图片上传大小限制');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:54:39');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:54:45');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:55:08');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:54:49');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:54:53');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:54:57');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:55:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:55:04');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:55:12');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2018-03-16 11:33:00', '', '2020-06-30 14:55:18');
INSERT INTO `sys_dept` VALUES (200, 100, '', '大数据', 1, '小刘', '18888888888', 'liou@qq.com', '1', '0', '', NULL, '', NULL);
INSERT INTO `sys_dept` VALUES (201, 100, '', '开发', 1, '老李', '18888888888', 'li@qq.com', '1', '0', 'admin', '2020-06-19 10:14:06', '', '2020-06-30 14:55:22');
INSERT INTO `sys_dept` VALUES (202, 108, '', '外勤', 1, '小a', '18888888888', 'aa@qq.com', '1', '0', '', '2020-06-19 14:59:44', '', '2020-06-30 14:55:15');
INSERT INTO `sys_dept` VALUES (203, 108, '', '行政', 0, 'aa', '18888888888', 'aa@qq.com', '0', '0', '', '2020-07-03 11:44:57', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` tinyint(1) NULL DEFAULT 0 COMMENT '是否默认（1是 0否）',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '状态（0正常 1停用）',
  `create_by` bigint(64) UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `create_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `update_by` bigint(64) UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `update_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 0, '男', '1', 'sys_user_sex', '', '', 0, 1, 31, 1582884113, 31, 1593656868, '备注信息');
INSERT INTO `sys_dict_data` VALUES (2, 0, '女', '2', 'sys_user_sex', '', '', 0, 1, 31, 1582884125, 31, 1593656871, '备注信息');
INSERT INTO `sys_dict_data` VALUES (3, 0, '保密', '0', 'sys_user_sex', '', '', 1, 1, 31, 1582884871, 31, 1593656875, '备注信息');
INSERT INTO `sys_dict_data` VALUES (24, 0, '频道页', '1', 'cms_category_type', '', '', 0, 1, 31, 1583131942, 31, 1592532634, '作为频道页，不可作为栏目发布文章，可添加下级分类');
INSERT INTO `sys_dict_data` VALUES (25, 0, '发布栏目', '2', 'cms_category_type', '', '', 0, 1, 31, 1583132032, 31, 1592532724, '作为发布栏目，可添加文章');
INSERT INTO `sys_dict_data` VALUES (26, 0, '跳转栏目', '3', 'cms_category_type', '', '', 0, 1, 31, 1583132125, 31, 1592532737, '不直接发布内容，用于跳转页面');
INSERT INTO `sys_dict_data` VALUES (27, 0, '单页栏目', '4', 'cms_category_type', '', '', 0, 1, 31, 1583132145, 31, 1592532755, '单页面模式，分类直接显示为文章');
INSERT INTO `sys_dict_data` VALUES (28, 0, '正常', '0', 'sys_job_status', '', 'default', 1, 1, 31, 1583762727, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (29, 0, '暂停', '1', 'sys_job_status', '', 'default', 0, 1, 31, 1583762751, 31, 1583763095, '');
INSERT INTO `sys_dict_data` VALUES (30, 0, '默认', 'DEFAULT', 'sys_job_group', '', 'default', 1, 1, 31, 1583762854, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (31, 0, '系统', 'SYSTEM', 'sys_job_group', '', 'default', 0, 1, 31, 1583762889, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (32, 0, '成功', '1', 'admin_login_status', '', 'default', 0, 1, 31, 1583891238, 31, 1583891244, '');
INSERT INTO `sys_dict_data` VALUES (33, 0, '失败', '0', 'admin_login_status', '', 'default', 0, 1, 31, 1583891262, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (34, 0, '成功', '1', 'sys_oper_log_status', '', 'default', 0, 1, 31, 1583917929, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (35, 0, '失败', '0', 'sys_oper_log_status', '', 'default', 0, 1, 31, 1583917942, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (36, 0, '重复执行', '1', 'sys_job_policy', '', 'default', 1, 1, 31, 1584687209, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (37, 0, '执行一次', '2', 'sys_job_policy', '', 'default', 1, 1, 31, 1584687226, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (38, 0, '显示', '1', 'sys_show_hide', NULL, 'default', 1, 1, 31, 1584687226, 0, 0, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 0, '隐藏', '0', 'sys_show_hide', NULL, 'default', 0, 1, 31, 1584687226, 0, 0, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 0, '正常', '1', 'sys_normal_disable', '', 'default', 1, 1, 31, 1592214217, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (41, 0, '停用', '0', 'sys_normal_disable', '', 'default', 0, 1, 31, 1592214239, 0, 0, '');
INSERT INTO `sys_dict_data` VALUES (49, 0, '是', '1', 'sys_yes_no', '', '', 1, 1, 31, 1592381742, 0, 1592381742, '');
INSERT INTO `sys_dict_data` VALUES (50, 0, '否', '0', 'sys_yes_no', '', '', 0, 1, 31, 1592381753, 0, 1592381753, '');
INSERT INTO `sys_dict_data` VALUES (51, 0, '已发布', '1', 'cms_news_pub_type', '', '', 1, 1, 31, 1593336428, 31, 1593393871, '');
INSERT INTO `sys_dict_data` VALUES (54, 0, '未发布', '0', 'cms_news_pub_type', '', '', 0, 1, 31, 1593393852, 0, 1593393852, '');
INSERT INTO `sys_dict_data` VALUES (55, 0, '置顶', '1', 'cms_news_attr', '', '', 0, 1, 31, 1593394753, 0, 1593394753, '');
INSERT INTO `sys_dict_data` VALUES (56, 0, '推荐', '2', 'cms_news_attr', '', '', 0, 1, 31, 1593394762, 0, 1593394762, '');
INSERT INTO `sys_dict_data` VALUES (57, 0, '普通文章', '0', 'cms_news_type', '', '', 0, 1, 31, 1593397458, 31, 1593399098, '');
INSERT INTO `sys_dict_data` VALUES (58, 0, '跳转链接', '1', 'cms_news_type', '', '', 0, 1, 31, 1593397468, 31, 1593399105, '');
INSERT INTO `sys_dict_data` VALUES (59, 0, 'cms模型', '6', 'cms_cate_models', '', '', 0, 1, 1, 1595495461, 1, 1595580310, '');
INSERT INTO `sys_dict_data` VALUES (64, 0, '幻灯', '3', 'cms_news_attr', '', '', 0, 1, 31, 1597648857, 0, 1597648857, '');
INSERT INTO `sys_dict_data` VALUES (65, 0, '[work]测试业务表', 'wf_news', 'flow_type', '', '', 0, 1, 31, 1606966815, 0, 1606966815, '');
INSERT INTO `sys_dict_data` VALUES (66, 0, '回退修改', '-1', 'flow_status', '', '', 0, 1, 31, 1606966849, 0, 1606966849, '');
INSERT INTO `sys_dict_data` VALUES (67, 0, '保存中', '0', 'flow_status', '', '', 0, 1, 31, 1606966868, 0, 1606966868, '');
INSERT INTO `sys_dict_data` VALUES (68, 0, '流程中', '1', 'flow_status', '', '', 0, 1, 31, 1606966885, 0, 1606966885, '');
INSERT INTO `sys_dict_data` VALUES (69, 0, '审批通过', '2', 'flow_status', '', '', 0, 1, 31, 1606966898, 0, 1606966898, '');
INSERT INTO `sys_dict_data` VALUES (70, 0, '普通', '0', 'flow_level', '', '', 0, 1, 31, 1606966947, 0, 1606966947, '');
INSERT INTO `sys_dict_data` VALUES (71, 0, '加急', '1', 'flow_level', '', '', 0, 1, 31, 1606967141, 0, 1606967141, '');
INSERT INTO `sys_dict_data` VALUES (72, 0, '紧急', '2', 'flow_level', '', '', 0, 1, 31, 1606967151, 0, 1606967151, '');
INSERT INTO `sys_dict_data` VALUES (73, 0, '特急', '3', 'flow_level', '', '', 0, 1, 31, 1606967161, 0, 1606967161, '');
INSERT INTO `sys_dict_data` VALUES (74, 0, 'corpid', 'corpid=wwf660e2b3e152fcff', 'access_token', '', '', 0, 1, 31, 1628273198, 31, 1628306575, '这个是企业id');
INSERT INTO `sys_dict_data` VALUES (75, 0, 'corpsecret', 'corpsecret=sk_I1hACRBtmZbvRu0IRtjcjHHXPTD5UrSxB1KJmaeg', 'access_token', '', '', 0, 1, 31, 1628273207, 31, 1628306586, '这个是审批模块的值');
INSERT INTO `sys_dict_data` VALUES (76, 0, 'value', 'Bs7vpjPUj2mCTnrWrzHsUwrt4HFqnvfrEq6K71k6i', 'access_token', '', '', 0, 1, 31, 1628273323, 31, 1628306738, '批量获取审核模板（默认是主数据递交模板）');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '状态（0正常 1停用）',
  `create_by` int(64) UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `create_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `update_by` int(64) UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `update_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', 1, 31, 1582789177, 31, 1605780337, '用于选择用户性别');
INSERT INTO `sys_dict_type` VALUES (2, '分类类型', 'cms_category_type', 1, 31, 1582789253, 31, 1583131577, '文章分类类型');
INSERT INTO `sys_dict_type` VALUES (3, '任务状态', 'sys_job_status', 1, 31, 1582789296, 31, 1583762542, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (13, '任务分组', 'sys_job_group', 1, 31, 1583762785, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (14, '管理员登录状态', 'admin_login_status', 1, 31, 1583891209, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (15, '操作日志状态', 'sys_oper_log_status', 1, 31, 1583917888, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (16, '任务策略', 'sys_job_policy', 1, 31, 1584687171, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (17, '菜单状态', 'sys_show_hide', 1, 31, 1584687171, 0, 1584687171, '菜单状态');
INSERT INTO `sys_dict_type` VALUES (18, '系统开关', 'sys_normal_disable', 1, 31, 1592214147, 31, 1592362799, '系统开关');
INSERT INTO `sys_dict_type` VALUES (24, '系统内置', 'sys_yes_no', 1, 31, 1592381722, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (25, '文章发布状态', 'cms_news_pub_type', 1, 31, 1593336396, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (26, '文章附加状态', 'cms_news_attr', 1, 31, 1593394729, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (27, '文章类型', 'cms_news_type', 1, 31, 1593397441, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (28, '文章栏目模型分类', 'cms_cate_models', 1, 1, 1595495428, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (29, '工作流程类型', 'flow_type', 1, 31, 1606966727, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (30, '工作流程审批状态', 'flow_status', 1, 31, 1606966751, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (31, '工作流紧急状态', 'flow_level', 1, 31, 1606966775, 0, 0, '');
INSERT INTO `sys_dict_type` VALUES (32, 'access_token', 'access_token', 1, 31, 1628273138, 0, 0, '企业微信获取token');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` tinyint(4) NULL DEFAULT 1 COMMENT '计划执行策略（1多次执行 2执行一次）',
  `concurrent` tinyint(4) NULL DEFAULT 1 COMMENT '是否并发执行（0允许 1禁止）',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '状态（0正常 1暂停）',
  `create_by` bigint(64) UNSIGNED NULL DEFAULT 0 COMMENT '创建者',
  `create_time` bigint(20) UNSIGNED NULL DEFAULT 1 COMMENT '创建时间',
  `update_by` bigint(64) UNSIGNED NULL DEFAULT 0 COMMENT '更新者',
  `update_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '测试任务1', '', 'DEFAULT', 'test1', '* * * * * *', 1, 0, 1, 1, 1583805259, 31, 1593566793, '');
INSERT INTO `sys_job` VALUES (2, '测试任务2', 'hello|gfast', 'DEFAULT', 'test2', '* * * * * *', 1, 0, 1, 1, 1583805312, 1, 1583809723, '备注');
INSERT INTO `sys_job` VALUES (6, '测试任务3', 'hello|gfast', 'DEFAULT', 'test2', '* * * * * *', 1, 0, 1, 1, 1583811085, 31, 1593398575, '备注');
INSERT INTO `sys_job` VALUES (8, '在线用户定时更新', '', 'DEFAULT', 'checkUserOnline', '5 */10 * * * *', 1, 0, 1, 2, 1596763977, 2, 1596768044, '');
INSERT INTO `sys_job` VALUES (10, 'cshi', '', 'DEFAULT', 'getaccess', '*/45 * * * * ?', 1, 0, 0, 31, 1628304973, 31, 1628648261, '');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` bigint(20) NULL DEFAULT 0 COMMENT '访问时间',
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录模块',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1604040961, '系统后台');
INSERT INTO `sys_login_log` VALUES (2, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1605325568, '系统后台');
INSERT INTO `sys_login_log` VALUES (3, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1605704700, '系统后台');
INSERT INTO `sys_login_log` VALUES (4, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1605758414, '系统后台');
INSERT INTO `sys_login_log` VALUES (5, 'admin', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1605861869, '系统后台');
INSERT INTO `sys_login_log` VALUES (6, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1606698396, '系统后台');
INSERT INTO `sys_login_log` VALUES (7, 'yixiaohu', '[::1]', '内网IP', 'Chrome', 'Windows 10', 0, '账号或密码错误', 1606698459, '系统后台');
INSERT INTO `sys_login_log` VALUES (8, 'yixiaohu', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1606698465, '系统后台');
INSERT INTO `sys_login_log` VALUES (9, 'admin', '192.168.0.212', '', 'Chrome', 'Windows 10', 1, '登录成功', 1606698803, '系统后台');
INSERT INTO `sys_login_log` VALUES (10, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1606962484, '系统后台');
INSERT INTO `sys_login_log` VALUES (11, 'yixiaohu', '[::1]', '内网IP', 'Chrome', 'Windows 10', 0, '账号或密码错误', 1607076002, '系统后台');
INSERT INTO `sys_login_log` VALUES (12, 'yixiaohu', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1607076009, '系统后台');
INSERT INTO `sys_login_log` VALUES (13, 'yixiaohu', '192.168.0.198', '', 'Chrome', 'Windows 10', 1, '登录成功', 1607151231, '系统后台');
INSERT INTO `sys_login_log` VALUES (14, 'demo', '192.168.0.212', '', 'Chrome', 'Windows 10', 1, '登录成功', 1607305549, '系统后台');
INSERT INTO `sys_login_log` VALUES (15, 'yixiaohu', '192.168.0.212', '', 'Chrome', 'Windows 10', 1, '登录成功', 1607305631, '系统后台');
INSERT INTO `sys_login_log` VALUES (16, 'demo', '192.168.0.198', '', 'Chrome', 'Windows 10', 1, '登录成功', 1607311328, '系统后台');
INSERT INTO `sys_login_log` VALUES (17, 'demo', '192.168.0.212', '', 'Chrome', 'Windows 10', 1, '登录成功', 1607400145, '系统后台');
INSERT INTO `sys_login_log` VALUES (18, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628013002, '系统后台');
INSERT INTO `sys_login_log` VALUES (19, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628127307, '系统后台');
INSERT INTO `sys_login_log` VALUES (20, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628127927, '系统后台');
INSERT INTO `sys_login_log` VALUES (21, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628128166, '系统后台');
INSERT INTO `sys_login_log` VALUES (22, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628131558, '系统后台');
INSERT INTO `sys_login_log` VALUES (23, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628273073, '系统后台');
INSERT INTO `sys_login_log` VALUES (24, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628303879, '系统后台');
INSERT INTO `sys_login_log` VALUES (25, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628304171, '系统后台');
INSERT INTO `sys_login_log` VALUES (26, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628304379, '系统后台');
INSERT INTO `sys_login_log` VALUES (27, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628304608, '系统后台');
INSERT INTO `sys_login_log` VALUES (28, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628304849, '系统后台');
INSERT INTO `sys_login_log` VALUES (29, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628306538, '系统后台');
INSERT INTO `sys_login_log` VALUES (30, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628317625, '系统后台');
INSERT INTO `sys_login_log` VALUES (31, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628318187, '系统后台');
INSERT INTO `sys_login_log` VALUES (32, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628323014, '系统后台');
INSERT INTO `sys_login_log` VALUES (33, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628644195, '系统后台');
INSERT INTO `sys_login_log` VALUES (34, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628648246, '系统后台');
INSERT INTO `sys_login_log` VALUES (35, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628666227, '系统后台');
INSERT INTO `sys_login_log` VALUES (36, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628668348, '系统后台');
INSERT INTO `sys_login_log` VALUES (37, 'demo', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628668712, '系统后台');
INSERT INTO `sys_login_log` VALUES (38, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628668875, '系统后台');
INSERT INTO `sys_login_log` VALUES (39, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628670165, '系统后台');
INSERT INTO `sys_login_log` VALUES (40, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628671138, '系统后台');
INSERT INTO `sys_login_log` VALUES (41, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628731142, '系统后台');
INSERT INTO `sys_login_log` VALUES (42, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628745529, '系统后台');
INSERT INTO `sys_login_log` VALUES (43, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628750225, '系统后台');
INSERT INTO `sys_login_log` VALUES (44, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628753367, '系统后台');
INSERT INTO `sys_login_log` VALUES (45, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628754367, '系统后台');
INSERT INTO `sys_login_log` VALUES (46, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628754944, '系统后台');
INSERT INTO `sys_login_log` VALUES (47, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628755162, '系统后台');
INSERT INTO `sys_login_log` VALUES (48, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628759080, '系统后台');
INSERT INTO `sys_login_log` VALUES (49, 'demo', '[::1]', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', 1628814215, '系统后台');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '请求参数',
  `json_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` bigint(20) NULL DEFAULT 0 COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1181 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '清空', 0, '/system/monitor/operlog/clear', 'DELETE', 1, 'demo', '', '/system/monitor/operlog/clear', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"清除成功\"}', 1, '', 1603359067);
INSERT INTO `sys_oper_log` VALUES (2, '', 0, '/system/monitor/operlog/list', 'GET', 1, 'demo', '', '/system/monitor/operlog/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"操作日志列表\"}', 1, '', 1603359067);
INSERT INTO `sys_oper_log` VALUES (3, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1603359073);
INSERT INTO `sys_oper_log` VALUES (4, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359074);
INSERT INTO `sys_oper_log` VALUES (5, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'demo', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359074);
INSERT INTO `sys_oper_log` VALUES (6, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1603359393);
INSERT INTO `sys_oper_log` VALUES (7, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359395);
INSERT INTO `sys_oper_log` VALUES (8, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359395);
INSERT INTO `sys_oper_log` VALUES (9, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359395);
INSERT INTO `sys_oper_log` VALUES (10, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'demo', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359395);
INSERT INTO `sys_oper_log` VALUES (11, '添加栏目', 0, '/system/cms/menu/add', 'GET', 1, 'demo', '', '/system/cms/menu/add', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"添加栏目\"}', 1, '', 1603359397);
INSERT INTO `sys_oper_log` VALUES (12, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359404);
INSERT INTO `sys_oper_log` VALUES (13, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359404);
INSERT INTO `sys_oper_log` VALUES (14, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359405);
INSERT INTO `sys_oper_log` VALUES (15, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'demo', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359405);
INSERT INTO `sys_oper_log` VALUES (16, '修改栏目', 0, '/system/cms/menu/edit', 'GET', 1, 'demo', '', '/system/cms/menu/edit?id=14', '[::1]', '内网IP', '{\"id\":\"14\"}', '{\"code\":0,\"msg\":\"修改栏目\"}', 1, '', 1603359406);
INSERT INTO `sys_oper_log` VALUES (17, '修改栏目', 0, '/system/cms/menu/edit', 'POST', 1, 'demo', '', '/system/cms/menu/edit', '[::1]', '内网IP', '{\"alias\":\"\",\"cate_address\":\"\",\"cate_content\":\"\",\"cate_type\":\"2\",\"content_template\":\"content/show.html\",\"description\":\"\",\"id\":14,\"input_seo_description\":\"\",\"input_seo_keywords\":\"\",\"input_seo_title\":\"\",\"list_template\":\"list/list.html\",\"model_id\":11,\"name\":\"专题专栏\",\"parent_id\":0,\"status\":\"1\",\"thumbnail\":\"\"}', '{\"code\":0,\"msg\":\"栏目修改成功\"}', 1, '', 1603359411);
INSERT INTO `sys_oper_log` VALUES (18, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359411);
INSERT INTO `sys_oper_log` VALUES (19, '修改栏目', 0, '/system/cms/menu/edit', 'GET', 1, 'demo', '', '/system/cms/menu/edit?id=14', '[::1]', '内网IP', '{\"id\":\"14\"}', '{\"code\":0,\"msg\":\"修改栏目\"}', 1, '', 1603359412);
INSERT INTO `sys_oper_log` VALUES (20, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359415);
INSERT INTO `sys_oper_log` VALUES (21, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359415);
INSERT INTO `sys_oper_log` VALUES (22, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359415);
INSERT INTO `sys_oper_log` VALUES (23, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'demo', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1603359415);
INSERT INTO `sys_oper_log` VALUES (24, '修改栏目', 0, '/system/cms/menu/edit', 'GET', 1, 'demo', '', '/system/cms/menu/edit?id=14', '[::1]', '内网IP', '{\"id\":\"14\"}', '{\"code\":0,\"msg\":\"修改栏目\"}', 1, '', 1603359416);
INSERT INTO `sys_oper_log` VALUES (25, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040642);
INSERT INTO `sys_oper_log` VALUES (26, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040642);
INSERT INTO `sys_oper_log` VALUES (27, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604040643);
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040681);
INSERT INTO `sys_oper_log` VALUES (29, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040685);
INSERT INTO `sys_oper_log` VALUES (30, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'yixiaohu', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"cms\",\"icon\":\"education\",\"isFrame\":\"1\",\"menuName\":\"cms前端展示\",\"menuType\":\"1\",\"name\":\"cms\",\"orderNum\":0,\"parentId\":4,\"path\":\"http://localhost:8200/cms\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1604040725);
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040725);
INSERT INTO `sys_oper_log` VALUES (32, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=106', '[::1]', '内网IP', '{\"menuId\":\"106\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040729);
INSERT INTO `sys_oper_log` VALUES (33, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'yixiaohu', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"system/cms/news/list\",\"icon\":\"education\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"cms前端展示\",\"menuType\":\"1\",\"name\":\"cms\",\"orderNum\":0,\"parentId\":4,\"path\":\"http://localhost:8200/cms\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1604040735);
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040735);
INSERT INTO `sys_oper_log` VALUES (35, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040739);
INSERT INTO `sys_oper_log` VALUES (36, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040739);
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040740);
INSERT INTO `sys_oper_log` VALUES (38, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604040745);
INSERT INTO `sys_oper_log` VALUES (39, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040750);
INSERT INTO `sys_oper_log` VALUES (40, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=106', '[::1]', '内网IP', '{\"menuId\":\"106\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040754);
INSERT INTO `sys_oper_log` VALUES (41, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=106', '[::1]', '内网IP', '{\"menuId\":\"106\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040788);
INSERT INTO `sys_oper_log` VALUES (42, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'yixiaohu', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"system/cms/news/list\",\"icon\":\"education\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"cms前端展示\",\"menuType\":\"1\",\"name\":\"cms\",\"orderNum\":0,\"parentId\":4,\"path\":\"http://localhost:8200/cms\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1604040798);
INSERT INTO `sys_oper_log` VALUES (43, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040798);
INSERT INTO `sys_oper_log` VALUES (44, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040802);
INSERT INTO `sys_oper_log` VALUES (45, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040802);
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040803);
INSERT INTO `sys_oper_log` VALUES (47, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604040806);
INSERT INTO `sys_oper_log` VALUES (48, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'yixiaohu', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040808);
INSERT INTO `sys_oper_log` VALUES (49, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'yixiaohu', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040808);
INSERT INTO `sys_oper_log` VALUES (50, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604040810);
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040814);
INSERT INTO `sys_oper_log` VALUES (52, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040829);
INSERT INTO `sys_oper_log` VALUES (53, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040829);
INSERT INTO `sys_oper_log` VALUES (54, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040829);
INSERT INTO `sys_oper_log` VALUES (55, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040862);
INSERT INTO `sys_oper_log` VALUES (56, '', 0, '/system/dept/treeSelect', 'GET', 1, 'yixiaohu', '', '/system/dept/treeSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040914);
INSERT INTO `sys_oper_log` VALUES (57, '用户管理', 0, '/system/auth/userList', 'GET', 1, 'yixiaohu', '', '/system/auth/userList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1604040914);
INSERT INTO `sys_oper_log` VALUES (58, '', 0, '/system/user/profile', 'GET', 1, 'yixiaohu', '', '/system/user/profile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040925);
INSERT INTO `sys_oper_log` VALUES (59, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040961);
INSERT INTO `sys_oper_log` VALUES (60, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040961);
INSERT INTO `sys_oper_log` VALUES (61, '', 0, '/system/user/profile', 'GET', 1, 'demo', '', '/system/user/profile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604040962);
INSERT INTO `sys_oper_log` VALUES (62, '广告位管理', 0, '/system/plug/ad/type/list', 'GET', 1, 'demo', '', '/system/plug/ad/type/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"广告位列表\"}', 1, '', 1604040967);
INSERT INTO `sys_oper_log` VALUES (63, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604041087);
INSERT INTO `sys_oper_log` VALUES (64, '修改文章', 0, '/system/cms/news/edit', 'GET', 1, 'demo', '', '/system/cms/news/edit?id=128', '[::1]', '内网IP', '{\"id\":\"128\"}', '{\"code\":0,\"msg\":\"添加信息\"}', 1, '', 1604041089);
INSERT INTO `sys_oper_log` VALUES (65, '', 0, '/system/cms/news/getModelFields', 'GET', 1, 'demo', '', '/system/cms/news/getModelFields?cateIds[]=25&newsId=128', '[::1]', '内网IP', '{\"cateIds\":[\"25\"],\"newsId\":\"128\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041089);
INSERT INTO `sys_oper_log` VALUES (66, '模型列表', 0, '/system/model/info/list', 'GET', 1, 'demo', '', '/system/model/info/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1604041100);
INSERT INTO `sys_oper_log` VALUES (67, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041100);
INSERT INTO `sys_oper_log` VALUES (68, '', 0, '/system/model/category/all', 'GET', 1, 'demo', '', '/system/model/category/all', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041100);
INSERT INTO `sys_oper_log` VALUES (69, '', 0, '/system/model/fields/list', 'GET', 1, 'demo', '', '/system/model/fields/list?modelId=9', '[::1]', '内网IP', '{\"modelId\":\"9\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1604041107);
INSERT INTO `sys_oper_log` VALUES (70, '', 0, '/system/model/fields/delete', 'DELETE', 1, 'demo', '', '/system/model/fields/delete', '[::1]', '内网IP', '{\"ids\":[26]}', '{\"code\":0,\"msg\":\"删除成功\"}', 1, '', 1604041110);
INSERT INTO `sys_oper_log` VALUES (71, '', 0, '/system/model/fields/list', 'GET', 1, 'demo', '', '/system/model/fields/list?modelId=9', '[::1]', '内网IP', '{\"modelId\":\"9\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1604041110);
INSERT INTO `sys_oper_log` VALUES (72, '', 0, '/system/model/fields/setFieldsAttr', 'POST', 1, 'demo', '', '/system/model/fields/setFieldsAttr', '[::1]', '内网IP', '{\"fieldsList\":[{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"0\",\"field_desc\":\"\",\"field_id\":19,\"field_length\":\"\",\"field_name\":\"art_id\",\"field_rules\":\"unsigned\",\"field_sort\":0,\"field_title\":\"附加表主键\",\"field_type\":\"large_number\",\"field_width\":\"\",\"model_edit\":\"\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"1\",\"model_sort\":\"1\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":24,\"field_length\":\"\",\"field_name\":\"news_content\",\"field_rules\":\"\",\"field_sort\":0,\"field_title\":\"文章内容\",\"field_type\":\"richtext\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":20,\"field_length\":\"\",\"field_name\":\"thumbnail\",\"field_rules\":\"\",\"field_sort\":0,\"field_title\":\"缩略图\",\"field_type\":\"imagefile\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":21,\"field_length\":\"\",\"field_name\":\"news_files\",\"field_rules\":\"\",\"field_sort\":0,\"field_title\":\"附件\",\"field_type\":\"files\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":17,\"field_length\":\"\",\"field_name\":\"news_file\",\"field_rules\":\"\",\"field_sort\":0,\"field_title\":\"单附件\",\"field_type\":\"file\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":18,\"field_length\":\"\",\"field_name\":\"news_imgs\",\"field_rules\":\"\",\"field_sort\":0,\"field_title\":\"多图片\",\"field_type\":\"images\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":16,\"field_length\":\"\",\"field_name\":\"news_title\",\"field_rules\":\"required\",\"field_sort\":0,\"field_title\":\"文章标题\",\"field_type\":\"selectnumber\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"1\",\"field_desc\":\"\",\"field_id\":25,\"field_length\":\"\",\"field_name\":\"news_info\",\"field_rules\":\"required\",\"field_sort\":0,\"field_title\":\"多选测试\",\"field_type\":\"checkbox\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"1\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"1\",\"update_by\":0,\"update_time\":0},{\"create_by\":0,\"create_time\":0,\"field_align\":\"\",\"field_data\":\"\",\"field_default\":\"\",\"field_desc\":\"\",\"field_id\":27,\"field_length\":\"\",\"field_name\":\"time_demo\",\"field_rules\":\"\",\"field_sort\":0,\"field_title\":\"时间测试\",\"field_type\":\"datetime\",\"field_width\":\"\",\"model_edit\":\"1\",\"model_id\":9,\"model_indexes\":\"\",\"model_list\":\"\",\"model_order\":\"\",\"model_pk\":\"\",\"model_sort\":\"\",\"search_list\":\"\",\"update_by\":0,\"update_time\":0}],\"modelId\":9,\"pkId\":19}', '{\"code\":0,\"msg\":\"修改成功\"}', 1, '', 1604041112);
INSERT INTO `sys_oper_log` VALUES (73, '', 0, '/system/model/fields/list', 'GET', 1, 'demo', '', '/system/model/fields/list?modelId=9', '[::1]', '内网IP', '{\"modelId\":\"9\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1604041112);
INSERT INTO `sys_oper_log` VALUES (74, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041113);
INSERT INTO `sys_oper_log` VALUES (75, '', 0, '/system/model/category/all', 'GET', 1, 'demo', '', '/system/model/category/all', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041113);
INSERT INTO `sys_oper_log` VALUES (76, '模型列表', 0, '/system/model/info/list', 'GET', 1, 'demo', '', '/system/model/info/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1604041113);
INSERT INTO `sys_oper_log` VALUES (77, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604041117);
INSERT INTO `sys_oper_log` VALUES (78, '修改文章', 0, '/system/cms/news/edit', 'GET', 1, 'demo', '', '/system/cms/news/edit?id=127', '[::1]', '内网IP', '{\"id\":\"127\"}', '{\"code\":0,\"msg\":\"添加信息\"}', 1, '', 1604041118);
INSERT INTO `sys_oper_log` VALUES (79, '', 0, '/system/cms/news/getModelFields', 'GET', 1, 'demo', '', '/system/cms/news/getModelFields?cateIds[]=22&newsId=127', '[::1]', '内网IP', '{\"cateIds\":[\"22\"],\"newsId\":\"127\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041118);
INSERT INTO `sys_oper_log` VALUES (80, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'demo', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041130);
INSERT INTO `sys_oper_log` VALUES (81, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041130);
INSERT INTO `sys_oper_log` VALUES (82, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604041381);
INSERT INTO `sys_oper_log` VALUES (83, '修改文章', 0, '/system/cms/news/edit', 'GET', 1, 'demo', '', '/system/cms/news/edit?id=128', '[::1]', '内网IP', '{\"id\":\"128\"}', '{\"code\":0,\"msg\":\"添加信息\"}', 1, '', 1604041382);
INSERT INTO `sys_oper_log` VALUES (84, '', 0, '/system/cms/news/getModelFields', 'GET', 1, 'demo', '', '/system/cms/news/getModelFields?cateIds[]=25&newsId=128', '[::1]', '内网IP', '{\"cateIds\":[\"25\"],\"newsId\":\"128\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1604041382);
INSERT INTO `sys_oper_log` VALUES (85, '修改文章', 0, '/system/cms/news/edit', 'POST', 1, 'demo', '', '/system/cms/news/edit', '[::1]', '内网IP', '{\"attr\":[],\"cateIds\":[25],\"excerpt\":\"对于贵州省三都水族自治县都江镇甲找村甲找小学的师生而言，7月24日是个美好的日子。学校里来了许多和善的叔叔阿姨，他们带着满满的爱心，为孩子们送上用心准备的礼物：精美的图书、崭新的体育用品……中国扶贫基金会执行副理事长王行最\",\"id\":128,\"isJump\":\"0\",\"jumpUrl\":\"\",\"keywords\":\"\",\"modelForm\":{\"news_content\":\"\\u003cp\\u003e\\u003cimg alt=\\\"\\\" src=\\\"https://www.zhutibaba.com/demo/zimeiti2/wp-content/uploads/sites/5/2018/07/b46-800x398.jpg\\\" style=\\\"height:398px; width:800px\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e对于贵州省三都水族自治县都江镇甲找村甲找小学的师生而言，7月24日是个美好的日子。学校里来了许多和善的叔叔阿姨，他们带着满满的爱心，为孩子们送上用心准备的礼物：精美的图书、崭新的体育用品\\u0026hellip;\\u0026hellip;中国扶贫基金会执行副理事长王行最、百胜中国首席公共事务官王立志（Alice Wang）、百胜中国首席供应链官兼塔可贝尔总经理陈玟瑞（Danny Tan）等领导，与百胜中国员工代表，全国媒体代表、志愿者们一起来到了这所位于黔南山区的乡村小学，将凝聚着千万消费者与百胜中国员工爱心的营养加餐和礼物分发到全校100多名小学生手里。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cstrong\\u003e十一年的坚持，捐一元汇集大爱\\u003c/strong\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026ldquo;捐一元?献爱心?送营养\\u0026rdquo;公益项目（下简称：\\u0026ldquo;捐一元\\u0026rdquo; ）项目于2008年由中国扶贫基金会携手百胜中国共同发起，向全社会号召一人捐出一元钱，为贫困地区孩子提供营养加餐，并为孩子们进行营养知识普及。目前，该项目已是百胜中国标志性企业社会责任项目，并通过百胜中国旗下遍布全国约8000家餐厅和相关的网络订餐系统向社会募捐，搭建了一个\\u0026ldquo;全民公益\\u0026rdquo;的捐款平台。甲找小学距离贵阳220公里，位于三都水族自治县县城东南，离县城45公里，但因为山路弯曲狭窄，这45公里开车就要开一个半小时以上。学校覆盖周边五个村落，其中最远的离学校有12公里，所以住校的学生占了90%以上。这意味着学校不但负责教育，也承担起孩子们的食宿照顾。2016年， \\u0026ldquo;捐一元\\u0026rdquo;公益项目进入了甲找小学，除了为孩子们提供牛奶和鸡蛋的营养加餐，也为该校捐赠了全新\\u0026ldquo;爱心厨房\\u0026rdquo;。从此，孩子们可以在学校吃上更营养更健康的餐食。截至2018年6月，\\u0026ldquo;捐一元\\u0026rdquo;项目已为贵州三都县累计投入超过320万元，受益学生约1.7万人次，为学生提供了92万份营养加餐，并为17所小学配备爱心厨房设备。活动当天，百胜中国和中国扶贫基金会的代表们为孩子们带来了精心准备的礼品，包括体育用品和优质儿童图书。百胜中国首席执行官屈翠容（Joey Wat）虽然无法亲临现场，专门委托同事为孩子们带去崭新的书包。中午，大家一起为孩子们发放营养加餐。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e中国扶贫基金会执行副理事长王行最表示：\\u0026ldquo;今年是捐一元项目的第十一年。感谢百胜中国十一年来的坚持，捐一元可以说是推动\\u0026ldquo;全民公益\\u0026rdquo;的典范，赢得了社会公众的高度认可和积极参与，累计参与公众超过一亿人次，已成为参与人数最多的全民公益项目之一。\\u0026rdquo;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e看着孩子们的笑脸，百胜中国首席公共事务官王立志女士欣慰地表示：\\u0026ldquo;我非常高兴地看到，在过去十年内，\\u0026lsquo;捐一元\\u0026rsquo;项目为数十万贫困地区的小学生提供每日营养加餐，持续改善他们的营养状况。同时这个项目也提升了45万百胜中国员工的公益意识和参与公益的主动性。更重要的是，我们通过十年的探索和努力，传播了\\u0026lsquo;人人公益\\u0026rsquo;的理念，一元钱的力量虽小，汇集起来便是大爱。就能为孩子创造更健康、更美好的未来。\\u0026rdquo;\\u003c/p\\u003e\\n\",\"news_file\":null,\"news_files\":null,\"news_imgs\":[],\"news_info\":[\"1\"],\"news_title\":\"0\",\"thumbnail\":\"\",\"time_demo\":\"2020-10-30 11:39:25\"},\"publishedTime\":\"2020-10-30 11:39:22\",\"source\":\"\",\"status\":\"1\",\"thumbnail\":\"pub_upload/2020-10-30/c6pww9dkku60m8yrpv.jpg\",\"title\":\"百胜中国“捐一元”开启第十一年爱心之旅\"}', '{\"code\":0,\"msg\":\"修改信息成功\"}', 1, '', 1604041385);
INSERT INTO `sys_oper_log` VALUES (86, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1604041385);
INSERT INTO `sys_oper_log` VALUES (87, '', 0, '/system/index/getInfo', 'GET', 1, '18999998889', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325551);
INSERT INTO `sys_oper_log` VALUES (88, '', 0, '/system/index/getRouters', 'GET', 1, '18999998889', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325551);
INSERT INTO `sys_oper_log` VALUES (89, '', 0, '/system/user/profile', 'GET', 1, '18999998889', '', '/system/user/profile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325557);
INSERT INTO `sys_oper_log` VALUES (90, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325568);
INSERT INTO `sys_oper_log` VALUES (91, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325568);
INSERT INTO `sys_oper_log` VALUES (92, '', 0, '/system/user/profile', 'GET', 1, 'demo', '', '/system/user/profile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325568);
INSERT INTO `sys_oper_log` VALUES (93, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605325572);
INSERT INTO `sys_oper_log` VALUES (94, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325573);
INSERT INTO `sys_oper_log` VALUES (95, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改成功\"}', 1, '', 1605325574);
INSERT INTO `sys_oper_log` VALUES (96, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605325574);
INSERT INTO `sys_oper_log` VALUES (97, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325760);
INSERT INTO `sys_oper_log` VALUES (98, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325760);
INSERT INTO `sys_oper_log` VALUES (99, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605325764);
INSERT INTO `sys_oper_log` VALUES (100, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605325765);
INSERT INTO `sys_oper_log` VALUES (101, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改成功\"}', 1, '', 1605325768);
INSERT INTO `sys_oper_log` VALUES (102, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605325768);
INSERT INTO `sys_oper_log` VALUES (103, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605704700);
INSERT INTO `sys_oper_log` VALUES (104, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605704700);
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605704706);
INSERT INTO `sys_oper_log` VALUES (106, '', 0, '/system/monitor/server/info', 'GET', 1, 'demo', '', '/system/monitor/server/info', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"服务监控\"}', 1, '', 1605704712);
INSERT INTO `sys_oper_log` VALUES (107, '在线用户', 0, '/system/monitor/online/list', 'GET', 1, 'demo', '', '/system/monitor/online/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"用户在线状态\"}', 1, '', 1605704717);
INSERT INTO `sys_oper_log` VALUES (108, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1605704721);
INSERT INTO `sys_oper_log` VALUES (109, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605704729);
INSERT INTO `sys_oper_log` VALUES (110, '', 0, '/system/model/category/all', 'GET', 1, 'demo', '', '/system/model/category/all', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605704729);
INSERT INTO `sys_oper_log` VALUES (111, '模型列表', 0, '/system/model/info/list', 'GET', 1, 'demo', '', '/system/model/info/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1605704729);
INSERT INTO `sys_oper_log` VALUES (112, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605758414);
INSERT INTO `sys_oper_log` VALUES (113, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605758414);
INSERT INTO `sys_oper_log` VALUES (114, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605758418);
INSERT INTO `sys_oper_log` VALUES (115, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605758420);
INSERT INTO `sys_oper_log` VALUES (116, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605758421);
INSERT INTO `sys_oper_log` VALUES (117, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605758438);
INSERT INTO `sys_oper_log` VALUES (118, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605758484);
INSERT INTO `sys_oper_log` VALUES (119, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605768677);
INSERT INTO `sys_oper_log` VALUES (120, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605768677);
INSERT INTO `sys_oper_log` VALUES (121, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605768678);
INSERT INTO `sys_oper_log` VALUES (122, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605768856);
INSERT INTO `sys_oper_log` VALUES (123, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605768860);
INSERT INTO `sys_oper_log` VALUES (124, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605768899);
INSERT INTO `sys_oper_log` VALUES (125, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605768900);
INSERT INTO `sys_oper_log` VALUES (126, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605768953);
INSERT INTO `sys_oper_log` VALUES (127, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605769240);
INSERT INTO `sys_oper_log` VALUES (128, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别aaa\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605769393);
INSERT INTO `sys_oper_log` VALUES (129, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1605769560);
INSERT INTO `sys_oper_log` VALUES (130, '修改文章', 0, '/system/cms/news/edit', 'GET', 1, 'demo', '', '/system/cms/news/edit?id=130', '[::1]', '内网IP', '{\"id\":\"130\"}', '{\"code\":0,\"msg\":\"添加信息\"}', 1, '', 1605769561);
INSERT INTO `sys_oper_log` VALUES (131, '', 0, '/system/cms/news/getModelFields', 'GET', 1, 'demo', '', '/system/cms/news/getModelFields?cateIds[]=28&newsId=130', '[::1]', '内网IP', '{\"cateIds\":[\"28\"],\"newsId\":\"130\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605769561);
INSERT INTO `sys_oper_log` VALUES (132, '修改文章', 0, '/system/cms/news/edit', 'POST', 1, 'demo', '', '/system/cms/news/edit', '[::1]', '内网IP', '{\"attr\":[],\"cateIds\":[28],\"excerpt\":\"“全面促进消费”“扎实推动共同富裕”“新型工农城乡关系”“实施乡村建设行动”“促进经济社会发展全面绿色转型”“确保二〇二七年实现建军百年奋斗目标”……这些新提法、新部署体现了鲜明的问题导向，彰显了以人民为中心的发展思想。\",\"id\":130,\"isJump\":\"0\",\"jumpUrl\":\"\",\"keywords\":\"\",\"modelForm\":{\"news_content\":\"\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980379506_278_1080x1622.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e10月29日，党的十九届五中全会在北京闭幕。会议发表6000余字的公报，透露了丰富信息。\\u0026ldquo;四个全面\\u0026rdquo;中的第一个\\u0026ldquo;全面\\u0026rdquo;要改为\\u0026ldquo;全面建设社会主义现代化国家\\u0026rdquo;了。中等收入群体要显著扩大了。我国要实施\\u0026ldquo;乡村建设行动\\u0026rdquo;了\\u0026hellip;\\u0026hellip;公报中的许多新提法，即将走进我们的生活。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△联播视频丨中国共产党第十九届中央委员会第五次全体会议公报\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cstrong\\u003e\\u0026nbsp;新成果：勾画\\u0026ldquo;十四五\\u0026rdquo;发展蓝图\\u0026nbsp;\\u003c/strong\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e五中全会审议五年规划建议，近年来已成惯例。五年前的同一天，2015年10月29日，党的十八届五中全会审议通过了《中共中央关于制定国民经济和社会发展第十三个五年规划的建议》。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e今年的十九届五中全会审议通过了《中共中央关于制定国民经济和社会发展第十四个五年规划和二〇三五年远景目标的建议》。这份文件不仅谋划未来5年发展，还勾画未来15年蓝图。在此之前，1995年召开的十四届五中全会曾审议通过《中共中央关于制定国民经济和社会发展\\u0026ldquo;九五\\u0026rdquo;计划和2010年远景目标的建议》。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980438512_417_1000x750.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980449175_855_1000x750.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△第三届中国国际进口博览会即将在上海举办，会展中心已准备就绪。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e五年规划建议，重在宏观性、战略性、指导性。五年规划建议通过之后，还要根据建议制定五年规划纲要，重在规定具体的工作部署。五年前，十八届五中全会审议通过\\u0026ldquo;十三五\\u0026rdquo;规划建议后，次年3月，十二届全国人大四次会议审议通过了\\u0026ldquo;十三五\\u0026rdquo;规划纲要。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e审议通过\\u0026ldquo;十四五\\u0026rdquo;规划建议，是十九届五中全会的最重要成果。明年即将开启的\\u0026ldquo;十四五\\u0026rdquo;时期，是中国向第二个百年奋斗目标进军的第一个五年。\\u0026ldquo;十四五\\u0026rdquo;规划建议将为今后一个时期中国经济社会发展指明方向、勾画蓝图。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980473822_641_1000x1335.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△10月26日，我国在西昌卫星发射中心使用长征二号丙运载火箭成功将遥感30号07组卫星送入预定轨道。这是壮观的火箭尾焰特写。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e按照惯例，在五中全会闭幕几天之后，五年规划建议将全文公布。五中全会闭幕当天发布的公报，是外界提前了解五年规划建议的重要窗口。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cstrong\\u003e\\u0026nbsp;新论断：我国发展仍然处于重要战略机遇期\\u0026nbsp;\\u003c/strong\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e十九届五中全会公报指出，全会深入分析了我国发展环境面临的深刻复杂变化。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e今年7月30日召开的中央政治局会议，作出了今年10月在北京召开十九届五中全会的决定。那次会议作出论断：当前和今后一个时期，我国发展仍然处于战略机遇期，但机遇和挑战都有新的发展变化。此次五中全会公报把前半句修改为：我国发展仍然处于\\u003cstrong\\u003e重要\\u003c/strong\\u003e战略机遇期。新增的\\u0026ldquo;重要\\u0026rdquo;两字，是十分重要的判断。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603981028451_425_1000x563.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△汽车产业是大连自贸片区的八大产业项目之一，现已形成集整车生产、零部件加工、销售、运输、平行进口汽车等全链条的汽车产业。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e另一个新提法，7月30日的政治局会议提出\\u0026ldquo;善于在危机中育新机、于变局中开新局\\u0026rdquo;，十九届五中全会公报则提出\\u0026ldquo;善于在危机中\\u003cstrong\\u003e育先机\\u003c/strong\\u003e、于变局中开新局\\u0026rdquo;。从\\u0026ldquo;育新机\\u0026rdquo;到\\u0026ldquo;育先机\\u0026rdquo;，强化了要下先手棋、抢抓机遇。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e《时政新闻眼》发现，在五中全会召开十多天前的中央党校（国家行政学院）中青年干部培训班开班式上，习近平总书记就开始用了\\u0026ldquo;要在危机中育先机、于变局中开新局\\u0026rdquo;这一新提法。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980535104_698_1000x563.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△中央党校校园内名为\\u0026ldquo;一大代表\\u0026rdquo;的主题雕塑\\u003c/p\\u003e\\n\\n\\u003cp\\u003e分析环境变化，是为了作出科学决策。今年以来，习近平多次强调，\\u003cstrong\\u003e必须在一个更加不稳定不确定的世界中谋求我国发展\\u003c/strong\\u003e。十九届五中全会审议通过的\\u0026ldquo;十四五\\u0026rdquo;规划建议，就是要为不确定性的世界注入确定性，为中国人民瞻望可以预期的未来。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603981406951_3_1000x563.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△上海洋山港\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cstrong\\u003e\\u0026nbsp;新目标：国力强、人民富、底气足\\u0026nbsp;\\u003c/strong\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e5年之后，中国将发展到哪一步？15年之后，我们将过上什么样的生活？从十九届五中全会公报中都可以找到答案和线索。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e全会提出了\\u0026ldquo;十四五\\u0026rdquo;时期经济社会发展主要目标，主要体现在六个方面：经济发展取得新成效，改革开放迈出新步伐，社会文明程度得到新提高，生态文明建设实现新进步，民生福祉达到新水平，国家治理效能得到新提升。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980601826_832_1000x563.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980611596_692_1000x563.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△国家实施长江流域禁捕退捕政策后，江苏宿迁泗洪县启动洪泽湖水域禁捕退捕和住家船整治工作。这是聚集在渔港等待拆解的渔船。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e全会提出了\\u0026ldquo;十四五\\u0026rdquo;时期经济社会发展指导思想和必须遵循的原则。全面建成小康社会胜利在望，\\u0026ldquo;四个全面\\u0026rdquo;战略布局中的第一个\\u0026ldquo;全面\\u0026rdquo;也相应修改为\\u0026ldquo;\\u003cstrong\\u003e全面建设社会主义现代化国家\\u003c/strong\\u003e\\u0026rdquo;。全会还鲜明提出了发展的\\u0026ldquo;主题主线\\u0026rdquo;和\\u0026ldquo;两个根本\\u0026rdquo;：以推动高质量发展为主题，以深化供给侧结构性改革为主线，以改革创新为根本动力，以满足人民日益增长的美好生活需要为根本目的。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980641183_751_1000x750.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△江西吉安黄岗村，供电公司工人正在检修\\u0026ldquo;光伏+取暖\\u0026rdquo;设备，保障村民温暖过冬。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e全会还提出了到2035年基本实现社会主义现代化远景目标。三年前，习近平总书记在党的十九大曾展望了到2035年的发展目标。两相对比，新风扑面。党的十九大报告中提出的目标是\\u0026ldquo;我国经济实力、科技实力将大幅跃升\\u0026rdquo;，此次的提法是\\u0026ldquo;我国经济实力、科技实力、\\u003cstrong\\u003e综合国力\\u003c/strong\\u003e将大幅跃升\\u0026rdquo;。坚实的综合国力，是中国的深厚底气。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980664079_585_1000x563.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△位于河套地区的深港科技创新合作区\\u003c/p\\u003e\\n\\n\\u003cp\\u003e十九大报告提出的2035年发展目标之一是\\u0026ldquo;人民生活更为宽裕，中等收入群体比例明显提高\\u0026rdquo;，此次表述为：\\u0026ldquo;人均国内生产总值达到中等发达国家水平，中等收入群体显著扩大\\u0026rdquo;，\\u0026ldquo;全体人民共同富裕取得更为明显的实质性进展\\u0026rdquo;。从脱贫到共富，主题悄然变迁。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603980689605_787_1000x750.jpg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△山东枣庄市山亭区因地制宜发展花卉培育，带动贫困村民多渠道增收。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cstrong\\u003e\\u0026nbsp;新部署：\\u003c/strong\\u003e\\u003cstrong\\u003e人民对美好生活的向往就是我们的奋斗目标\\u0026nbsp;\\u003c/strong\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026ldquo;十四五\\u0026rdquo;规划建议除了确立发展理念、方向思路，还明确了发展的重点任务、重大举措。十九届五中全会公报指出，从坚持创新在我国现代化建设全局中的核心地位，到坚持党的全面领导，全会在十几个领域作出了全面部署。许多新提法，令人瞩目。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603983661339_401_1000x563.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△江西于都，中央红军长征出发渡口\\u003c/p\\u003e\\n\\n\\u003cp\\u003e十九届五中全会继续把创新作为推动发展的第一动力。全会首次提出，\\u0026ldquo;\\u003cstrong\\u003e把科技自立自强作为国家发展的战略支撑\\u003c/strong\\u003e\\u0026rdquo;。今年7月，在吉林一汽集团考察时，习近平总书记就曾强调，\\u0026ldquo;必须加强关键核心技术和关键零部件的自主研发，实现技术自立自强，做强做大民族品牌。\\u0026rdquo;面对\\u0026ldquo;卡脖子\\u0026rdquo;问题，中国科技必当自立自强。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e在加快发展现代产业体系领域，全会提出，要坚定不移建设制造强国、质量强国、网络强国、数字中国。把\\u003cstrong\\u003e制造强国\\u003c/strong\\u003e摆在第一位，重点体现了坚持把发展经济着力点放在实体经济上的理念。在构建新发展格局领域，全会提出，要坚持扩大内需这个战略基点，加快培育完整内需体系。\\u003cstrong\\u003e培育完整内需体系\\u003c/strong\\u003e，这是以国内大循环为主体的必然要求。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603982614968_851_1000x563.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△浙江长兴制造基地生产的全新一代7DCT双离合自动变速器，拥有完全自主知识产权。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026ldquo;全面促进消费\\u0026rdquo;\\u0026ldquo;扎实推动共同富裕\\u0026rdquo;\\u0026ldquo;新型工农城乡关系\\u0026rdquo;\\u0026ldquo;实施乡村建设行动\\u0026rdquo;\\u0026ldquo;促进经济社会发展全面绿色转型\\u0026rdquo;\\u0026ldquo;确保二〇二七年实现建军百年奋斗目标\\u0026rdquo;\\u0026hellip;\\u0026hellip;这些新提法、新部署体现了鲜明的问题导向，彰显了以人民为中心的发展思想。\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026nbsp;\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u003cimg src=\\\"http://p1.img.cctvpic.com/cportal/cnews-yz/img/2020/10/29/1603982015006_333_1000x563.jpeg\\\" /\\u003e\\u003c/p\\u003e\\n\\n\\u003cp\\u003e△天安门广场，国庆大花篮\\u003c/p\\u003e\\n\\n\\u003cp\\u003e\\u0026ldquo;好的方针政策和发展规划都应该顺应人民意愿、符合人民所思所盼，从群众中来、到群众中去。\\u0026rdquo;习近平总书记今年9月在基层代表座谈会上强调的这一理念，已经鲜明体现到了\\u0026ldquo;十四五\\u0026rdquo;规划建议之中，也将随着规划实施走进每个中国人的生活之中。\\u003c/p\\u003e\\n\",\"news_file\":null,\"news_files\":null,\"news_imgs\":[],\"news_info\":[\"1\"],\"news_title\":\"0\",\"thumbnail\":\"\",\"time_demo\":\"2020-10-30 11:43:57\"},\"publishedTime\":\"2020-10-30 11:43:54\",\"source\":\"\",\"status\":\"1\",\"thumbnail\":\"pub_upload/2020-10-30/c6pwzxde4qkkciir2g.jpeg\",\"title\":\"时政新闻眼丨五中全会公报这些新提法，即将走进你我生活\"}', '{\"code\":0,\"msg\":\"修改信息成功\"}', 1, '', 1605769566);
INSERT INTO `sys_oper_log` VALUES (133, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1605769566);
INSERT INTO `sys_oper_log` VALUES (134, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1605770087);
INSERT INTO `sys_oper_log` VALUES (135, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=6', '[::1]', '内网IP', '{\"id\":\"6\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1605770088);
INSERT INTO `sys_oper_log` VALUES (136, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":1,\"create_time\":1583811085,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"test2\",\"job_group\":\"DEFAULT\",\"job_id\":6,\"job_name\":\"测试任务3\",\"job_params\":\"hello|gfast\",\"misfire_policy\":1,\"remark\":\"备注\",\"status\":1,\"update_by\":31,\"update_time\":1593398575}', '', 0, '', 1605770089);
INSERT INTO `sys_oper_log` VALUES (137, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":1,\"create_time\":1583811085,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"test2\",\"job_group\":\"DEFAULT\",\"job_id\":6,\"job_name\":\"测试任务3\",\"job_params\":\"hello|gfast\",\"misfire_policy\":1,\"remark\":\"备注\",\"status\":1,\"update_by\":31,\"update_time\":1593398575}', '', 0, '', 1605770099);
INSERT INTO `sys_oper_log` VALUES (138, '角色管理', 0, '/system/auth/roleList', 'GET', 1, 'demo', '', '/system/auth/roleList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605770524);
INSERT INTO `sys_oper_log` VALUES (139, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605770657);
INSERT INTO `sys_oper_log` VALUES (140, '', 0, '/system/dept/treeSelect', 'GET', 1, 'demo', '', '/system/dept/treeSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605770662);
INSERT INTO `sys_oper_log` VALUES (141, '用户管理', 0, '/system/auth/userList', 'GET', 1, 'demo', '', '/system/auth/userList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605770662);
INSERT INTO `sys_oper_log` VALUES (142, '修改用户', 0, '/system/auth/editUser', 'GET', 1, 'demo', '', '/system/auth/editUser?id=4', '[::1]', '内网IP', '{\"id\":\"4\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605770664);
INSERT INTO `sys_oper_log` VALUES (143, '修改用户', 0, '/system/auth/editUser', 'POST', 1, 'demo', '', '/system/auth/editUser', '[::1]', '内网IP', '{\"deptId\":102,\"email\":\"qlgl@qq.com\",\"is_admin\":1,\"nickName\":\"测试c\",\"password\":\"\",\"phonenumber\":\"13758596696\",\"postIds\":[],\"remark\":\"\",\"roleIds\":[],\"sex\":\"0\",\"status\":\"0\",\"userId\":4,\"userName\":\"qlgl\"}', '{\"code\":-1,\"msg\":\"修改用户信息失败\"}', 0, '', 1605770665);
INSERT INTO `sys_oper_log` VALUES (144, '修改用户', 0, '/system/auth/editUser', 'POST', 1, 'demo', '', '/system/auth/editUser', '[::1]', '内网IP', '{\"deptId\":102,\"email\":\"qlgl@qq.com\",\"is_admin\":1,\"nickName\":\"测试c\",\"password\":\"\",\"phonenumber\":\"13758596696\",\"postIds\":[],\"remark\":\"\",\"roleIds\":[],\"sex\":\"0\",\"status\":\"0\",\"userId\":4,\"userName\":\"qlgl\"}', '{\"code\":-1,\"msg\":\"修改用户信息失败\"}', 0, '', 1605771280);
INSERT INTO `sys_oper_log` VALUES (145, '修改用户', 0, '/system/auth/editUser', 'POST', 1, 'demo', '', '/system/auth/editUser', '[::1]', '内网IP', '{\"deptId\":102,\"email\":\"qlgl@qq.com\",\"is_admin\":1,\"nickName\":\"测试c\",\"password\":\"\",\"phonenumber\":\"13758596696\",\"postIds\":[],\"remark\":\"\",\"roleIds\":[],\"sex\":\"0\",\"status\":\"0\",\"userId\":4,\"userName\":\"qlgl\"}', '{\"code\":-1,\"msg\":\"修改用户信息失败\"}', 0, '', 1605771521);
INSERT INTO `sys_oper_log` VALUES (146, '修改用户', 0, '/system/auth/editUser', 'POST', 1, 'demo', '', '/system/auth/editUser', '[::1]', '内网IP', '{\"deptId\":102,\"email\":\"qlgl@qq.com\",\"is_admin\":1,\"nickName\":\"测试c\",\"password\":\"\",\"phonenumber\":\"13758596696\",\"postIds\":[],\"remark\":\"\",\"roleIds\":[],\"sex\":\"0\",\"status\":\"0\",\"userId\":4,\"userName\":\"qlgl\"}', '{\"code\":-1,\"msg\":\"修改用户信息失败\"}', 0, '', 1605771781);
INSERT INTO `sys_oper_log` VALUES (147, '参数管理', 0, '/system/config/params/list', 'GET', 1, 'demo', '', '/system/config/params/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605771848);
INSERT INTO `sys_oper_log` VALUES (148, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605771848);
INSERT INTO `sys_oper_log` VALUES (149, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1605771852);
INSERT INTO `sys_oper_log` VALUES (150, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=1', '[::1]', '内网IP', '{\"dictId\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605771855);
INSERT INTO `sys_oper_log` VALUES (151, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605771858);
INSERT INTO `sys_oper_log` VALUES (152, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605772271);
INSERT INTO `sys_oper_log` VALUES (153, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605772837);
INSERT INTO `sys_oper_log` VALUES (154, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605772963);
INSERT INTO `sys_oper_log` VALUES (155, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605772985);
INSERT INTO `sys_oper_log` VALUES (156, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605773144);
INSERT INTO `sys_oper_log` VALUES (157, '修改字典', 0, '/system/config/dict/edit', 'POST', 1, 'demo', '', '/system/config/dict/edit', '[::1]', '内网IP', '{\"dictId\":1,\"dictName\":\"用户性别\",\"dictType\":\"sys_user_sex\",\"remark\":\"用于选择用户性别\",\"status\":\"1\"}', '{\"code\":-1,\"msg\":\"更新失败\"}', 0, '', 1605773423);
INSERT INTO `sys_oper_log` VALUES (158, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605833308);
INSERT INTO `sys_oper_log` VALUES (159, '', 0, '/system/model/category/all', 'GET', 1, 'demo', '', '/system/model/category/all', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605833308);
INSERT INTO `sys_oper_log` VALUES (160, '模型列表', 0, '/system/model/info/list', 'GET', 1, 'demo', '', '/system/model/info/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1605833308);
INSERT INTO `sys_oper_log` VALUES (161, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605853116);
INSERT INTO `sys_oper_log` VALUES (162, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605853116);
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605853116);
INSERT INTO `sys_oper_log` VALUES (164, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605853123);
INSERT INTO `sys_oper_log` VALUES (165, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'yixiaohu', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"logininfor\",\"isFrame\":\"0\",\"menuId\":78,\"menuName\":\"扩展管理\",\"menuType\":\"0\",\"name\":\"system/plug\",\"orderNum\":99,\"parentId\":0,\"path\":\"system/plug\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1605853127);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605853127);
INSERT INTO `sys_oper_log` VALUES (167, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605853130);
INSERT INTO `sys_oper_log` VALUES (168, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'yixiaohu', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"logininfor\",\"isFrame\":\"0\",\"menuId\":78,\"menuName\":\"扩展管理\",\"menuType\":\"0\",\"name\":\"system/plug\",\"orderNum\":0,\"parentId\":0,\"path\":\"system/plug\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1605853134);
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'yixiaohu', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605853134);
INSERT INTO `sys_oper_log` VALUES (170, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'yixiaohu', '', '/system/auth/editMenu?menuId=1', '[::1]', '内网IP', '{\"menuId\":\"1\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605853164);
INSERT INTO `sys_oper_log` VALUES (171, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605857910);
INSERT INTO `sys_oper_log` VALUES (172, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605857910);
INSERT INTO `sys_oper_log` VALUES (173, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605857914);
INSERT INTO `sys_oper_log` VALUES (174, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605857914);
INSERT INTO `sys_oper_log` VALUES (175, '', 0, '/system/user/profile', 'GET', 1, 'yixiaohu', '', '/system/user/profile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605857922);
INSERT INTO `sys_oper_log` VALUES (176, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1605857926);
INSERT INTO `sys_oper_log` VALUES (177, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861669);
INSERT INTO `sys_oper_log` VALUES (178, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861669);
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861673);
INSERT INTO `sys_oper_log` VALUES (180, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861675);
INSERT INTO `sys_oper_log` VALUES (181, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"logininfor\",\"isFrame\":\"undefined\",\"menuId\":78,\"menuName\":\"扩展管理\",\"menuType\":\"0\",\"name\":\"system/plug\",\"orderNum\":99,\"parentId\":0,\"path\":\"system/plug\",\"status\":\"1\",\"visible\":\"undefined\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1605861678);
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861678);
INSERT INTO `sys_oper_log` VALUES (183, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861699);
INSERT INTO `sys_oper_log` VALUES (184, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861699);
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861699);
INSERT INTO `sys_oper_log` VALUES (186, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861709);
INSERT INTO `sys_oper_log` VALUES (187, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861709);
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861709);
INSERT INTO `sys_oper_log` VALUES (189, '', 0, '/system/user/profile', 'GET', 1, 'demo', '', '/system/user/profile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861718);
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861730);
INSERT INTO `sys_oper_log` VALUES (191, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861732);
INSERT INTO `sys_oper_log` VALUES (192, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"logininfor\",\"isFrame\":\"1\",\"menuId\":78,\"menuName\":\"扩展管理\",\"menuType\":\"0\",\"name\":\"system/plug\",\"orderNum\":99,\"parentId\":0,\"path\":\"system/plug\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1605861738);
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861738);
INSERT INTO `sys_oper_log` VALUES (194, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861740);
INSERT INTO `sys_oper_log` VALUES (195, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861740);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861740);
INSERT INTO `sys_oper_log` VALUES (197, '', 0, '/system/index/getInfo', 'GET', 1, 'admin', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861870);
INSERT INTO `sys_oper_log` VALUES (198, '', 0, '/system/index/getRouters', 'GET', 1, 'admin', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605861870);
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'admin', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861875);
INSERT INTO `sys_oper_log` VALUES (200, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'admin', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605861878);
INSERT INTO `sys_oper_log` VALUES (201, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'admin', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605862002);
INSERT INTO `sys_oper_log` VALUES (202, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'admin', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"logininfor\",\"isFrame\":\"1\",\"menuId\":78,\"menuName\":\"扩展管理\",\"menuType\":\"0\",\"name\":\"system/plug\",\"orderNum\":0,\"parentId\":0,\"path\":\"system/plug\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1605862005);
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'admin', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605862005);
INSERT INTO `sys_oper_log` VALUES (204, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605862013);
INSERT INTO `sys_oper_log` VALUES (205, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605862013);
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605862014);
INSERT INTO `sys_oper_log` VALUES (207, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605862314);
INSERT INTO `sys_oper_log` VALUES (208, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1605862314);
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605862330);
INSERT INTO `sys_oper_log` VALUES (210, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1605862335);
INSERT INTO `sys_oper_log` VALUES (211, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698396);
INSERT INTO `sys_oper_log` VALUES (212, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698396);
INSERT INTO `sys_oper_log` VALUES (213, '角色管理', 0, '/system/auth/roleList', 'GET', 1, 'demo', '', '/system/auth/roleList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698401);
INSERT INTO `sys_oper_log` VALUES (214, '修改角色', 0, '/system/auth/editRole', 'GET', 1, 'demo', '', '/system/auth/editRole?roleId=1', '[::1]', '内网IP', '{\"roleId\":\"1\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698404);
INSERT INTO `sys_oper_log` VALUES (215, '', 0, '/system/dept/treeSelect', 'GET', 1, 'demo', '', '/system/dept/treeSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698414);
INSERT INTO `sys_oper_log` VALUES (216, '用户管理', 0, '/system/auth/userList', 'GET', 1, 'demo', '', '/system/auth/userList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698414);
INSERT INTO `sys_oper_log` VALUES (217, '修改用户', 0, '/system/auth/editUser', 'GET', 1, 'demo', '', '/system/auth/editUser?id=2', '[::1]', '内网IP', '{\"id\":\"2\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698424);
INSERT INTO `sys_oper_log` VALUES (218, '修改角色', 0, '/system/auth/editRole', 'GET', 1, 'demo', '', '/system/auth/editRole?roleId=2', '[::1]', '内网IP', '{\"roleId\":\"2\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698430);
INSERT INTO `sys_oper_log` VALUES (219, '修改角色', 0, '/system/auth/editRole', 'POST', 1, 'demo', '', '/system/auth/editRole', '[::1]', '内网IP', '{\"deptIds\":[],\"menuIds\":[1,5,19,20,21,22,23,24,25,6,41,42,43,2,8,16,17,18,26,27,29,30,31,28,33,40,50,51,52,53,54,3,34,36,37,38,39,4,32,35],\"remark\":\"备注\",\"roleId\":2,\"roleName\":\"普通管理员\",\"roleSort\":0,\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改用户组成功\"}', 1, '', 1606698440);
INSERT INTO `sys_oper_log` VALUES (220, '角色管理', 0, '/system/auth/roleList', 'GET', 1, 'demo', '', '/system/auth/roleList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698440);
INSERT INTO `sys_oper_log` VALUES (221, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698465);
INSERT INTO `sys_oper_log` VALUES (222, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698465);
INSERT INTO `sys_oper_log` VALUES (223, '', 0, '/system/dept/treeSelect', 'GET', 1, 'yixiaohu', '', '/system/dept/treeSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698471);
INSERT INTO `sys_oper_log` VALUES (224, '用户管理', 0, '/system/auth/userList', 'GET', 1, 'yixiaohu', '', '/system/auth/userList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698471);
INSERT INTO `sys_oper_log` VALUES (225, '修改角色', 0, '/system/auth/editRole', 'GET', 1, 'demo', '', '/system/auth/editRole?roleId=2', '[::1]', '内网IP', '{\"roleId\":\"2\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698489);
INSERT INTO `sys_oper_log` VALUES (226, '修改角色', 0, '/system/auth/editRole', 'POST', 1, 'demo', '', '/system/auth/editRole', '[::1]', '内网IP', '{\"deptIds\":[],\"menuIds\":[1,5,19,20,21,22,23,24,25,6,41,42,43,2,8,16,17,18,26,27,29,30,31,28,33,40,3,34,36,37,38,39,4,32,35],\"remark\":\"备注\",\"roleId\":2,\"roleName\":\"普通管理员\",\"roleSort\":0,\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改用户组成功\"}', 1, '', 1606698505);
INSERT INTO `sys_oper_log` VALUES (227, '角色管理', 0, '/system/auth/roleList', 'GET', 1, 'demo', '', '/system/auth/roleList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698505);
INSERT INTO `sys_oper_log` VALUES (228, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698510);
INSERT INTO `sys_oper_log` VALUES (229, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698510);
INSERT INTO `sys_oper_log` VALUES (230, '用户管理', 0, '/system/auth/userList', 'GET', 1, 'yixiaohu', '', '/system/auth/userList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698510);
INSERT INTO `sys_oper_log` VALUES (231, '', 0, '/system/dept/treeSelect', 'GET', 1, 'yixiaohu', '', '/system/dept/treeSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698510);
INSERT INTO `sys_oper_log` VALUES (232, '修改用户', 0, '/system/auth/editUser', 'GET', 1, 'demo', '', '/system/auth/editUser?id=2', '[::1]', '内网IP', '{\"id\":\"2\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698539);
INSERT INTO `sys_oper_log` VALUES (233, '修改用户', 0, '/system/auth/editUser', 'POST', 1, 'demo', '', '/system/auth/editUser', '[::1]', '内网IP', '{\"deptId\":102,\"email\":\"yxh@qq.com\",\"is_admin\":1,\"nickName\":\"奈斯\",\"password\":\"\",\"phonenumber\":\"13699885599\",\"postIds\":[1,2],\"remark\":\"备注\",\"roleIds\":[1],\"sex\":\"1\",\"status\":\"1\",\"userId\":2,\"userName\":\"yixiaohu\"}', '{\"code\":0,\"msg\":\"修改管理员成功\"}', 1, '', 1606698545);
INSERT INTO `sys_oper_log` VALUES (234, '用户管理', 0, '/system/auth/userList', 'GET', 1, 'demo', '', '/system/auth/userList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698545);
INSERT INTO `sys_oper_log` VALUES (235, '修改角色', 0, '/system/auth/editRole', 'GET', 1, 'demo', '', '/system/auth/editRole?roleId=1', '[::1]', '内网IP', '{\"roleId\":\"1\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606698552);
INSERT INTO `sys_oper_log` VALUES (236, '', 0, '/system/index/getRouters', 'GET', 1, 'admin', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698803);
INSERT INTO `sys_oper_log` VALUES (237, '', 0, '/system/index/getInfo', 'GET', 1, 'admin', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606698804);
INSERT INTO `sys_oper_log` VALUES (238, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '[::1]', '内网IP', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1606706018);
INSERT INTO `sys_oper_log` VALUES (239, '', 0, '/system/cms/news/getModelFields', 'GET', 1, 'yixiaohu', '', '/system/cms/news/getModelFields?cateIds[]=21', '[::1]', '内网IP', '{\"cateIds\":[\"21\"]}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606706023);
INSERT INTO `sys_oper_log` VALUES (240, '', 0, '/system/upload/ckEditorUp', 'POST', 1, 'yixiaohu', '', '/system/upload/ckEditorUp?command=QuickUpload&type=Files&token=4AhyM5BOoJoI7BYH7RGFACpligxkD4xPNypAoXU%2BQRTwZT4uR6LSrK8%2F80c%2BlemhC5kPiRf28aPiPILFdQ4rKUxIpAB8HnnPHt6XTfnvuktAN4SlqX83xmxZKWb97NkiF1XhKuwHnAig1PSvOS1bKQ%3D%3D', '[::1]', '内网IP', '{\"ckCsrfToken\":\"1H4iUL7U69VJdKpDSc6f7L84udbRzXHJW3z7KL2O\",\"command\":\"QuickUpload\",\"token\":\"4AhyM5BOoJoI7BYH7RGFACpligxkD4xPNypAoXU+QRTwZT4uR6LSrK8/80c+lemhC5kPiRf28aPiPILFdQ4rKUxIpAB8HnnPHt6XTfnvuktAN4SlqX83xmxZKWb97NkiF1XhKuwHnAig1PSvOS1bKQ==\",\"type\":\"Files\"}', '', 0, '', 1606706041);
INSERT INTO `sys_oper_log` VALUES (241, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'yixiaohu', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606706290);
INSERT INTO `sys_oper_log` VALUES (242, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'yixiaohu', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606706290);
INSERT INTO `sys_oper_log` VALUES (243, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606962484);
INSERT INTO `sys_oper_log` VALUES (244, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606962484);
INSERT INTO `sys_oper_log` VALUES (245, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606962875);
INSERT INTO `sys_oper_log` VALUES (246, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606962877);
INSERT INTO `sys_oper_log` VALUES (247, '添加字典', 0, '/system/config/dict/add', 'POST', 1, 'demo', '', '/system/config/dict/add', '[::1]', '内网IP', '{\"dictName\":\"工作流程类型\",\"dictType\":\"flow_type\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典成功\"}', 1, '', 1606966727);
INSERT INTO `sys_oper_log` VALUES (248, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966727);
INSERT INTO `sys_oper_log` VALUES (249, '添加字典', 0, '/system/config/dict/add', 'POST', 1, 'demo', '', '/system/config/dict/add', '[::1]', '内网IP', '{\"dictName\":\"工作流程审批状态\",\"dictType\":\"flow_status\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典成功\"}', 1, '', 1606966751);
INSERT INTO `sys_oper_log` VALUES (250, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966751);
INSERT INTO `sys_oper_log` VALUES (251, '添加字典', 0, '/system/config/dict/add', 'POST', 1, 'demo', '', '/system/config/dict/add', '[::1]', '内网IP', '{\"dictName\":\"工作流紧急状态\",\"dictType\":\"flow_level\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典成功\"}', 1, '', 1606966775);
INSERT INTO `sys_oper_log` VALUES (252, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966775);
INSERT INTO `sys_oper_log` VALUES (253, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966794);
INSERT INTO `sys_oper_log` VALUES (254, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"[work]测试业务表\",\"dictSort\":0,\"dictType\":\"flow_type\",\"dictValue\":\"wf_news\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606966815);
INSERT INTO `sys_oper_log` VALUES (255, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966815);
INSERT INTO `sys_oper_log` VALUES (256, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966833);
INSERT INTO `sys_oper_log` VALUES (257, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966835);
INSERT INTO `sys_oper_log` VALUES (258, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966837);
INSERT INTO `sys_oper_log` VALUES (259, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"回退修改\",\"dictSort\":0,\"dictType\":\"flow_status\",\"dictValue\":\"-1\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606966849);
INSERT INTO `sys_oper_log` VALUES (260, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966849);
INSERT INTO `sys_oper_log` VALUES (261, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"保存中\",\"dictSort\":0,\"dictType\":\"flow_status\",\"dictValue\":\"0\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606966868);
INSERT INTO `sys_oper_log` VALUES (262, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966868);
INSERT INTO `sys_oper_log` VALUES (263, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"流程中\",\"dictSort\":0,\"dictType\":\"flow_status\",\"dictValue\":\"1\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606966886);
INSERT INTO `sys_oper_log` VALUES (264, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966886);
INSERT INTO `sys_oper_log` VALUES (265, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"审批通过\",\"dictSort\":0,\"dictType\":\"flow_status\",\"dictValue\":\"2\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606966899);
INSERT INTO `sys_oper_log` VALUES (266, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966899);
INSERT INTO `sys_oper_log` VALUES (267, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966927);
INSERT INTO `sys_oper_log` VALUES (268, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1606966929);
INSERT INTO `sys_oper_log` VALUES (269, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966931);
INSERT INTO `sys_oper_log` VALUES (270, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"普通\",\"dictSort\":0,\"dictType\":\"flow_level\",\"dictValue\":\"0\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606966947);
INSERT INTO `sys_oper_log` VALUES (271, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606966947);
INSERT INTO `sys_oper_log` VALUES (272, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"加急\",\"dictSort\":0,\"dictType\":\"flow_level\",\"dictValue\":\"1\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606967141);
INSERT INTO `sys_oper_log` VALUES (273, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606967141);
INSERT INTO `sys_oper_log` VALUES (274, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"紧急\",\"dictSort\":0,\"dictType\":\"flow_level\",\"dictValue\":\"2\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606967151);
INSERT INTO `sys_oper_log` VALUES (275, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606967151);
INSERT INTO `sys_oper_log` VALUES (276, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"特急\",\"dictSort\":0,\"dictType\":\"flow_level\",\"dictValue\":\"3\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1606967161);
INSERT INTO `sys_oper_log` VALUES (277, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1606967161);
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967267);
INSERT INTO `sys_oper_log` VALUES (279, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967302);
INSERT INTO `sys_oper_log` VALUES (280, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"cascader\",\"isFrame\":\"0\",\"menuName\":\"流程管理\",\"menuType\":\"0\",\"name\":\"system/wf\",\"orderNum\":0,\"path\":\"system/wf\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1606967359);
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967359);
INSERT INTO `sys_oper_log` VALUES (282, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967364);
INSERT INTO `sys_oper_log` VALUES (283, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"component\",\"isFrame\":\"0\",\"menuName\":\"工作流列表\",\"menuType\":\"0\",\"name\":\"system/wf/flow/list\",\"orderNum\":0,\"parentId\":107,\"path\":\"flow/list\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1606967458);
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967458);
INSERT INTO `sys_oper_log` VALUES (285, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=108', '[::1]', '内网IP', '{\"menuId\":\"108\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967476);
INSERT INTO `sys_oper_log` VALUES (286, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"system/wf/flow/list\",\"icon\":\"component\",\"isFrame\":\"0\",\"menuId\":108,\"menuName\":\"工作流列表\",\"menuType\":\"1\",\"name\":\"system/wf/flow/list\",\"orderNum\":0,\"parentId\":107,\"path\":\"flow/list\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1606967516);
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967516);
INSERT INTO `sys_oper_log` VALUES (288, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967534);
INSERT INTO `sys_oper_log` VALUES (289, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"\",\"isFrame\":\"0\",\"menuName\":\"设计流程\",\"menuType\":\"2\",\"name\":\"system/wf/flow/design\",\"orderNum\":0,\"parentId\":108,\"path\":\"\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1606967544);
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967544);
INSERT INTO `sys_oper_log` VALUES (291, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967563);
INSERT INTO `sys_oper_log` VALUES (292, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"system/wf/flow/news\",\"icon\":\"job\",\"isFrame\":\"0\",\"menuName\":\"测试业务\",\"menuType\":\"1\",\"name\":\"system/wf/flow/news\",\"orderNum\":0,\"parentId\":107,\"path\":\"flow/news\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1606967599);
INSERT INTO `sys_oper_log` VALUES (293, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967599);
INSERT INTO `sys_oper_log` VALUES (294, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=108', '[::1]', '内网IP', '{\"menuId\":\"108\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967635);
INSERT INTO `sys_oper_log` VALUES (295, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967641);
INSERT INTO `sys_oper_log` VALUES (296, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"system/wf/flow/monitoring\",\"icon\":\"eye-open\",\"isFrame\":\"0\",\"menuName\":\"流程监控\",\"menuType\":\"1\",\"name\":\"system/wf/flow/monitoring\",\"orderNum\":0,\"parentId\":108,\"path\":\"monitoring\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1606967670);
INSERT INTO `sys_oper_log` VALUES (297, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967670);
INSERT INTO `sys_oper_log` VALUES (298, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=111', '[::1]', '内网IP', '{\"menuId\":\"111\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967675);
INSERT INTO `sys_oper_log` VALUES (299, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"system/wf/flow/monitoring\",\"icon\":\"eye-open\",\"isFrame\":\"0\",\"menuId\":111,\"menuName\":\"流程监控\",\"menuType\":\"1\",\"name\":\"system/wf/flow/monitoring\",\"orderNum\":0,\"parentId\":107,\"path\":\"monitoring\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1606967680);
INSERT INTO `sys_oper_log` VALUES (300, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1606967680);
INSERT INTO `sys_oper_log` VALUES (301, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607073143);
INSERT INTO `sys_oper_log` VALUES (302, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607073143);
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607073145);
INSERT INTO `sys_oper_log` VALUES (304, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074634);
INSERT INTO `sys_oper_log` VALUES (305, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074634);
INSERT INTO `sys_oper_log` VALUES (306, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074638);
INSERT INTO `sys_oper_log` VALUES (307, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074638);
INSERT INTO `sys_oper_log` VALUES (308, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074638);
INSERT INTO `sys_oper_log` VALUES (309, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074639);
INSERT INTO `sys_oper_log` VALUES (310, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074639);
INSERT INTO `sys_oper_log` VALUES (311, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074639);
INSERT INTO `sys_oper_log` VALUES (312, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074642);
INSERT INTO `sys_oper_log` VALUES (313, '流程监控', 0, '/system/wf/flow/monitoring', 'GET', 1, 'demo', '', '/system/wf/flow/monitoring', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074642);
INSERT INTO `sys_oper_log` VALUES (314, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074645);
INSERT INTO `sys_oper_log` VALUES (315, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074645);
INSERT INTO `sys_oper_log` VALUES (316, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074646);
INSERT INTO `sys_oper_log` VALUES (317, '流程监控', 0, '/system/wf/flow/monitoring', 'GET', 1, 'demo', '', '/system/wf/flow/monitoring', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074646);
INSERT INTO `sys_oper_log` VALUES (318, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'demo', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '[::1]', '内网IP', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074648);
INSERT INTO `sys_oper_log` VALUES (319, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074716);
INSERT INTO `sys_oper_log` VALUES (320, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074716);
INSERT INTO `sys_oper_log` VALUES (321, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074716);
INSERT INTO `sys_oper_log` VALUES (322, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074720);
INSERT INTO `sys_oper_log` VALUES (323, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074720);
INSERT INTO `sys_oper_log` VALUES (324, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074720);
INSERT INTO `sys_oper_log` VALUES (325, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074723);
INSERT INTO `sys_oper_log` VALUES (326, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074723);
INSERT INTO `sys_oper_log` VALUES (327, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074723);
INSERT INTO `sys_oper_log` VALUES (328, '', 0, '/system/wf/flow/edit', 'GET', 1, 'demo', '', '/system/wf/flow/edit?id=3', '[::1]', '内网IP', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074724);
INSERT INTO `sys_oper_log` VALUES (329, '', 0, '/system/wf/flow/edit', 'GET', 1, 'demo', '', '/system/wf/flow/edit?id=5', '[::1]', '内网IP', '{\"id\":\"5\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074727);
INSERT INTO `sys_oper_log` VALUES (330, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074733);
INSERT INTO `sys_oper_log` VALUES (331, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074733);
INSERT INTO `sys_oper_log` VALUES (332, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074733);
INSERT INTO `sys_oper_log` VALUES (333, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607074756);
INSERT INTO `sys_oper_log` VALUES (334, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=109', '[::1]', '内网IP', '{\"menuId\":\"109\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607074762);
INSERT INTO `sys_oper_log` VALUES (335, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074794);
INSERT INTO `sys_oper_log` VALUES (336, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074794);
INSERT INTO `sys_oper_log` VALUES (337, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074794);
INSERT INTO `sys_oper_log` VALUES (338, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074825);
INSERT INTO `sys_oper_log` VALUES (339, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074825);
INSERT INTO `sys_oper_log` VALUES (340, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074825);
INSERT INTO `sys_oper_log` VALUES (341, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074826);
INSERT INTO `sys_oper_log` VALUES (342, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074826);
INSERT INTO `sys_oper_log` VALUES (343, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074827);
INSERT INTO `sys_oper_log` VALUES (344, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074827);
INSERT INTO `sys_oper_log` VALUES (345, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074827);
INSERT INTO `sys_oper_log` VALUES (346, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074831);
INSERT INTO `sys_oper_log` VALUES (347, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074831);
INSERT INTO `sys_oper_log` VALUES (348, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074831);
INSERT INTO `sys_oper_log` VALUES (349, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074863);
INSERT INTO `sys_oper_log` VALUES (350, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074863);
INSERT INTO `sys_oper_log` VALUES (351, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074863);
INSERT INTO `sys_oper_log` VALUES (352, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074869);
INSERT INTO `sys_oper_log` VALUES (353, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074869);
INSERT INTO `sys_oper_log` VALUES (354, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074870);
INSERT INTO `sys_oper_log` VALUES (355, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074870);
INSERT INTO `sys_oper_log` VALUES (356, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074870);
INSERT INTO `sys_oper_log` VALUES (357, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074873);
INSERT INTO `sys_oper_log` VALUES (358, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074873);
INSERT INTO `sys_oper_log` VALUES (359, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074873);
INSERT INTO `sys_oper_log` VALUES (360, '参数管理', 0, '/system/config/params/list', 'GET', 1, 'demo', '', '/system/config/params/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1607074894);
INSERT INTO `sys_oper_log` VALUES (361, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607074896);
INSERT INTO `sys_oper_log` VALUES (362, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=109', '[::1]', '内网IP', '{\"menuId\":\"109\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607074909);
INSERT INTO `sys_oper_log` VALUES (363, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"\",\"isFrame\":\"0\",\"menuId\":109,\"menuName\":\"设计流程\",\"menuType\":\"2\",\"name\":\"system/wf/flow/design\",\"orderNum\":0,\"parentId\":108,\"path\":\"\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1607074912);
INSERT INTO `sys_oper_log` VALUES (364, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607074912);
INSERT INTO `sys_oper_log` VALUES (365, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074916);
INSERT INTO `sys_oper_log` VALUES (366, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607074916);
INSERT INTO `sys_oper_log` VALUES (367, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607074916);
INSERT INTO `sys_oper_log` VALUES (368, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075028);
INSERT INTO `sys_oper_log` VALUES (369, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075028);
INSERT INTO `sys_oper_log` VALUES (370, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075031);
INSERT INTO `sys_oper_log` VALUES (371, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075031);
INSERT INTO `sys_oper_log` VALUES (372, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075031);
INSERT INTO `sys_oper_log` VALUES (373, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=3', '[::1]', '内网IP', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075033);
INSERT INTO `sys_oper_log` VALUES (374, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075052);
INSERT INTO `sys_oper_log` VALUES (375, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075052);
INSERT INTO `sys_oper_log` VALUES (376, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075052);
INSERT INTO `sys_oper_log` VALUES (377, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075055);
INSERT INTO `sys_oper_log` VALUES (378, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"1,2\",\"auto_sponsor_text\":\"超级管理员,奈斯\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"4,3\",\"process_id\":2,\"process_in_set\":[{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"],\"id\":3,\"prev_id\":2,\"process_name\":\"[直线]校对2\",\"process_type\":\"is_step\"},{\"condition\":[\"uid= \'1\'\"],\"id\":4,\"prev_id\":2,\"process_name\":\"[直线]校对1\",\"process_type\":\"is_step\"}],\"process_name\":\"登记\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607075292);
INSERT INTO `sys_oper_log` VALUES (379, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"1,2\",\"auto_sponsor_text\":\"超级管理员,奈斯\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"4,3\",\"process_id\":2,\"process_in_set\":[{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"],\"id\":3,\"prev_id\":2,\"process_name\":\"[直线]校对2\",\"process_type\":\"is_step\"},{\"condition\":[\"uid= \'1\'\"],\"id\":4,\"prev_id\":2,\"process_name\":\"[直线]校对1\",\"process_type\":\"is_step\"}],\"process_name\":\"登记\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"2\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607075343);
INSERT INTO `sys_oper_log` VALUES (380, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"1,2\",\"auto_sponsor_text\":\"超级管理员,奈斯\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"4,3\",\"process_id\":2,\"process_in_set\":[{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"],\"id\":3,\"prev_id\":2,\"process_name\":\"[直线]校对2\",\"process_type\":\"is_step\"},{\"condition\":[\"uid= \'1\'\"],\"id\":4,\"prev_id\":2,\"process_name\":\"[直线]校对1\",\"process_type\":\"is_step\"}],\"process_name\":\"登记\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607075367);
INSERT INTO `sys_oper_log` VALUES (381, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075367);
INSERT INTO `sys_oper_log` VALUES (382, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"1,2\",\"auto_sponsor_text\":\"超级管理员,奈斯\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"4,3\",\"process_id\":2,\"process_in_set\":[{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"],\"id\":3,\"prev_id\":2,\"process_name\":\"[直线]校对2\",\"process_type\":\"is_step\"},{\"condition\":[\"uid= \'1\'\"],\"id\":4,\"prev_id\":2,\"process_name\":\"[直线]校对1\",\"process_type\":\"is_step\"}],\"process_name\":\"登记\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607075416);
INSERT INTO `sys_oper_log` VALUES (383, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075416);
INSERT INTO `sys_oper_log` VALUES (384, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"1,2\",\"auto_sponsor_text\":\"超级管理员,奈斯\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"4,3\",\"process_id\":2,\"process_in_set\":[{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"],\"id\":3,\"prev_id\":2,\"process_name\":\"[直线]校对2\",\"process_type\":\"is_step\"},{\"condition\":[\"uid= \'1\'\"],\"id\":4,\"prev_id\":2,\"process_name\":\"[直线]校对1\",\"process_type\":\"is_step\"}],\"process_name\":\"登记\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607075440);
INSERT INTO `sys_oper_log` VALUES (385, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"1,2\",\"auto_sponsor_text\":\"超级管理员,奈斯\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"4,3\",\"process_id\":2,\"process_in_set\":[{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"],\"id\":3,\"prev_id\":2,\"process_name\":\"[直线]校对2\",\"process_type\":\"is_step\"},{\"condition\":[\"uid= \'1\'\"],\"id\":4,\"prev_id\":2,\"process_name\":\"[直线]校对1\",\"process_type\":\"is_step\"}],\"process_name\":\"登记\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607075775);
INSERT INTO `sys_oper_log` VALUES (386, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075780);
INSERT INTO `sys_oper_log` VALUES (387, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075780);
INSERT INTO `sys_oper_log` VALUES (388, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075780);
INSERT INTO `sys_oper_log` VALUES (389, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075870);
INSERT INTO `sys_oper_log` VALUES (390, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075870);
INSERT INTO `sys_oper_log` VALUES (391, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075870);
INSERT INTO `sys_oper_log` VALUES (392, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075872);
INSERT INTO `sys_oper_log` VALUES (393, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075872);
INSERT INTO `sys_oper_log` VALUES (394, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075872);
INSERT INTO `sys_oper_log` VALUES (395, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075875);
INSERT INTO `sys_oper_log` VALUES (396, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075875);
INSERT INTO `sys_oper_log` VALUES (397, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075875);
INSERT INTO `sys_oper_log` VALUES (398, '', 0, '/system/wf/flow/add', 'POST', 1, 'demo', '', '/system/wf/flow/add', '[::1]', '内网IP', '{\"add_time\":null,\"flow_desc\":null,\"flow_name\":\"审核测试\",\"id\":null,\"is_del\":null,\"sort_order\":null,\"status\":1,\"type\":\"wf_news\",\"uid\":null}', '{\"code\":0,\"msg\":\"添加成功\"}', 1, '', 1607075901);
INSERT INTO `sys_oper_log` VALUES (399, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075901);
INSERT INTO `sys_oper_log` VALUES (400, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075903);
INSERT INTO `sys_oper_log` VALUES (401, '', 0, '/system/wf/flow/addProcess', 'POST', 1, 'demo', '', '/system/wf/flow/addProcess', '[::1]', '内网IP', '{\"id\":8}', '{\"code\":0,\"msg\":\"添加成功\"}', 1, '', 1607075906);
INSERT INTO `sys_oper_log` VALUES (402, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075906);
INSERT INTO `sys_oper_log` VALUES (403, '', 0, '/system/wf/flow/getManager', 'POST', 1, 'demo', '', '/system/wf/flow/getManager', '[::1]', '内网IP', '{\"key\":\"\",\"type\":\"getUser\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075920);
INSERT INTO `sys_oper_log` VALUES (404, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075937);
INSERT INTO `sys_oper_log` VALUES (405, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075937);
INSERT INTO `sys_oper_log` VALUES (406, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075937);
INSERT INTO `sys_oper_log` VALUES (407, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075939);
INSERT INTO `sys_oper_log` VALUES (408, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '[::1]', '内网IP', '{\"auto_person\":\"6\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"6\",\"auto_sponsor_text\":\"\",\"flow_id\":1,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"5\",\"process_id\":4,\"process_in_set\":[{\"condition\":null,\"id\":5,\"prev_id\":4,\"process_name\":\"[直线]结束\",\"process_type\":\"is_step\"}],\"process_name\":\"校对1\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"0\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"uid\"}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607075948);
INSERT INTO `sys_oper_log` VALUES (409, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075948);
INSERT INTO `sys_oper_log` VALUES (410, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075968);
INSERT INTO `sys_oper_log` VALUES (411, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075968);
INSERT INTO `sys_oper_log` VALUES (412, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075968);
INSERT INTO `sys_oper_log` VALUES (413, '', 0, '/system/wf/flow/wfStart', 'GET', 1, 'demo', '', '/system/wf/flow/wfStart?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075972);
INSERT INTO `sys_oper_log` VALUES (414, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075976);
INSERT INTO `sys_oper_log` VALUES (415, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075976);
INSERT INTO `sys_oper_log` VALUES (416, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075976);
INSERT INTO `sys_oper_log` VALUES (417, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075980);
INSERT INTO `sys_oper_log` VALUES (418, '流程监控', 0, '/system/wf/flow/monitoring', 'GET', 1, 'demo', '', '/system/wf/flow/monitoring', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075980);
INSERT INTO `sys_oper_log` VALUES (419, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075984);
INSERT INTO `sys_oper_log` VALUES (420, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607075984);
INSERT INTO `sys_oper_log` VALUES (421, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607075984);
INSERT INTO `sys_oper_log` VALUES (422, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076009);
INSERT INTO `sys_oper_log` VALUES (423, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076009);
INSERT INTO `sys_oper_log` VALUES (424, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076014);
INSERT INTO `sys_oper_log` VALUES (425, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076014);
INSERT INTO `sys_oper_log` VALUES (426, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076068);
INSERT INTO `sys_oper_log` VALUES (427, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076068);
INSERT INTO `sys_oper_log` VALUES (428, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_type', '[::1]', '内网IP', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076072);
INSERT INTO `sys_oper_log` VALUES (429, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076072);
INSERT INTO `sys_oper_log` VALUES (430, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '[::1]', '内网IP', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076072);
INSERT INTO `sys_oper_log` VALUES (431, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076074);
INSERT INTO `sys_oper_log` VALUES (432, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076074);
INSERT INTO `sys_oper_log` VALUES (433, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076074);
INSERT INTO `sys_oper_log` VALUES (434, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '[::1]', '内网IP', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076076);
INSERT INTO `sys_oper_log` VALUES (435, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=52&runId=85', '[::1]', '内网IP', '{\"backId\":\"52\",\"runId\":\"85\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076170);
INSERT INTO `sys_oper_log` VALUES (436, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"bTodo\":\"\",\"btodo\":\"\",\"checkCon\":\"666\",\"flowId\":2,\"flowProcess\":10,\"npid\":59,\"runId\":85,\"runProcess\":362,\"singSt\":0,\"submitToSave\":\"back\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"52\",\"wfFid\":1,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076173);
INSERT INTO `sys_oper_log` VALUES (437, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076173);
INSERT INTO `sys_oper_log` VALUES (438, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '[::1]', '内网IP', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076200);
INSERT INTO `sys_oper_log` VALUES (439, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=7&runId=85', '[::1]', '内网IP', '{\"backId\":\"7\",\"runId\":\"85\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076206);
INSERT INTO `sys_oper_log` VALUES (440, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"bTodo\":\"\",\"btodo\":\"\",\"checkCon\":\"666\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":0,\"submitToSave\":\"back\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"7\",\"wfFid\":1,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607076207);
INSERT INTO `sys_oper_log` VALUES (441, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"bTodo\":\"\",\"btodo\":\"\",\"checkCon\":\"666\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":0,\"submitToSave\":\"back\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"7\",\"wfFid\":1,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607076210);
INSERT INTO `sys_oper_log` VALUES (442, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '[::1]', '内网IP', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076214);
INSERT INTO `sys_oper_log` VALUES (443, '', 0, '/system/wf/flow/getManager', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/getManager', '[::1]', '内网IP', '{\"key\":\"nai\",\"type\":\"getUser\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076294);
INSERT INTO `sys_oper_log` VALUES (444, '', 0, '/system/wf/flow/getManager', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/getManager', '[::1]', '内网IP', '{\"key\":\"奈\",\"type\":\"getUser\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076297);
INSERT INTO `sys_oper_log` VALUES (445, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"btodo\":\"\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":0,\"submitToSave\":\"sing\",\"sup\":\"0\",\"todo\":\"\",\"wfFid\":1,\"wfMode\":0,\"wfSingFlow\":2,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076300);
INSERT INTO `sys_oper_log` VALUES (446, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076300);
INSERT INTO `sys_oper_log` VALUES (447, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '[::1]', '内网IP', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076325);
INSERT INTO `sys_oper_log` VALUES (448, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"btodo\":\"\",\"checkCon\":\"5555\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":1,\"submitToSave\":\"sok\",\"sup\":\"0\",\"todo\":\"\",\"wfFid\":1,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607076332);
INSERT INTO `sys_oper_log` VALUES (449, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"btodo\":\"\",\"checkCon\":\"5555\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":1,\"submitToSave\":\"ssing\",\"sup\":\"0\",\"todo\":\"\",\"wfFid\":1,\"wfMode\":0,\"wfSingFlow\":2,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607076339);
INSERT INTO `sys_oper_log` VALUES (450, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '[::1]', '内网IP', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076343);
INSERT INTO `sys_oper_log` VALUES (451, '', 0, '/system/wf/news/edit', 'GET', 1, 'yixiaohu', '', '/system/wf/news/edit?id=2', '[::1]', '内网IP', '{\"id\":\"2\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076350);
INSERT INTO `sys_oper_log` VALUES (452, '', 0, '/system/wf/news/edit', 'POST', 1, 'yixiaohu', '', '/system/wf/news/edit', '[::1]', '内网IP', '{\"id\":2,\"status\":-1,\"title\":\"审批流程2\",\"uid\":2,\"up_time\":1603439274}', '{\"code\":0,\"msg\":\"修改参数成功\"}', 1, '', 1607076352);
INSERT INTO `sys_oper_log` VALUES (453, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076352);
INSERT INTO `sys_oper_log` VALUES (454, '', 0, '/system/wf/flow/wfStart', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfStart?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076355);
INSERT INTO `sys_oper_log` VALUES (455, '', 0, '/system/wf/flow/saveStartWf', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/saveStartWf?wfType=wf_news&wfStatusField=status&wfFid=3&wfId=1&newType=0&checkCon=666', '[::1]', '内网IP', '{\"checkCon\":\"666\",\"newType\":\"0\",\"wfFid\":\"3\",\"wfId\":\"1\",\"wfStatusField\":\"status\",\"wfType\":\"wf_news\"}', '{\"code\":0,\"msg\":\"发起成功\"}', 1, '', 1607076361);
INSERT INTO `sys_oper_log` VALUES (456, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076362);
INSERT INTO `sys_oper_log` VALUES (457, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076363);
INSERT INTO `sys_oper_log` VALUES (458, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"btodo\":\"\",\"checkCon\":\"222\",\"flowId\":1,\"flowProcess\":1,\"npid\":2,\"runId\":87,\"runProcess\":366,\"singSt\":0,\"submitToSave\":\"ok\",\"sup\":\"0\",\"todo\":\"\",\"wfFid\":3,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076368);
INSERT INTO `sys_oper_log` VALUES (459, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076368);
INSERT INTO `sys_oper_log` VALUES (460, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076370);
INSERT INTO `sys_oper_log` VALUES (461, '流程监控', 0, '/system/wf/flow/monitoring', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/monitoring', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076384);
INSERT INTO `sys_oper_log` VALUES (462, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076384);
INSERT INTO `sys_oper_log` VALUES (463, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076387);
INSERT INTO `sys_oper_log` VALUES (464, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076400);
INSERT INTO `sys_oper_log` VALUES (465, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '[::1]', '内网IP', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076444);
INSERT INTO `sys_oper_log` VALUES (466, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '[::1]', '内网IP', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076444);
INSERT INTO `sys_oper_log` VALUES (467, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076444);
INSERT INTO `sys_oper_log` VALUES (468, '', 0, '/system/wf/flow/wfStart', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfStart?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=4', '[::1]', '内网IP', '{\"wf_fid\":\"4\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076521);
INSERT INTO `sys_oper_log` VALUES (469, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076524);
INSERT INTO `sys_oper_log` VALUES (470, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=1&runId=87', '[::1]', '内网IP', '{\"backId\":\"1\",\"runId\":\"87\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076528);
INSERT INTO `sys_oper_log` VALUES (471, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"bTodo\":\"\",\"btodo\":\"\",\"flowId\":1,\"flowProcess\":2,\"npid\":3,\"runId\":87,\"runProcess\":367,\"singSt\":0,\"submitToSave\":\"back\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"1\",\"wfFid\":3,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该模式未开放。\"}', 0, '', 1607076529);
INSERT INTO `sys_oper_log` VALUES (472, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '[::1]', '内网IP', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076880);
INSERT INTO `sys_oper_log` VALUES (473, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=1&runId=87', '[::1]', '内网IP', '{\"backId\":\"1\",\"runId\":\"87\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076884);
INSERT INTO `sys_oper_log` VALUES (474, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '[::1]', '内网IP', '{\"bTodo\":\"\",\"btodo\":\"\",\"flowId\":1,\"flowProcess\":2,\"npid\":3,\"runId\":87,\"runProcess\":367,\"singSt\":0,\"submitToSave\":\"back\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"1\",\"wfFid\":3,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"改功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607076885);
INSERT INTO `sys_oper_log` VALUES (475, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076927);
INSERT INTO `sys_oper_log` VALUES (476, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076927);
INSERT INTO `sys_oper_log` VALUES (477, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076928);
INSERT INTO `sys_oper_log` VALUES (478, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_type', '192.168.0.212', '', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076928);
INSERT INTO `sys_oper_log` VALUES (479, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607076928);
INSERT INTO `sys_oper_log` VALUES (480, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=5', '192.168.0.212', '', '{\"id\":\"5\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607076930);
INSERT INTO `sys_oper_log` VALUES (481, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/saveAttr', '192.168.0.212', '', '{\"auto_person\":\"5\",\"auto_role_ids\":\"100\",\"auto_role_text\":\"奇讯科技\",\"auto_sponsor_ids\":\"4,5\",\"auto_sponsor_text\":\"\",\"flow_id\":5,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"48,49,47\",\"process_id\":46,\"process_in_set\":[{\"condition\":[\"user_id= \'10\'\"],\"id\":47,\"prev_id\":46,\"process_name\":\"[直线]步骤\",\"process_type\":\"is_step\"},{\"condition\":[\"news_hits\\u003e \'100\'\"],\"id\":48,\"prev_id\":46,\"process_name\":\"[直线]步骤\",\"process_type\":\"is_step\"},{\"condition\":[\"published_time\\u003e \'30\'\"],\"id\":49,\"prev_id\":46,\"process_name\":\"[直线]步骤\",\"process_type\":\"is_step\"}],\"process_name\":\"步骤\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":-1,\"msg\":\"该功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607076936);
INSERT INTO `sys_oper_log` VALUES (482, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '192.168.0.198', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151231);
INSERT INTO `sys_oper_log` VALUES (483, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '192.168.0.198', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151231);
INSERT INTO `sys_oper_log` VALUES (484, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '192.168.0.198', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607151240);
INSERT INTO `sys_oper_log` VALUES (485, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.198', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151240);
INSERT INTO `sys_oper_log` VALUES (486, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_type', '192.168.0.198', '', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151240);
INSERT INTO `sys_oper_log` VALUES (487, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151243);
INSERT INTO `sys_oper_log` VALUES (488, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/saveAttr', '192.168.0.198', '', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"3\",\"auto_sponsor_text\":\"主管\",\"flow_id\":3,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"18\",\"process_id\":17,\"process_in_set\":[{\"condition\":null,\"id\":18,\"prev_id\":17,\"process_name\":\"[直线]步骤\",\"process_type\":\"is_step\"}],\"process_name\":\"终审\",\"process_type\":\"is_step\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"0\",\"work_ids\":\"1\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607151250);
INSERT INTO `sys_oper_log` VALUES (489, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151250);
INSERT INTO `sys_oper_log` VALUES (490, '', 0, '/system/wf/flow/addProcess', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/addProcess', '192.168.0.198', '', '{\"id\":3}', '{\"code\":0,\"msg\":\"添加成功\"}', 1, '', 1607151353);
INSERT INTO `sys_oper_log` VALUES (491, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151353);
INSERT INTO `sys_oper_log` VALUES (492, '', 0, '/system/wf/flow/checkFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/checkFlow?flow_id=3', '192.168.0.198', '', '{\"flow_id\":\"3\"}', '{\"code\":-1,\"msg\":\"有 3 个起始步骤，请修改！\"}', 0, '', 1607151355);
INSERT INTO `sys_oper_log` VALUES (493, '', 0, '/system/wf/flow/deleteProcessAll', 'DELETE', 1, 'yixiaohu', '', '/system/wf/flow/deleteProcessAll', '192.168.0.198', '', '{\"flow_id\":3}', '{\"code\":0,\"msg\":\"清除成功\"}', 1, '', 1607151358);
INSERT INTO `sys_oper_log` VALUES (494, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151358);
INSERT INTO `sys_oper_log` VALUES (495, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151359);
INSERT INTO `sys_oper_log` VALUES (496, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151360);
INSERT INTO `sys_oper_log` VALUES (497, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151360);
INSERT INTO `sys_oper_log` VALUES (498, '', 0, '/system/wf/flow/checkFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/checkFlow?flow_id=3', '192.168.0.198', '', '{\"flow_id\":\"3\"}', '{\"code\":-1,\"msg\":\"没有设置第一步骤,请修改!\"}', 0, '', 1607151361);
INSERT INTO `sys_oper_log` VALUES (499, '', 0, '/system/wf/flow/saveProcess', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/saveProcess', '192.168.0.198', '', '{\"data\":[]}', '{\"code\":-1,\"msg\":\"保存数据失败\"}', 0, '', 1607151363);
INSERT INTO `sys_oper_log` VALUES (500, '', 0, '/system/wf/flow/addProcess', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/addProcess', '192.168.0.198', '', '{\"id\":3}', '{\"code\":0,\"msg\":\"添加成功\"}', 1, '', 1607151363);
INSERT INTO `sys_oper_log` VALUES (501, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.198', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151363);
INSERT INTO `sys_oper_log` VALUES (502, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.198', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151366);
INSERT INTO `sys_oper_log` VALUES (503, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.198', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151366);
INSERT INTO `sys_oper_log` VALUES (504, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.198', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607151366);
INSERT INTO `sys_oper_log` VALUES (505, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '192.168.0.198', '', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151370);
INSERT INTO `sys_oper_log` VALUES (506, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=0&runId=85', '192.168.0.198', '', '{\"backId\":\"0\",\"runId\":\"85\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151383);
INSERT INTO `sys_oper_log` VALUES (507, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '192.168.0.198', '', '{\"bTodo\":\"\",\"btodo\":\"\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":1,\"submitToSave\":\"sback\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"0\",\"wfFid\":1,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607151385);
INSERT INTO `sys_oper_log` VALUES (508, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.198', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151405);
INSERT INTO `sys_oper_log` VALUES (509, '流程监控', 0, '/system/wf/flow/monitoring', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/monitoring', '192.168.0.198', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607151406);
INSERT INTO `sys_oper_log` VALUES (510, '', 0, '/system/monitor/loginlog/list', 'GET', 1, 'yixiaohu', '', '/system/monitor/loginlog/list?pageNum=1&pageSize=10&beginTime=&endTime=', '192.168.0.212', '', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"登录日志列表\"}', 1, '', 1607153949);
INSERT INTO `sys_oper_log` VALUES (511, '', 0, '/system/monitor/loginlog/list', 'GET', 1, 'yixiaohu', '', '/system/monitor/loginlog/list?pageNum=1&pageSize=10&beginTime=&endTime=', '192.168.0.212', '', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"登录日志列表\"}', 1, '', 1607153951);
INSERT INTO `sys_oper_log` VALUES (512, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'yixiaohu', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '192.168.0.212', '', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1607153958);
INSERT INTO `sys_oper_log` VALUES (513, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=sysCommonStatus', '192.168.0.212', '', '{\"dictType\":\"sysCommonStatus\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607153965);
INSERT INTO `sys_oper_log` VALUES (514, '', 0, '/system/monitor/operlog/list', 'GET', 1, 'yixiaohu', '', '/system/monitor/operlog/list?pageNum=1&pageSize=10&beginTime=&endTime=', '192.168.0.212', '', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"操作日志列表\"}', 1, '', 1607153965);
INSERT INTO `sys_oper_log` VALUES (515, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305550);
INSERT INTO `sys_oper_log` VALUES (516, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305550);
INSERT INTO `sys_oper_log` VALUES (517, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.212', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305564);
INSERT INTO `sys_oper_log` VALUES (518, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305564);
INSERT INTO `sys_oper_log` VALUES (519, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305565);
INSERT INTO `sys_oper_log` VALUES (520, '', 0, '/system/wf/flow/wfStart', 'GET', 1, 'demo', '', '/system/wf/flow/wfStart?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=4', '192.168.0.212', '', '{\"wf_fid\":\"4\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305583);
INSERT INTO `sys_oper_log` VALUES (521, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '192.168.0.212', '', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305586);
INSERT INTO `sys_oper_log` VALUES (522, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305586);
INSERT INTO `sys_oper_log` VALUES (523, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305586);
INSERT INTO `sys_oper_log` VALUES (524, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=3', '192.168.0.212', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305588);
INSERT INTO `sys_oper_log` VALUES (525, '', 0, '/system/wf/flow/addProcess', 'POST', 1, 'demo', '', '/system/wf/flow/addProcess', '192.168.0.212', '', '{\"id\":3}', '{\"code\":0,\"msg\":\"添加成功\"}', 1, '', 1607305590);
INSERT INTO `sys_oper_log` VALUES (526, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=3', '192.168.0.212', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305590);
INSERT INTO `sys_oper_log` VALUES (527, '', 0, '/system/wf/flow/addProcess', 'POST', 1, 'demo', '', '/system/wf/flow/addProcess', '192.168.0.212', '', '{\"id\":3}', '{\"code\":0,\"msg\":\"添加成功\"}', 1, '', 1607305593);
INSERT INTO `sys_oper_log` VALUES (528, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=3', '192.168.0.212', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305593);
INSERT INTO `sys_oper_log` VALUES (529, '', 0, '/system/wf/flow/saveProcess', 'POST', 1, 'demo', '', '/system/wf/flow/saveProcess', '192.168.0.212', '', '{\"data\":[{\"id\":64,\"left\":\"100\",\"process_to\":\"65,66\",\"top\":\"100\"},{\"id\":65,\"left\":\"270\",\"process_to\":\"\",\"top\":\"349\"},{\"id\":66,\"left\":\"540\",\"process_to\":\"\",\"top\":\"219\"}]}', '{\"code\":0,\"msg\":\"保存成功\"}', 1, '', 1607305598);
INSERT INTO `sys_oper_log` VALUES (530, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=3', '192.168.0.212', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305598);
INSERT INTO `sys_oper_log` VALUES (531, '', 0, '/system/wf/flow/saveAttr', 'POST', 1, 'demo', '', '/system/wf/flow/saveAttr', '192.168.0.212', '', '{\"auto_person\":\"4\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"auto_sponsor_ids\":\"\",\"auto_sponsor_text\":\"\",\"flow_id\":3,\"is_back\":\"1\",\"is_sing\":\"1\",\"process_condition\":\"65,66\",\"process_id\":64,\"process_in_set\":[{\"condition\":null,\"id\":65,\"prev_id\":64,\"process_name\":\"[直线]步骤\",\"process_type\":\"is_step\"},{\"condition\":null,\"id\":66,\"prev_id\":64,\"process_name\":\"[直线]步骤\",\"process_type\":\"is_step\"}],\"process_name\":\"步骤\",\"process_type\":\"is_one\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"style_height\":\"auto\",\"style_width\":\"120\",\"wf_action\":\"view\",\"wf_mode\":\"1\",\"work_ids\":\"\",\"work_msg\":\"\",\"work_sql\":\"\",\"work_text\":\"\"}', '{\"code\":-1,\"msg\":\"该功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607305604);
INSERT INTO `sys_oper_log` VALUES (532, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305615);
INSERT INTO `sys_oper_log` VALUES (533, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_type', '192.168.0.212', '', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305615);
INSERT INTO `sys_oper_log` VALUES (534, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'demo', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305615);
INSERT INTO `sys_oper_log` VALUES (535, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'demo', '', '/system/wf/flow/designFlow?id=3', '192.168.0.212', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305617);
INSERT INTO `sys_oper_log` VALUES (536, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305618);
INSERT INTO `sys_oper_log` VALUES (537, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.212', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305619);
INSERT INTO `sys_oper_log` VALUES (538, '', 0, '/system/wf/news/list', 'GET', 1, 'demo', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305619);
INSERT INTO `sys_oper_log` VALUES (539, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305631);
INSERT INTO `sys_oper_log` VALUES (540, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305631);
INSERT INTO `sys_oper_log` VALUES (541, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.212', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305631);
INSERT INTO `sys_oper_log` VALUES (542, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305631);
INSERT INTO `sys_oper_log` VALUES (543, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305631);
INSERT INTO `sys_oper_log` VALUES (544, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '192.168.0.212', '', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305633);
INSERT INTO `sys_oper_log` VALUES (545, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=7&runId=85', '192.168.0.212', '', '{\"backId\":\"7\",\"runId\":\"85\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305638);
INSERT INTO `sys_oper_log` VALUES (546, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '192.168.0.212', '', '{\"bTodo\":\"\",\"btodo\":\"\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":1,\"submitToSave\":\"sback\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"7\",\"wfFid\":1,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607305639);
INSERT INTO `sys_oper_log` VALUES (547, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=1', '192.168.0.212', '', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305645);
INSERT INTO `sys_oper_log` VALUES (548, '', 0, '/system/wf/flow/getManager', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/getManager', '192.168.0.212', '', '{\"key\":\"张\",\"type\":\"getUser\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305651);
INSERT INTO `sys_oper_log` VALUES (549, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '192.168.0.212', '', '{\"btodo\":\"\",\"flowId\":2,\"flowProcess\":52,\"npid\":\"9,8\",\"runId\":85,\"runProcess\":359,\"singSt\":1,\"submitToSave\":\"ssing\",\"sup\":\"0\",\"todo\":\"\",\"wfFid\":1,\"wfMode\":0,\"wfSingFlow\":3,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607305653);
INSERT INTO `sys_oper_log` VALUES (550, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305664);
INSERT INTO `sys_oper_log` VALUES (551, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_type', '192.168.0.212', '', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305664);
INSERT INTO `sys_oper_log` VALUES (552, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305664);
INSERT INTO `sys_oper_log` VALUES (553, '', 0, '/system/wf/flow/designFlow', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/designFlow?id=3', '192.168.0.212', '', '{\"id\":\"3\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305666);
INSERT INTO `sys_oper_log` VALUES (554, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305712);
INSERT INTO `sys_oper_log` VALUES (555, '工作流列表', 0, '/system/wf/flow/list', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305712);
INSERT INTO `sys_oper_log` VALUES (556, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_type', '192.168.0.212', '', '{\"dictType\":\"flow_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305712);
INSERT INTO `sys_oper_log` VALUES (557, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.212', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305716);
INSERT INTO `sys_oper_log` VALUES (558, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305716);
INSERT INTO `sys_oper_log` VALUES (559, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607305716);
INSERT INTO `sys_oper_log` VALUES (560, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=2&wf_status_field=status&wf_fid=3', '192.168.0.212', '', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"2\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305724);
INSERT INTO `sys_oper_log` VALUES (561, '', 0, '/system/wf/flow/getBackTodo', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/getBackTodo?backId=1&runId=87', '192.168.0.212', '', '{\"backId\":\"1\",\"runId\":\"87\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607305751);
INSERT INTO `sys_oper_log` VALUES (562, '', 0, '/system/wf/flow/checkSave', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/checkSave', '192.168.0.212', '', '{\"bTodo\":\"\",\"btodo\":\"\",\"flowId\":1,\"flowProcess\":2,\"npid\":3,\"runId\":87,\"runProcess\":367,\"singSt\":0,\"submitToSave\":\"back\",\"sup\":\"0\",\"todo\":\"\",\"wfBackFlow\":\"1\",\"wfFid\":3,\"wfMode\":0,\"wfStatusField\":\"status\",\"wfTitle\":\"2\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"该功能仅对捐赠用户开放，捐赠299即可获得完整工作流功能及配套视频。\"}', 0, '', 1607305752);
INSERT INTO `sys_oper_log` VALUES (563, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '192.168.0.198', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607311327);
INSERT INTO `sys_oper_log` VALUES (564, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '192.168.0.198', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607311328);
INSERT INTO `sys_oper_log` VALUES (565, '文章管理', 0, '/system/cms/news/list', 'GET', 1, 'demo', '', '/system/cms/news/list?pageNum=1&pageSize=10&keyWords=', '192.168.0.198', '', '{\"keyWords\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"信息列表\"}', 1, '', 1607311534);
INSERT INTO `sys_oper_log` VALUES (566, '', 0, '/system/monitor/loginlog/list', 'GET', 1, 'yixiaohu', '', '/system/monitor/loginlog/list?pageNum=1&pageSize=10&beginTime=&endTime=', '192.168.0.212', '', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"登录日志列表\"}', 1, '', 1607311552);
INSERT INTO `sys_oper_log` VALUES (567, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325423);
INSERT INTO `sys_oper_log` VALUES (568, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607325423);
INSERT INTO `sys_oper_log` VALUES (569, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.212', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325423);
INSERT INTO `sys_oper_log` VALUES (570, '', 0, '/system/wf/flow/wfStart', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfStart?wf_type=wf_news&wf_title=title&wf_status_field=status&wf_fid=4', '192.168.0.212', '', '{\"wf_fid\":\"4\",\"wf_status_field\":\"status\",\"wf_title\":\"title\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325424);
INSERT INTO `sys_oper_log` VALUES (571, '', 0, '/system/wf/flow/saveStartWf', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/saveStartWf?wfType=wf_news&wfStatusField=status&wfFid=4&wfId=1&newType=0&checkCon=6666', '192.168.0.212', '', '{\"checkCon\":\"6666\",\"newType\":\"0\",\"wfFid\":\"4\",\"wfId\":\"1\",\"wfStatusField\":\"status\",\"wfType\":\"wf_news\"}', '{\"code\":-1,\"msg\":\"标题字段名称不能为空\"}', 0, '', 1607325430);
INSERT INTO `sys_oper_log` VALUES (572, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325525);
INSERT INTO `sys_oper_log` VALUES (573, '', 0, '/system/index/getInfo', 'GET', 1, 'yixiaohu', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325531);
INSERT INTO `sys_oper_log` VALUES (574, '', 0, '/system/index/getRouters', 'GET', 1, 'yixiaohu', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325531);
INSERT INTO `sys_oper_log` VALUES (575, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325532);
INSERT INTO `sys_oper_log` VALUES (576, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_status', '192.168.0.212', '', '{\"dictType\":\"flow_status\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325532);
INSERT INTO `sys_oper_log` VALUES (577, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607325532);
INSERT INTO `sys_oper_log` VALUES (578, '', 0, '/system/wf/flow/wfStart', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfStart?wf_type=wf_news&wf_title=title&wf_status_field=status&wf_fid=4', '192.168.0.212', '', '{\"wf_fid\":\"4\",\"wf_status_field\":\"status\",\"wf_title\":\"title\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325534);
INSERT INTO `sys_oper_log` VALUES (579, '', 0, '/system/wf/flow/saveStartWf', 'POST', 1, 'yixiaohu', '', '/system/wf/flow/saveStartWf?wfType=wf_news&wfTitle=title&wfStatusField=status&wfFid=4&wfId=1&newType=0&checkCon=6666', '192.168.0.212', '', '{\"checkCon\":\"6666\",\"newType\":\"0\",\"wfFid\":\"4\",\"wfId\":\"1\",\"wfStatusField\":\"status\",\"wfTitle\":\"title\",\"wfType\":\"wf_news\"}', '{\"code\":0,\"msg\":\"发起成功\"}', 1, '', 1607325539);
INSERT INTO `sys_oper_log` VALUES (580, '', 0, '/system/wf/news/list', 'GET', 1, 'yixiaohu', '', '/system/wf/news/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"获取列表数据成功\"}', 1, '', 1607325539);
INSERT INTO `sys_oper_log` VALUES (581, '流程监控', 0, '/system/wf/flow/monitoring', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/monitoring', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325607);
INSERT INTO `sys_oper_log` VALUES (582, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'yixiaohu', '', '/system/config/dict/getDicts?dictType=flow_level', '192.168.0.212', '', '{\"dictType\":\"flow_level\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325607);
INSERT INTO `sys_oper_log` VALUES (583, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=title&wf_status_field=status&wf_fid=4', '192.168.0.212', '', '{\"wf_fid\":\"4\",\"wf_status_field\":\"status\",\"wf_title\":\"title\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325609);
INSERT INTO `sys_oper_log` VALUES (584, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=&wf_status_field=status&wf_fid=3', '192.168.0.212', '', '{\"wf_fid\":\"3\",\"wf_status_field\":\"status\",\"wf_title\":\"\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325612);
INSERT INTO `sys_oper_log` VALUES (585, '', 0, '/system/wf/flow/wfCheck', 'GET', 1, 'yixiaohu', '', '/system/wf/flow/wfCheck?wf_type=wf_news&wf_title=&wf_status_field=status&wf_fid=1', '192.168.0.212', '', '{\"wf_fid\":\"1\",\"wf_status_field\":\"status\",\"wf_title\":\"\",\"wf_type\":\"wf_news\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607325614);
INSERT INTO `sys_oper_log` VALUES (586, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400145);
INSERT INTO `sys_oper_log` VALUES (587, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400145);
INSERT INTO `sys_oper_log` VALUES (588, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400151);
INSERT INTO `sys_oper_log` VALUES (589, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400153);
INSERT INTO `sys_oper_log` VALUES (590, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{\"component\":\"\",\"icon\":\"education\",\"isFrame\":\"0\",\"menuName\":\"简单博客管理\",\"menuType\":\"0\",\"name\":\"system/plugin/blog\",\"orderNum\":0,\"path\":\"blog\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1607400193);
INSERT INTO `sys_oper_log` VALUES (591, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400193);
INSERT INTO `sys_oper_log` VALUES (592, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400195);
INSERT INTO `sys_oper_log` VALUES (593, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{\"component\":\"plugin/blog/log/list\",\"icon\":\"log\",\"isFrame\":\"0\",\"menuName\":\"日志管理\",\"menuType\":\"1\",\"name\":\"system/plugin/blog/log/list\",\"orderNum\":0,\"parentId\":112,\"path\":\"log\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1607400265);
INSERT INTO `sys_oper_log` VALUES (594, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400266);
INSERT INTO `sys_oper_log` VALUES (595, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400279);
INSERT INTO `sys_oper_log` VALUES (596, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{\"component\":\"plugin/blog/classification/list\",\"icon\":\"tab\",\"isFrame\":\"0\",\"menuName\":\"分类管理\",\"menuType\":\"1\",\"name\":\"system/plugin/blog/classification/list\",\"orderNum\":0,\"parentId\":112,\"path\":\"classification\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1607400305);
INSERT INTO `sys_oper_log` VALUES (597, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400305);
INSERT INTO `sys_oper_log` VALUES (598, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400317);
INSERT INTO `sys_oper_log` VALUES (599, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{\"component\":\"plugin/blog/comment/list\",\"icon\":\"date\",\"isFrame\":\"0\",\"menuName\":\"评论管理\",\"menuType\":\"1\",\"name\":\"system/plugin/blog/comment/list\",\"orderNum\":0,\"parentId\":112,\"path\":\"comment\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1607400346);
INSERT INTO `sys_oper_log` VALUES (600, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400346);
INSERT INTO `sys_oper_log` VALUES (601, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400357);
INSERT INTO `sys_oper_log` VALUES (602, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '192.168.0.212', '', '{\"component\":\"plugin/blog/log/list\",\"icon\":\"eye-open\",\"isFrame\":\"1\",\"menuName\":\"博客前端展示\",\"menuType\":\"1\",\"name\":\"plugin/blog\",\"orderNum\":0,\"parentId\":112,\"path\":\"http://localhost:8200/plugin/blog\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1607400394);
INSERT INTO `sys_oper_log` VALUES (603, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400394);
INSERT INTO `sys_oper_log` VALUES (604, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400397);
INSERT INTO `sys_oper_log` VALUES (605, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400397);
INSERT INTO `sys_oper_log` VALUES (606, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '192.168.0.212', '', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1607400397);
INSERT INTO `sys_oper_log` VALUES (607, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400403);
INSERT INTO `sys_oper_log` VALUES (608, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_log_sign', '192.168.0.212', '', '{\"dictType\":\"sys_log_sign\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400403);
INSERT INTO `sys_oper_log` VALUES (609, '日志管理', 0, '/system/plugin/blog/log/list', 'GET', 1, 'demo', '', '/system/plugin/blog/log/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"日志列表\"}', 1, '', 1607400403);
INSERT INTO `sys_oper_log` VALUES (610, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400404);
INSERT INTO `sys_oper_log` VALUES (611, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_blog_type', '192.168.0.212', '', '{\"dictType\":\"sys_blog_type\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400404);
INSERT INTO `sys_oper_log` VALUES (612, '分类管理', 0, '/system/plugin/blog/classification/list', 'GET', 1, 'demo', '', '/system/plugin/blog/classification/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"日志分类列表\"}', 1, '', 1607400404);
INSERT INTO `sys_oper_log` VALUES (613, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400406);
INSERT INTO `sys_oper_log` VALUES (614, '评论管理', 0, '/system/plugin/blog/comment/list', 'GET', 1, 'demo', '', '/system/plugin/blog/comment/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"评论列表\"}', 1, '', 1607400406);
INSERT INTO `sys_oper_log` VALUES (615, '日志管理', 0, '/system/plugin/blog/log/list', 'GET', 1, 'demo', '', '/system/plugin/blog/log/list?pageNum=1&pageSize=10', '192.168.0.212', '', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"日志列表\"}', 1, '', 1607400407);
INSERT INTO `sys_oper_log` VALUES (616, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_normal_disable', '192.168.0.212', '', '{\"dictType\":\"sys_normal_disable\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400407);
INSERT INTO `sys_oper_log` VALUES (617, '', 0, '/system/config/dict/getDicts', 'GET', 1, 'demo', '', '/system/config/dict/getDicts?dictType=sys_log_sign', '192.168.0.212', '', '{\"dictType\":\"sys_log_sign\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1607400407);
INSERT INTO `sys_oper_log` VALUES (618, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628013002);
INSERT INTO `sys_oper_log` VALUES (619, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628013002);
INSERT INTO `sys_oper_log` VALUES (620, '参数管理', 0, '/system/config/params/list', 'GET', 1, 'demo', '', '/system/config/params/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628013019);
INSERT INTO `sys_oper_log` VALUES (621, '修改参数', 0, '/system/config/params/edit', 'GET', 1, 'demo', '', '/system/config/params/edit?id=2', '[::1]', '内网IP', '{\"id\":\"2\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628013026);
INSERT INTO `sys_oper_log` VALUES (622, '修改参数', 0, '/system/config/params/edit', 'POST', 1, 'demo', '', '/system/config/params/edit', '[::1]', '内网IP', '{\"configId\":2,\"configKey\":\"sys.uploadFile.fileType\",\"configName\":\"文件上传-文件类型\",\"configType\":\"1\",\"configValue\":\"doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,exe\",\"remark\":\"文件上传后缀类型限制\"}', '{\"code\":0,\"msg\":\"修改参数成功\"}', 1, '', 1628013033);
INSERT INTO `sys_oper_log` VALUES (623, '参数管理', 0, '/system/config/params/list', 'GET', 1, 'demo', '', '/system/config/params/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628013033);
INSERT INTO `sys_oper_log` VALUES (624, '修改参数', 0, '/system/config/params/edit', 'GET', 1, 'demo', '', '/system/config/params/edit?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628013035);
INSERT INTO `sys_oper_log` VALUES (625, '参数管理', 0, '/system/config/params/list', 'GET', 1, 'demo', '', '/system/config/params/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628013043);
INSERT INTO `sys_oper_log` VALUES (626, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628013213);
INSERT INTO `sys_oper_log` VALUES (627, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628013213);
INSERT INTO `sys_oper_log` VALUES (628, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"上传成功\"}', 1, '', 1628013285);
INSERT INTO `sys_oper_log` VALUES (629, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":-1,\"msg\":\"上传失败，上传文件类型错误，只能包含后缀为：doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,exe的文件。\"}', 0, '', 1628046271);
INSERT INTO `sys_oper_log` VALUES (630, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628046410);
INSERT INTO `sys_oper_log` VALUES (631, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628046410);
INSERT INTO `sys_oper_log` VALUES (632, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":-1,\"msg\":\"上传失败，上传文件类型错误，只能包含后缀为：doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,exe的文件。\"}', 0, '', 1628046427);
INSERT INTO `sys_oper_log` VALUES (633, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":-1,\"msg\":\"上传失败，上传文件类型错误，只能包含后缀为：doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,exe的文件。\"}', 0, '', 1628046500);
INSERT INTO `sys_oper_log` VALUES (634, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628046509);
INSERT INTO `sys_oper_log` VALUES (635, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628046509);
INSERT INTO `sys_oper_log` VALUES (636, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":-1,\"msg\":\"上传失败，上传文件类型错误，只能包含后缀为：doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png,exe的文件。\"}', 0, '', 1628046519);
INSERT INTO `sys_oper_log` VALUES (637, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628046535);
INSERT INTO `sys_oper_log` VALUES (638, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628046535);
INSERT INTO `sys_oper_log` VALUES (639, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"上传成功\"}', 1, '', 1628046659);
INSERT INTO `sys_oper_log` VALUES (640, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628047208);
INSERT INTO `sys_oper_log` VALUES (641, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628047208);
INSERT INTO `sys_oper_log` VALUES (642, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"上传成功\"}', 1, '', 1628047294);
INSERT INTO `sys_oper_log` VALUES (643, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628127307);
INSERT INTO `sys_oper_log` VALUES (644, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628127307);
INSERT INTO `sys_oper_log` VALUES (645, '', 0, '/system/upload/upFile', 'POST', 1, 'demo', '', '/system/upload/upFile', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"上传成功\"}', 1, '', 1628127409);
INSERT INTO `sys_oper_log` VALUES (646, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628127927);
INSERT INTO `sys_oper_log` VALUES (647, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628127927);
INSERT INTO `sys_oper_log` VALUES (648, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628128166);
INSERT INTO `sys_oper_log` VALUES (649, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628128166);
INSERT INTO `sys_oper_log` VALUES (650, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628131558);
INSERT INTO `sys_oper_log` VALUES (651, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628131558);
INSERT INTO `sys_oper_log` VALUES (652, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628131641);
INSERT INTO `sys_oper_log` VALUES (653, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628131641);
INSERT INTO `sys_oper_log` VALUES (654, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273073);
INSERT INTO `sys_oper_log` VALUES (655, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273073);
INSERT INTO `sys_oper_log` VALUES (656, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628273078);
INSERT INTO `sys_oper_log` VALUES (657, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628273079);
INSERT INTO `sys_oper_log` VALUES (658, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=31', '[::1]', '内网IP', '{\"dictId\":\"31\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273095);
INSERT INTO `sys_oper_log` VALUES (659, '修改字典', 0, '/system/config/dict/edit', 'GET', 1, 'demo', '', '/system/config/dict/edit?dictId=30', '[::1]', '内网IP', '{\"dictId\":\"30\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273101);
INSERT INTO `sys_oper_log` VALUES (660, '添加字典', 0, '/system/config/dict/add', 'POST', 1, 'demo', '', '/system/config/dict/add', '[::1]', '内网IP', '{\"dictName\":\"access_token\",\"dictType\":\"access_token\",\"remark\":\"企业微信获取token\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典成功\"}', 1, '', 1628273138);
INSERT INTO `sys_oper_log` VALUES (661, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628273138);
INSERT INTO `sys_oper_log` VALUES (662, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273141);
INSERT INTO `sys_oper_log` VALUES (663, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"corpid\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"wwf660e2b3e152fcff\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1628273198);
INSERT INTO `sys_oper_log` VALUES (664, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273198);
INSERT INTO `sys_oper_log` VALUES (665, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"corpsecret\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"sk_I1hACRBtmZbvRu0IRtjcjHHXPTD5UrSxB1KJmaeg\",\"isDefault\":\"0\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1628273207);
INSERT INTO `sys_oper_log` VALUES (666, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273208);
INSERT INTO `sys_oper_log` VALUES (667, '修改字典数据', 0, '/system/config/dict/dataEdit', 'GET', 1, 'demo', '', '/system/config/dict/dataEdit?dictCode=75', '[::1]', '内网IP', '{\"dictCode\":\"75\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273215);
INSERT INTO `sys_oper_log` VALUES (668, '修改字典数据', 0, '/system/config/dict/dataEdit', 'POST', 1, 'demo', '', '/system/config/dict/dataEdit', '[::1]', '内网IP', '{\"dictCode\":75,\"dictLabel\":\"corpsecret\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"sk_I1hACRBtmZbvRu0IRtjcjHHXPTD5UrSxB1KJmaeg\",\"isDefault\":\"0\",\"remark\":\"这个是审批模块的值\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改字典数据成功\"}', 1, '', 1628273235);
INSERT INTO `sys_oper_log` VALUES (669, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273235);
INSERT INTO `sys_oper_log` VALUES (670, '修改字典数据', 0, '/system/config/dict/dataEdit', 'GET', 1, 'demo', '', '/system/config/dict/dataEdit?dictCode=74', '[::1]', '内网IP', '{\"dictCode\":\"74\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273237);
INSERT INTO `sys_oper_log` VALUES (671, '修改字典数据', 0, '/system/config/dict/dataEdit', 'POST', 1, 'demo', '', '/system/config/dict/dataEdit', '[::1]', '内网IP', '{\"dictCode\":74,\"dictLabel\":\"corpid\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"wwf660e2b3e152fcff\",\"isDefault\":\"0\",\"remark\":\"这个是企业id\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改字典数据成功\"}', 1, '', 1628273244);
INSERT INTO `sys_oper_log` VALUES (672, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273244);
INSERT INTO `sys_oper_log` VALUES (673, '添加字典数据', 0, '/system/config/dict/dataAdd', 'POST', 1, 'demo', '', '/system/config/dict/dataAdd', '[::1]', '内网IP', '{\"dictLabel\":\"value\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"Bs7vpjPUj2mCTnrWrzHsUwrt4HFqnvfrEq6K71k6i\",\"isDefault\":\"0\",\"remark\":\"批量获取审核模板（默认是主数据递交模板）\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"添加字典数据成功\"}', 1, '', 1628273323);
INSERT INTO `sys_oper_log` VALUES (674, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628273323);
INSERT INTO `sys_oper_log` VALUES (675, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628273734);
INSERT INTO `sys_oper_log` VALUES (676, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628273758);
INSERT INTO `sys_oper_log` VALUES (677, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628274027);
INSERT INTO `sys_oper_log` VALUES (678, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=', '[::1]', '内网IP', '{\"dictType\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628274030);
INSERT INTO `sys_oper_log` VALUES (679, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=5&pageSize=10&dictType=', '[::1]', '内网IP', '{\"dictType\":\"\",\"pageNum\":\"5\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628274034);
INSERT INTO `sys_oper_log` VALUES (680, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628274049);
INSERT INTO `sys_oper_log` VALUES (681, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628274055);
INSERT INTO `sys_oper_log` VALUES (682, '添加任务', 0, '/system/monitor/job/add', 'POST', 1, 'demo', '', '/system/monitor/job/add', '[::1]', '内网IP', '{\"concurrent\":1,\"cron_expression\":\" */5 * * * * ?\",\"invoke_target\":\"Getaccess()\",\"job_name\":\"企业微信token 获取任务\",\"misfire_policy\":1,\"status\":0}', '{\"code\":0,\"msg\":\"任务添加成功\"}', 1, '', 1628303648);
INSERT INTO `sys_oper_log` VALUES (683, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628303648);
INSERT INTO `sys_oper_log` VALUES (684, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628303651);
INSERT INTO `sys_oper_log` VALUES (685, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628303660);
INSERT INTO `sys_oper_log` VALUES (686, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\" */5 * * * * ?\",\"invoke_target\":\"Getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":0,\"update_time\":0}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628303665);
INSERT INTO `sys_oper_log` VALUES (687, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628303665);
INSERT INTO `sys_oper_log` VALUES (688, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628303666);
INSERT INTO `sys_oper_log` VALUES (689, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628303699);
INSERT INTO `sys_oper_log` VALUES (690, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628303711);
INSERT INTO `sys_oper_log` VALUES (691, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628303813);
INSERT INTO `sys_oper_log` VALUES (692, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628303879);
INSERT INTO `sys_oper_log` VALUES (693, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628303879);
INSERT INTO `sys_oper_log` VALUES (694, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628303886);
INSERT INTO `sys_oper_log` VALUES (695, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304171);
INSERT INTO `sys_oper_log` VALUES (696, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304171);
INSERT INTO `sys_oper_log` VALUES (697, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304180);
INSERT INTO `sys_oper_log` VALUES (698, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":-1,\"msg\":\"定时任务管理停止当前task目录下没有绑定这个方法\"}', 0, '', 1628304183);
INSERT INTO `sys_oper_log` VALUES (699, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动当前task目录下没有绑定这个方法\"}', 0, '', 1628304188);
INSERT INTO `sys_oper_log` VALUES (700, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304232);
INSERT INTO `sys_oper_log` VALUES (701, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\" */5 * * * * ?\",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628303665}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304234);
INSERT INTO `sys_oper_log` VALUES (702, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304234);
INSERT INTO `sys_oper_log` VALUES (703, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304277);
INSERT INTO `sys_oper_log` VALUES (704, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304294);
INSERT INTO `sys_oper_log` VALUES (705, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\" */5 * * * * \",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304234}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304298);
INSERT INTO `sys_oper_log` VALUES (706, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304298);
INSERT INTO `sys_oper_log` VALUES (707, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304313);
INSERT INTO `sys_oper_log` VALUES (708, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304329);
INSERT INTO `sys_oper_log` VALUES (709, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"5 */10 * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304298}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304335);
INSERT INTO `sys_oper_log` VALUES (710, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304335);
INSERT INTO `sys_oper_log` VALUES (711, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304338);
INSERT INTO `sys_oper_log` VALUES (712, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"5 */10 * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":2,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304335}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304340);
INSERT INTO `sys_oper_log` VALUES (713, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304340);
INSERT INTO `sys_oper_log` VALUES (714, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304344);
INSERT INTO `sys_oper_log` VALUES (715, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"5 */10 * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304340}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304349);
INSERT INTO `sys_oper_log` VALUES (716, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304349);
INSERT INTO `sys_oper_log` VALUES (717, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304380);
INSERT INTO `sys_oper_log` VALUES (718, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304380);
INSERT INTO `sys_oper_log` VALUES (719, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304386);
INSERT INTO `sys_oper_log` VALUES (720, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304608);
INSERT INTO `sys_oper_log` VALUES (721, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304608);
INSERT INTO `sys_oper_log` VALUES (722, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304613);
INSERT INTO `sys_oper_log` VALUES (723, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"定时任务管理启动成功\"}', 1, '', 1628304616);
INSERT INTO `sys_oper_log` VALUES (724, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304619);
INSERT INTO `sys_oper_log` VALUES (725, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304849);
INSERT INTO `sys_oper_log` VALUES (726, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628304849);
INSERT INTO `sys_oper_log` VALUES (727, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304856);
INSERT INTO `sys_oper_log` VALUES (728, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304859);
INSERT INTO `sys_oper_log` VALUES (729, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304863);
INSERT INTO `sys_oper_log` VALUES (730, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304349}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304865);
INSERT INTO `sys_oper_log` VALUES (731, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304866);
INSERT INTO `sys_oper_log` VALUES (732, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304872);
INSERT INTO `sys_oper_log` VALUES (733, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304865}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304900);
INSERT INTO `sys_oper_log` VALUES (734, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304900);
INSERT INTO `sys_oper_log` VALUES (735, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304907);
INSERT INTO `sys_oper_log` VALUES (736, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304913);
INSERT INTO `sys_oper_log` VALUES (737, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304900}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304916);
INSERT INTO `sys_oper_log` VALUES (738, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304916);
INSERT INTO `sys_oper_log` VALUES (739, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304924);
INSERT INTO `sys_oper_log` VALUES (740, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304900}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304929);
INSERT INTO `sys_oper_log` VALUES (741, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304929);
INSERT INTO `sys_oper_log` VALUES (742, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304931);
INSERT INTO `sys_oper_log` VALUES (743, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628303648,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"SYSTEM\",\"job_id\":9,\"job_name\":\"企业微信token 获取任务\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304900}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304935);
INSERT INTO `sys_oper_log` VALUES (744, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304935);
INSERT INTO `sys_oper_log` VALUES (745, '删除任务', 0, '/system/monitor/job/delete', 'GET', 1, 'demo', '', '/system/monitor/job/delete?id=9', '[::1]', '内网IP', '{\"id\":\"9\"}', '{\"code\":0,\"msg\":\"删除成功\"}', 1, '', 1628304945);
INSERT INTO `sys_oper_log` VALUES (746, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304945);
INSERT INTO `sys_oper_log` VALUES (747, '添加任务', 0, '/system/monitor/job/add', 'POST', 1, 'demo', '', '/system/monitor/job/add', '[::1]', '内网IP', '{\"concurrent\":1,\"cron_expression\":\"*/5 * * * * ?\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_name\":\"cshi\",\"misfire_policy\":1,\"status\":0}', '{\"code\":0,\"msg\":\"任务添加成功\"}', 1, '', 1628304973);
INSERT INTO `sys_oper_log` VALUES (748, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304973);
INSERT INTO `sys_oper_log` VALUES (749, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304987);
INSERT INTO `sys_oper_log` VALUES (750, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628304991);
INSERT INTO `sys_oper_log` VALUES (751, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"* * * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":0,\"update_time\":0}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628304995);
INSERT INTO `sys_oper_log` VALUES (752, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628304995);
INSERT INTO `sys_oper_log` VALUES (753, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628305000);
INSERT INTO `sys_oper_log` VALUES (754, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理启动成功\"}', 1, '', 1628305002);
INSERT INTO `sys_oper_log` VALUES (755, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305010);
INSERT INTO `sys_oper_log` VALUES (756, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"* /5* * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628304995}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305040);
INSERT INTO `sys_oper_log` VALUES (757, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305040);
INSERT INTO `sys_oper_log` VALUES (758, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628305049);
INSERT INTO `sys_oper_log` VALUES (759, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=1', '[::1]', '内网IP', '{\"id\":\"1\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628305053);
INSERT INTO `sys_oper_log` VALUES (760, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动invalid pattern item: \\\"/5*\\\"\"}', 0, '', 1628305054);
INSERT INTO `sys_oper_log` VALUES (761, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动invalid pattern item: \\\"/5*\\\"\"}', 0, '', 1628305061);
INSERT INTO `sys_oper_log` VALUES (762, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305062);
INSERT INTO `sys_oper_log` VALUES (763, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"* /5 * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":1,\"update_by\":31,\"update_time\":1628305040}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305066);
INSERT INTO `sys_oper_log` VALUES (764, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305066);
INSERT INTO `sys_oper_log` VALUES (765, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动invalid pattern item: \\\"/5\\\"\"}', 0, '', 1628305068);
INSERT INTO `sys_oper_log` VALUES (766, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305073);
INSERT INTO `sys_oper_log` VALUES (767, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\" */5 * * * * ?\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":1,\"update_by\":31,\"update_time\":1628305066}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305086);
INSERT INTO `sys_oper_log` VALUES (768, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305086);
INSERT INTO `sys_oper_log` VALUES (769, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动invalid pattern: \\\" */5 * * * * ?\\\"\"}', 0, '', 1628305089);
INSERT INTO `sys_oper_log` VALUES (770, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动invalid pattern: \\\" */5 * * * * ?\\\"\"}', 0, '', 1628305095);
INSERT INTO `sys_oper_log` VALUES (771, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628305098);
INSERT INTO `sys_oper_log` VALUES (772, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628305098);
INSERT INTO `sys_oper_log` VALUES (773, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305099);
INSERT INTO `sys_oper_log` VALUES (774, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305103);
INSERT INTO `sys_oper_log` VALUES (775, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305106);
INSERT INTO `sys_oper_log` VALUES (776, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"5 */10 * * * *\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":1,\"update_by\":31,\"update_time\":1628305086}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305108);
INSERT INTO `sys_oper_log` VALUES (777, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305108);
INSERT INTO `sys_oper_log` VALUES (778, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理启动成功\"}', 1, '', 1628305111);
INSERT INTO `sys_oper_log` VALUES (779, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=8', '[::1]', '内网IP', '{\"id\":\"8\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305117);
INSERT INTO `sys_oper_log` VALUES (780, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305148);
INSERT INTO `sys_oper_log` VALUES (781, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"0/5 * * * * ? \",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628305108}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305268);
INSERT INTO `sys_oper_log` VALUES (782, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305268);
INSERT INTO `sys_oper_log` VALUES (783, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628305271);
INSERT INTO `sys_oper_log` VALUES (784, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":-1,\"msg\":\"定时任务管理启动invalid pattern: \\\"0/5 * * * * ? \\\"\"}', 0, '', 1628305272);
INSERT INTO `sys_oper_log` VALUES (785, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305276);
INSERT INTO `sys_oper_log` VALUES (786, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"0/5 * * * * ?\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":1,\"update_by\":31,\"update_time\":1628305268}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305280);
INSERT INTO `sys_oper_log` VALUES (787, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305280);
INSERT INTO `sys_oper_log` VALUES (788, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理启动成功\"}', 1, '', 1628305283);
INSERT INTO `sys_oper_log` VALUES (789, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628305313);
INSERT INTO `sys_oper_log` VALUES (790, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"*/5 * * * * ?\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628305280}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628305329);
INSERT INTO `sys_oper_log` VALUES (791, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628305329);
INSERT INTO `sys_oper_log` VALUES (792, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628305331);
INSERT INTO `sys_oper_log` VALUES (793, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理启动成功\"}', 1, '', 1628305334);
INSERT INTO `sys_oper_log` VALUES (794, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306538);
INSERT INTO `sys_oper_log` VALUES (795, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306538);
INSERT INTO `sys_oper_log` VALUES (796, '参数管理', 0, '/system/config/params/list', 'GET', 1, 'demo', '', '/system/config/params/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628306545);
INSERT INTO `sys_oper_log` VALUES (797, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628306556);
INSERT INTO `sys_oper_log` VALUES (798, '字典管理', 0, '/system/config/dict/list', 'GET', 1, 'demo', '', '/system/config/dict/list?pageNum=2&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"2\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"字典列表\"}', 1, '', 1628306557);
INSERT INTO `sys_oper_log` VALUES (799, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306559);
INSERT INTO `sys_oper_log` VALUES (800, '修改字典数据', 0, '/system/config/dict/dataEdit', 'GET', 1, 'demo', '', '/system/config/dict/dataEdit?dictCode=74', '[::1]', '内网IP', '{\"dictCode\":\"74\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306561);
INSERT INTO `sys_oper_log` VALUES (801, '修改字典数据', 0, '/system/config/dict/dataEdit', 'POST', 1, 'demo', '', '/system/config/dict/dataEdit', '[::1]', '内网IP', '{\"dictCode\":74,\"dictLabel\":\"corpid\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"corpid=wwf660e2b3e152fcff\",\"isDefault\":\"0\",\"remark\":\"这个是企业id\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改字典数据成功\"}', 1, '', 1628306575);
INSERT INTO `sys_oper_log` VALUES (802, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306575);
INSERT INTO `sys_oper_log` VALUES (803, '修改字典数据', 0, '/system/config/dict/dataEdit', 'GET', 1, 'demo', '', '/system/config/dict/dataEdit?dictCode=75', '[::1]', '内网IP', '{\"dictCode\":\"75\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306581);
INSERT INTO `sys_oper_log` VALUES (804, '修改字典数据', 0, '/system/config/dict/dataEdit', 'POST', 1, 'demo', '', '/system/config/dict/dataEdit', '[::1]', '内网IP', '{\"dictCode\":75,\"dictLabel\":\"corpsecret\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"corpsecret=sk_I1hACRBtmZbvRu0IRtjcjHHXPTD5UrSxB1KJmaeg\",\"isDefault\":\"0\",\"remark\":\"这个是审批模块的值\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改字典数据成功\"}', 1, '', 1628306586);
INSERT INTO `sys_oper_log` VALUES (805, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306586);
INSERT INTO `sys_oper_log` VALUES (806, '修改字典数据', 0, '/system/config/dict/dataEdit', 'GET', 1, 'demo', '', '/system/config/dict/dataEdit?dictCode=76', '[::1]', '内网IP', '{\"dictCode\":\"76\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306589);
INSERT INTO `sys_oper_log` VALUES (807, '修改字典数据', 0, '/system/config/dict/dataEdit', 'GET', 1, 'demo', '', '/system/config/dict/dataEdit?dictCode=76', '[::1]', '内网IP', '{\"dictCode\":\"76\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306723);
INSERT INTO `sys_oper_log` VALUES (808, '修改字典数据', 0, '/system/config/dict/dataEdit', 'POST', 1, 'demo', '', '/system/config/dict/dataEdit', '[::1]', '内网IP', '{\"dictCode\":76,\"dictLabel\":\"value\",\"dictSort\":0,\"dictType\":\"access_token\",\"dictValue\":\"Bs7vpjPUj2mCTnrWrzHsUwrt4HFqnvfrEq6K71k6i\",\"isDefault\":\"0\",\"remark\":\"批量获取审核模板（默认是主数据递交模板）\",\"status\":\"1\"}', '{\"code\":0,\"msg\":\"修改字典数据成功\"}', 1, '', 1628306738);
INSERT INTO `sys_oper_log` VALUES (809, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628306738);
INSERT INTO `sys_oper_log` VALUES (810, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317625);
INSERT INTO `sys_oper_log` VALUES (811, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317625);
INSERT INTO `sys_oper_log` VALUES (812, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317635);
INSERT INTO `sys_oper_log` VALUES (813, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317637);
INSERT INTO `sys_oper_log` VALUES (814, '', 0, '/system/tools/gen/importTableSave', 'POST', 1, 'demo', '', '/system/tools/gen/importTableSave?tables=sp_list', '[::1]', '内网IP', '{\"tables\":\"sp_list\"}', '{\"code\":0,\"msg\":\"导入数据表成功\"}', 1, '', 1628317641);
INSERT INTO `sys_oper_log` VALUES (815, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317641);
INSERT INTO `sys_oper_log` VALUES (816, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317646);
INSERT INTO `sys_oper_log` VALUES (817, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=41', '[::1]', '内网IP', '{\"tableId\":\"41\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317646);
INSERT INTO `sys_oper_log` VALUES (818, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317716);
INSERT INTO `sys_oper_log` VALUES (819, '', 0, '/system/tools/gen/delete', 'DELETE', 1, 'demo', '', '/system/tools/gen/delete', '[::1]', '内网IP', '{\"ids\":[41]}', '{\"code\":0,\"msg\":\"删除成功\"}', 1, '', 1628317723);
INSERT INTO `sys_oper_log` VALUES (820, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317724);
INSERT INTO `sys_oper_log` VALUES (821, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317754);
INSERT INTO `sys_oper_log` VALUES (822, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317761);
INSERT INTO `sys_oper_log` VALUES (823, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317762);
INSERT INTO `sys_oper_log` VALUES (824, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317764);
INSERT INTO `sys_oper_log` VALUES (825, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317764);
INSERT INTO `sys_oper_log` VALUES (826, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317771);
INSERT INTO `sys_oper_log` VALUES (827, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=40', '[::1]', '内网IP', '{\"tableId\":\"40\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317771);
INSERT INTO `sys_oper_log` VALUES (828, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317776);
INSERT INTO `sys_oper_log` VALUES (829, '', 0, '/system/tools/gen/importTableSave', 'POST', 1, 'demo', '', '/system/tools/gen/importTableSave?tables=sp_list', '[::1]', '内网IP', '{\"tables\":\"sp_list\"}', '{\"code\":0,\"msg\":\"导入数据表成功\"}', 1, '', 1628317781);
INSERT INTO `sys_oper_log` VALUES (830, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317781);
INSERT INTO `sys_oper_log` VALUES (831, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317784);
INSERT INTO `sys_oper_log` VALUES (832, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=42', '[::1]', '内网IP', '{\"tableId\":\"42\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317784);
INSERT INTO `sys_oper_log` VALUES (833, '', 0, '/system/tools/gen/editSave', 'PUT', 1, 'demo', '', '/system/tools/gen/editSave', '[::1]', '内网IP', '{\"business_name\":\"list\",\"class_name\":\"sp_list\",\"columns\":[{\"column_comment\":\"单号\",\"column_id\":447,\"column_name\":\"sp_id\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"SpId\",\"go_type\":\"string\",\"html_field\":\"spId\",\"html_type\":\"input\",\"is_edit\":\"0\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"1\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":1,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"msg信息\",\"column_id\":448,\"column_name\":\"errmsg\",\"column_type\":\"varchar(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Errmsg\",\"go_type\":\"string\",\"html_field\":\"errmsg\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":2,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"错误id\",\"column_id\":449,\"column_name\":\"errcode\",\"column_type\":\"varchar(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Errcode\",\"go_type\":\"string\",\"html_field\":\"errcode\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":3,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"是否再次被拉去\",\"column_id\":450,\"column_name\":\"sort\",\"column_type\":\"int(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Sort\",\"go_type\":\"int\",\"html_field\":\"sort\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":4,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"开始时间\",\"column_id\":451,\"column_name\":\"starttime\",\"column_type\":\"int(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Starttime\",\"go_type\":\"int\",\"html_field\":\"starttime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":5,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"至时间\",\"column_id\":452,\"column_name\":\"endtime\",\"column_type\":\"int(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Endtime\",\"go_type\":\"int\",\"html_field\":\"endtime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":6,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"}],\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"function_author\":\"liu\",\"function_name\":\"module\",\"module_name\":\"module\",\"options\":\"\",\"package_name\":\"gfast\",\"params\":{},\"remark\":\"获取审批表单号\",\"table_comment\":\"获取审批表单号\",\"table_id\":42,\"table_name\":\"sp_list\",\"tpl_category\":\"crud\",\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"}', '{\"code\":0,\"msg\":\"设置成功\"}', 1, '', 1628317867);
INSERT INTO `sys_oper_log` VALUES (834, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317867);
INSERT INTO `sys_oper_log` VALUES (835, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317888);
INSERT INTO `sys_oper_log` VALUES (836, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=40', '[::1]', '内网IP', '{\"tableId\":\"40\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317888);
INSERT INTO `sys_oper_log` VALUES (837, '', 0, '/system/tools/gen/preview', 'GET', 1, 'demo', '', '/system/tools/gen/preview?tableId=42', '[::1]', '内网IP', '{\"tableId\":\"42\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628317903);
INSERT INTO `sys_oper_log` VALUES (838, '', 0, '/system/tools/gen/batchGenCode', 'GET', 1, 'demo', '', '/system/tools/gen/batchGenCode?tables=42', '[::1]', '内网IP', '{\"tables\":\"42\"}', '', 0, '', 1628317919);
INSERT INTO `sys_oper_log` VALUES (839, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318035);
INSERT INTO `sys_oper_log` VALUES (840, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318035);
INSERT INTO `sys_oper_log` VALUES (841, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318035);
INSERT INTO `sys_oper_log` VALUES (842, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318035);
INSERT INTO `sys_oper_log` VALUES (843, '字典数据管理', 0, '/system/config/dict/dataList', 'GET', 1, 'demo', '', '/system/config/dict/dataList?pageNum=1&pageSize=10&dictType=access_token', '[::1]', '内网IP', '{\"dictType\":\"access_token\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318036);
INSERT INTO `sys_oper_log` VALUES (844, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318036);
INSERT INTO `sys_oper_log` VALUES (845, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318187);
INSERT INTO `sys_oper_log` VALUES (846, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318187);
INSERT INTO `sys_oper_log` VALUES (847, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318195);
INSERT INTO `sys_oper_log` VALUES (848, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318195);
INSERT INTO `sys_oper_log` VALUES (849, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628318205);
INSERT INTO `sys_oper_log` VALUES (850, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628318220);
INSERT INTO `sys_oper_log` VALUES (851, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"module/list\",\"icon\":\"list\",\"isFrame\":\"0\",\"menuName\":\"工单列表\",\"menuType\":\"1\",\"name\":\"module/list\",\"orderNum\":0,\"parentId\":117,\"path\":\"list\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":-1,\"msg\":\"路由地址已经存在\"}', 0, '', 1628318263);
INSERT INTO `sys_oper_log` VALUES (852, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '[::1]', '内网IP', '{\"component\":\"module/list\",\"icon\":\"list\",\"isFrame\":\"0\",\"menuName\":\"工单列表\",\"menuType\":\"1\",\"name\":\"module/list\",\"orderNum\":0,\"parentId\":117,\"path\":\"lists\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1628318266);
INSERT INTO `sys_oper_log` VALUES (853, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628318266);
INSERT INTO `sys_oper_log` VALUES (854, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318274);
INSERT INTO `sys_oper_log` VALUES (855, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628318274);
INSERT INTO `sys_oper_log` VALUES (856, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628318275);
INSERT INTO `sys_oper_log` VALUES (857, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323014);
INSERT INTO `sys_oper_log` VALUES (858, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323014);
INSERT INTO `sys_oper_log` VALUES (859, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323027);
INSERT INTO `sys_oper_log` VALUES (860, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323031);
INSERT INTO `sys_oper_log` VALUES (861, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=42', '[::1]', '内网IP', '{\"tableId\":\"42\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323031);
INSERT INTO `sys_oper_log` VALUES (862, '', 0, '/system/tools/gen/editSave', 'PUT', 1, 'demo', '', '/system/tools/gen/editSave', '[::1]', '内网IP', '{\"business_name\":\"list\",\"class_name\":\"sp_list\",\"columns\":[{\"column_comment\":\"单号\",\"column_id\":447,\"column_name\":\"sp_id\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"SpId\",\"go_type\":\"string\",\"html_field\":\"spId\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"1\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":1,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"msg信息\",\"column_id\":448,\"column_name\":\"errmsg\",\"column_type\":\"varchar(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Errmsg\",\"go_type\":\"string\",\"html_field\":\"errmsg\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":2,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"错误id\",\"column_id\":449,\"column_name\":\"errcode\",\"column_type\":\"varchar(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Errcode\",\"go_type\":\"string\",\"html_field\":\"errcode\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":3,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"是否再次被拉去\",\"column_id\":450,\"column_name\":\"sort\",\"column_type\":\"int(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Sort\",\"go_type\":\"int\",\"html_field\":\"sort\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":4,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"开始时间\",\"column_id\":451,\"column_name\":\"starttime\",\"column_type\":\"int(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Starttime\",\"go_type\":\"int\",\"html_field\":\"starttime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":5,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"至时间\",\"column_id\":452,\"column_name\":\"endtime\",\"column_type\":\"int(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Endtime\",\"go_type\":\"int\",\"html_field\":\"endtime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":6,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"}],\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"function_author\":\"liu\",\"function_name\":\"module\",\"module_name\":\"module\",\"options\":\"\",\"package_name\":\"gfast\",\"params\":{},\"remark\":\"获取审批表单号\",\"table_comment\":\"获取审批表单号\",\"table_id\":42,\"table_name\":\"sp_list\",\"tpl_category\":\"crud\",\"update_by\":\"demo\",\"update_time\":\"2021-08-07 14:31:06\"}', '{\"code\":0,\"msg\":\"设置成功\"}', 1, '', 1628323046);
INSERT INTO `sys_oper_log` VALUES (863, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323046);
INSERT INTO `sys_oper_log` VALUES (864, '', 0, '/system/tools/gen/preview', 'GET', 1, 'demo', '', '/system/tools/gen/preview?tableId=42', '[::1]', '内网IP', '{\"tableId\":\"42\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323051);
INSERT INTO `sys_oper_log` VALUES (865, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323475);
INSERT INTO `sys_oper_log` VALUES (866, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=42', '[::1]', '内网IP', '{\"tableId\":\"42\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323475);
INSERT INTO `sys_oper_log` VALUES (867, '', 0, '/system/tools/gen/editSave', 'PUT', 1, 'demo', '', '/system/tools/gen/editSave', '[::1]', '内网IP', '{\"business_name\":\"list\",\"class_name\":\"sp_list\",\"columns\":[{\"column_comment\":\"单号\",\"column_id\":447,\"column_name\":\"sp_id\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"SpId\",\"go_type\":\"string\",\"html_field\":\"spId\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"1\",\"is_query\":\"1\",\"is_required\":\"1\",\"query_type\":\"EQ\",\"sort\":1,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"msg信息\",\"column_id\":448,\"column_name\":\"errmsg\",\"column_type\":\"varchar(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Errmsg\",\"go_type\":\"string\",\"html_field\":\"errmsg\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":2,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"错误id\",\"column_id\":449,\"column_name\":\"errcode\",\"column_type\":\"varchar(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Errcode\",\"go_type\":\"string\",\"html_field\":\"errcode\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":3,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"是否再次被拉去\",\"column_id\":450,\"column_name\":\"sort\",\"column_type\":\"int(100)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Sort\",\"go_type\":\"int\",\"html_field\":\"sort\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":4,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"开始时间\",\"column_id\":451,\"column_name\":\"starttime\",\"column_type\":\"int(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Starttime\",\"go_type\":\"int\",\"html_field\":\"starttime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":5,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"},{\"column_comment\":\"至时间\",\"column_id\":452,\"column_name\":\"endtime\",\"column_type\":\"int(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"dict_type\":\"\",\"go_field\":\"Endtime\",\"go_type\":\"int\",\"html_field\":\"endtime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":6,\"table_id\":42,\"update_by\":\"\",\"update_time\":\"2021-08-07 14:29:41\"}],\"create_by\":\"demo\",\"create_time\":\"2021-08-07 14:29:41\",\"function_author\":\"liu\",\"function_name\":\"module\",\"module_name\":\"module\",\"options\":\"\",\"package_name\":\"gfast\",\"params\":{},\"remark\":\"获取审批表单号\",\"table_comment\":\"获取审批表单号\",\"table_id\":42,\"table_name\":\"sp_list\",\"tpl_category\":\"crud\",\"update_by\":\"demo\",\"update_time\":\"2021-08-07 15:57:26\"}', '{\"code\":0,\"msg\":\"设置成功\"}', 1, '', 1628323486);
INSERT INTO `sys_oper_log` VALUES (868, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323487);
INSERT INTO `sys_oper_log` VALUES (869, '', 0, '/system/tools/gen/preview', 'GET', 1, 'demo', '', '/system/tools/gen/preview?tableId=42', '[::1]', '内网IP', '{\"tableId\":\"42\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628323489);
INSERT INTO `sys_oper_log` VALUES (870, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628644195);
INSERT INTO `sys_oper_log` VALUES (871, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628644195);
INSERT INTO `sys_oper_log` VALUES (872, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628648246);
INSERT INTO `sys_oper_log` VALUES (873, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628648246);
INSERT INTO `sys_oper_log` VALUES (874, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628648252);
INSERT INTO `sys_oper_log` VALUES (875, '', 0, '/system/monitor/job/details', 'GET', 1, 'demo', '', '/system/monitor/job/details?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"success\"}', 1, '', 1628648254);
INSERT INTO `sys_oper_log` VALUES (876, '修改任务', 0, '/system/monitor/job/edit', 'POST', 1, 'demo', '', '/system/monitor/job/edit', '[::1]', '内网IP', '{\"concurrent\":0,\"create_by\":31,\"create_time\":1628304973,\"cron_expression\":\"*/45 * * * * ?\",\"invoke_target\":\"getaccess\",\"job_group\":\"DEFAULT\",\"job_id\":10,\"job_name\":\"cshi\",\"job_params\":\"\",\"misfire_policy\":1,\"remark\":\"\",\"status\":0,\"update_by\":31,\"update_time\":1628305329}', '{\"code\":0,\"msg\":\"修改任务成功\"}', 1, '', 1628648261);
INSERT INTO `sys_oper_log` VALUES (877, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628648261);
INSERT INTO `sys_oper_log` VALUES (878, '停止任务', 0, '/system/monitor/job/stop', 'GET', 1, 'demo', '', '/system/monitor/job/stop?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理停止成功\"}', 1, '', 1628648263);
INSERT INTO `sys_oper_log` VALUES (879, '开启任务', 0, '/system/monitor/job/start', 'GET', 1, 'demo', '', '/system/monitor/job/start?id=10', '[::1]', '内网IP', '{\"id\":\"10\"}', '{\"code\":0,\"msg\":\"定时任务管理启动成功\"}', 1, '', 1628648264);
INSERT INTO `sys_oper_log` VALUES (880, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628648516);
INSERT INTO `sys_oper_log` VALUES (881, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628648516);
INSERT INTO `sys_oper_log` VALUES (882, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628648517);
INSERT INTO `sys_oper_log` VALUES (883, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666228);
INSERT INTO `sys_oper_log` VALUES (884, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666228);
INSERT INTO `sys_oper_log` VALUES (885, '', 0, '/system/monitor/job/list', 'GET', 1, 'demo', '', '/system/monitor/job/list?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"任务列表\"}', 1, '', 1628666245);
INSERT INTO `sys_oper_log` VALUES (886, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666252);
INSERT INTO `sys_oper_log` VALUES (887, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666253);
INSERT INTO `sys_oper_log` VALUES (888, '', 0, '/system/tools/gen/importTableSave', 'POST', 1, 'demo', '', '/system/tools/gen/importTableSave?tables=sp_nolist', '[::1]', '内网IP', '{\"tables\":\"sp_nolist\"}', '{\"code\":0,\"msg\":\"导入数据表成功\"}', 1, '', 1628666257);
INSERT INTO `sys_oper_log` VALUES (889, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666257);
INSERT INTO `sys_oper_log` VALUES (890, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=43', '[::1]', '内网IP', '{\"tableId\":\"43\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666262);
INSERT INTO `sys_oper_log` VALUES (891, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666262);
INSERT INTO `sys_oper_log` VALUES (892, '', 0, '/system/tools/gen/editSave', 'PUT', 1, 'demo', '', '/system/tools/gen/editSave', '[::1]', '内网IP', '{\"business_name\":\"nolist\",\"class_name\":\"sp_nolist\",\"columns\":[{\"column_comment\":\"单号\",\"column_id\":453,\"column_name\":\"sp_no\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"SpNo\",\"go_type\":\"string\",\"html_field\":\"spNo\",\"html_type\":\"input\",\"is_edit\":\"0\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"1\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":1,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"单名\",\"column_id\":454,\"column_name\":\"sp_name\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"SpName\",\"go_type\":\"string\",\"html_field\":\"spName\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"1\",\"query_type\":\"LIKE\",\"sort\":2,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"发起时间\",\"column_id\":455,\"column_name\":\"apply_time\",\"column_type\":\"int(150)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"ApplyTime\",\"go_type\":\"int\",\"html_field\":\"applyTime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":3,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"填报人id\",\"column_id\":456,\"column_name\":\"userid\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Userid\",\"go_type\":\"string\",\"html_field\":\"userid\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":4,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"主体内容详情\",\"column_id\":457,\"column_name\":\"datatest\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Datatest\",\"go_type\":\"string\",\"html_field\":\"datatest\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":5,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"备注人id\",\"column_id\":458,\"column_name\":\"useridtest\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Useridtest\",\"go_type\":\"string\",\"html_field\":\"useridtest\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":6,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"备注填写时间\",\"column_id\":459,\"column_name\":\"commenttimel\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Commenttimel\",\"go_type\":\"string\",\"html_field\":\"commenttimel\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":7,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"备注的详情\",\"column_id\":460,\"column_name\":\"commtest\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Commtest\",\"go_type\":\"string\",\"html_field\":\"commtest\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":8,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"备用\",\"column_id\":461,\"column_name\":\"spare\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Spare\",\"go_type\":\"string\",\"html_field\":\"spare\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":9,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"},{\"column_comment\":\"备用1\",\"column_id\":462,\"column_name\":\"spare1\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"dict_type\":\"\",\"go_field\":\"Spare1\",\"go_type\":\"string\",\"html_field\":\"spare1\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":10,\"table_id\":43,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"}],\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:17:37\",\"function_author\":\"gfast\",\"function_name\":\"nolist\",\"module_name\":\"module\",\"options\":\"\",\"package_name\":\"gfast\",\"params\":{},\"remark\":\"主数据递交明细表\",\"table_comment\":\"主数据递交明细表\",\"table_id\":43,\"table_name\":\"sp_nolist\",\"tpl_category\":\"crud\",\"update_by\":\"\",\"update_time\":\"2021-08-11 15:17:37\"}', '{\"code\":0,\"msg\":\"设置成功\"}', 1, '', 1628666316);
INSERT INTO `sys_oper_log` VALUES (893, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628666317);
INSERT INTO `sys_oper_log` VALUES (894, '', 0, '/system/tools/gen/preview', 'GET', 1, 'demo', '', '/system/tools/gen/preview?tableId=43', '[::1]', '内网IP', '{\"tableId\":\"43\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668028);
INSERT INTO `sys_oper_log` VALUES (895, '', 0, '/system/tools/gen/batchGenCode', 'GET', 1, 'demo', '', '/system/tools/gen/batchGenCode?tables=43', '[::1]', '内网IP', '{\"tables\":\"43\"}', '', 0, '', 1628668040);
INSERT INTO `sys_oper_log` VALUES (896, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668348);
INSERT INTO `sys_oper_log` VALUES (897, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668348);
INSERT INTO `sys_oper_log` VALUES (898, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668357);
INSERT INTO `sys_oper_log` VALUES (899, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668365);
INSERT INTO `sys_oper_log` VALUES (900, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=43', '[::1]', '内网IP', '{\"tableId\":\"43\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668365);
INSERT INTO `sys_oper_log` VALUES (901, '', 0, '/system/tools/gen/delete', 'DELETE', 1, 'demo', '', '/system/tools/gen/delete', '[::1]', '内网IP', '{\"ids\":43}', '{\"code\":0,\"msg\":\"删除成功\"}', 1, '', 1628668375);
INSERT INTO `sys_oper_log` VALUES (902, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668375);
INSERT INTO `sys_oper_log` VALUES (903, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668376);
INSERT INTO `sys_oper_log` VALUES (904, '', 0, '/system/tools/gen/importTableSave', 'POST', 1, 'demo', '', '/system/tools/gen/importTableSave?tables=sp_nolist', '[::1]', '内网IP', '{\"tables\":\"sp_nolist\"}', '{\"code\":0,\"msg\":\"导入数据表成功\"}', 1, '', 1628668380);
INSERT INTO `sys_oper_log` VALUES (905, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668380);
INSERT INTO `sys_oper_log` VALUES (906, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668435);
INSERT INTO `sys_oper_log` VALUES (907, '', 0, '/system/tools/gen/delete', 'DELETE', 1, 'demo', '', '/system/tools/gen/delete', '[::1]', '内网IP', '{\"ids\":44}', '{\"code\":0,\"msg\":\"删除成功\"}', 1, '', 1628668442);
INSERT INTO `sys_oper_log` VALUES (908, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668442);
INSERT INTO `sys_oper_log` VALUES (909, '', 0, '/system/tools/gen/dataList', 'GET', 1, 'demo', '', '/system/tools/gen/dataList?pageNum=1&pageSize=10', '[::1]', '内网IP', '{\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668444);
INSERT INTO `sys_oper_log` VALUES (910, '', 0, '/system/tools/gen/importTableSave', 'POST', 1, 'demo', '', '/system/tools/gen/importTableSave?tables=sp_nolist', '[::1]', '内网IP', '{\"tables\":\"sp_nolist\"}', '{\"code\":0,\"msg\":\"导入数据表成功\"}', 1, '', 1628668448);
INSERT INTO `sys_oper_log` VALUES (911, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668448);
INSERT INTO `sys_oper_log` VALUES (912, '', 0, '/system/config/dict/optionSelect', 'GET', 1, 'demo', '', '/system/config/dict/optionSelect', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668450);
INSERT INTO `sys_oper_log` VALUES (913, '', 0, '/system/tools/gen/columnList', 'GET', 1, 'demo', '', '/system/tools/gen/columnList?tableId=45', '[::1]', '内网IP', '{\"tableId\":\"45\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668450);
INSERT INTO `sys_oper_log` VALUES (914, '', 0, '/system/tools/gen/editSave', 'PUT', 1, 'demo', '', '/system/tools/gen/editSave', '[::1]', '内网IP', '{\"business_name\":\"nolist\",\"class_name\":\"sp_nolist\",\"columns\":[{\"column_comment\":\"单号\",\"column_id\":473,\"column_name\":\"sp_no\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"SpNo\",\"go_type\":\"string\",\"html_field\":\"spNo\",\"html_type\":\"input\",\"is_edit\":\"0\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"1\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":1,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"单名\",\"column_id\":474,\"column_name\":\"sp_name\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"SpName\",\"go_type\":\"string\",\"html_field\":\"spName\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"1\",\"query_type\":\"LIKE\",\"sort\":2,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"发起时间\",\"column_id\":475,\"column_name\":\"apply_time\",\"column_type\":\"int(150)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"ApplyTime\",\"go_type\":\"int\",\"html_field\":\"applyTime\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":3,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"填报人id\",\"column_id\":476,\"column_name\":\"userid\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Userid\",\"go_type\":\"string\",\"html_field\":\"userid\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":4,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"主体内容详情\",\"column_id\":477,\"column_name\":\"datatest\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Datatest\",\"go_type\":\"string\",\"html_field\":\"datatest\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":5,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"备注人id\",\"column_id\":478,\"column_name\":\"useridtest\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Useridtest\",\"go_type\":\"string\",\"html_field\":\"useridtest\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":6,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"备注填写时间\",\"column_id\":479,\"column_name\":\"commenttimel\",\"column_type\":\"int(150)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Commenttimel\",\"go_type\":\"int\",\"html_field\":\"commenttimel\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":7,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"备注的详情\",\"column_id\":480,\"column_name\":\"commtest\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Commtest\",\"go_type\":\"string\",\"html_field\":\"commtest\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":8,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"备用\",\"column_id\":481,\"column_name\":\"spare\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Spare\",\"go_type\":\"string\",\"html_field\":\"spare\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":9,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"},{\"column_comment\":\"备用1\",\"column_id\":482,\"column_name\":\"spare1\",\"column_type\":\"varchar(200)\",\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"dict_type\":\"\",\"go_field\":\"Spare1\",\"go_type\":\"string\",\"html_field\":\"spare1\",\"html_type\":\"input\",\"is_edit\":\"1\",\"is_increment\":\"0\",\"is_insert\":\"1\",\"is_list\":\"1\",\"is_pk\":\"0\",\"is_query\":\"1\",\"is_required\":\"0\",\"query_type\":\"EQ\",\"sort\":10,\"table_id\":45,\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"}],\"create_by\":\"demo\",\"create_time\":\"2021-08-11 15:54:08\",\"function_author\":\"gfast\",\"function_name\":\"nolist\",\"module_name\":\"module\",\"options\":\"\",\"package_name\":\"gfast\",\"params\":{},\"remark\":\"\",\"table_comment\":\"nolist明细表\",\"table_id\":45,\"table_name\":\"sp_nolist\",\"tpl_category\":\"crud\",\"update_by\":\"\",\"update_time\":\"2021-08-11 15:54:08\"}', '{\"code\":0,\"msg\":\"设置成功\"}', 1, '', 1628668480);
INSERT INTO `sys_oper_log` VALUES (915, '', 0, '/system/tools/gen/tableList', 'GET', 1, 'demo', '', '/system/tools/gen/tableList?pageNum=1&pageSize=10&beginTime=&endTime=', '[::1]', '内网IP', '{\"beginTime\":\"\",\"endTime\":\"\",\"pageNum\":\"1\",\"pageSize\":\"10\"}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668480);
INSERT INTO `sys_oper_log` VALUES (916, '', 0, '/system/tools/gen/batchGenCode', 'GET', 1, 'demo', '', '/system/tools/gen/batchGenCode?tables=45', '[::1]', '内网IP', '{\"tables\":\"45\"}', '', 0, '', 1628668483);
INSERT INTO `sys_oper_log` VALUES (917, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668712);
INSERT INTO `sys_oper_log` VALUES (918, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668712);
INSERT INTO `sys_oper_log` VALUES (919, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668739);
INSERT INTO `sys_oper_log` VALUES (920, '添加菜单', 0, '/system/auth/addMenu', 'GET', 1, 'demo', '', '/system/auth/addMenu', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668745);
INSERT INTO `sys_oper_log` VALUES (921, '添加菜单', 0, '/system/auth/addMenu', 'POST', 1, 'demo', '', '/system/auth/addMenu', '127.0.0.1', '内网IP', '{\"component\":\"\",\"icon\":\"clipboard\",\"isFrame\":\"0\",\"menuName\":\"明细内容\",\"menuType\":\"0\",\"name\":\"/module/nolist\",\"orderNum\":0,\"parentId\":117,\"path\":\"nolist\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"添加菜单成功\"}', 1, '', 1628668800);
INSERT INTO `sys_oper_log` VALUES (922, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668800);
INSERT INTO `sys_oper_log` VALUES (923, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=122', '127.0.0.1', '内网IP', '{\"menuId\":\"122\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668806);
INSERT INTO `sys_oper_log` VALUES (924, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=121', '127.0.0.1', '内网IP', '{\"menuId\":\"121\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668813);
INSERT INTO `sys_oper_log` VALUES (925, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=122', '127.0.0.1', '内网IP', '{\"menuId\":\"122\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668816);
INSERT INTO `sys_oper_log` VALUES (926, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '127.0.0.1', '内网IP', '{\"component\":\"/module/nolist\",\"icon\":\"clipboard\",\"isFrame\":\"0\",\"menuId\":122,\"menuName\":\"明细内容\",\"menuType\":\"1\",\"name\":\"/module/nolist\",\"orderNum\":0,\"parentId\":117,\"path\":\"nolist\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628668822);
INSERT INTO `sys_oper_log` VALUES (927, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668822);
INSERT INTO `sys_oper_log` VALUES (928, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668827);
INSERT INTO `sys_oper_log` VALUES (929, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668827);
INSERT INTO `sys_oper_log` VALUES (930, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668828);
INSERT INTO `sys_oper_log` VALUES (931, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668835);
INSERT INTO `sys_oper_log` VALUES (932, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668836);
INSERT INTO `sys_oper_log` VALUES (933, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668836);
INSERT INTO `sys_oper_log` VALUES (934, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668852);
INSERT INTO `sys_oper_log` VALUES (935, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '127.0.0.1', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668852);
INSERT INTO `sys_oper_log` VALUES (936, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668876);
INSERT INTO `sys_oper_log` VALUES (937, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668876);
INSERT INTO `sys_oper_log` VALUES (938, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668889);
INSERT INTO `sys_oper_log` VALUES (939, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=121', '[::1]', '内网IP', '{\"menuId\":\"121\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668898);
INSERT INTO `sys_oper_log` VALUES (940, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=122', '[::1]', '内网IP', '{\"menuId\":\"122\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668902);
INSERT INTO `sys_oper_log` VALUES (941, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=121', '[::1]', '内网IP', '{\"menuId\":\"121\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668906);
INSERT INTO `sys_oper_log` VALUES (942, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=122', '[::1]', '内网IP', '{\"menuId\":\"122\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668908);
INSERT INTO `sys_oper_log` VALUES (943, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"module/nolist\",\"icon\":\"clipboard\",\"isFrame\":\"0\",\"menuId\":122,\"menuName\":\"明细内容\",\"menuType\":\"1\",\"name\":\"module/nolist\",\"orderNum\":0,\"parentId\":117,\"path\":\"nolist\",\"status\":\"1\",\"visible\":\"1\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628668916);
INSERT INTO `sys_oper_log` VALUES (944, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668916);
INSERT INTO `sys_oper_log` VALUES (945, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=121', '[::1]', '内网IP', '{\"menuId\":\"121\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668917);
INSERT INTO `sys_oper_log` VALUES (946, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668921);
INSERT INTO `sys_oper_log` VALUES (947, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628668922);
INSERT INTO `sys_oper_log` VALUES (948, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=118', '[::1]', '内网IP', '{\"menuId\":\"118\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668930);
INSERT INTO `sys_oper_log` VALUES (949, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=113', '[::1]', '内网IP', '{\"menuId\":\"113\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628668935);
INSERT INTO `sys_oper_log` VALUES (950, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628670165);
INSERT INTO `sys_oper_log` VALUES (951, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628670165);
INSERT INTO `sys_oper_log` VALUES (952, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671138);
INSERT INTO `sys_oper_log` VALUES (953, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671138);
INSERT INTO `sys_oper_log` VALUES (954, '', 0, '/system/cms/menu/modelOptions', 'GET', 1, 'demo', '', '/system/cms/menu/modelOptions', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671535);
INSERT INTO `sys_oper_log` VALUES (955, '栏目管理', 0, '/system/cms/menu/list', 'GET', 1, 'demo', '', '/system/cms/menu/list', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671535);
INSERT INTO `sys_oper_log` VALUES (956, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671548);
INSERT INTO `sys_oper_log` VALUES (957, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=4', '[::1]', '内网IP', '{\"menuId\":\"4\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671555);
INSERT INTO `sys_oper_log` VALUES (958, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"form\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"cms管理\",\"menuType\":\"0\",\"name\":\"system/cms\",\"orderNum\":0,\"parentId\":0,\"path\":\"cms\",\"status\":\"1\",\"visible\":\"0\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628671557);
INSERT INTO `sys_oper_log` VALUES (959, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671557);
INSERT INTO `sys_oper_log` VALUES (960, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=72', '[::1]', '内网IP', '{\"menuId\":\"72\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671562);
INSERT INTO `sys_oper_log` VALUES (961, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"table\",\"isFrame\":\"0\",\"menuId\":72,\"menuName\":\"模型管理\",\"menuType\":\"0\",\"name\":\"system/model\",\"orderNum\":0,\"parentId\":0,\"path\":\"model\",\"status\":\"1\",\"visible\":\"0\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628671564);
INSERT INTO `sys_oper_log` VALUES (962, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671564);
INSERT INTO `sys_oper_log` VALUES (963, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=78', '[::1]', '内网IP', '{\"menuId\":\"78\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671567);
INSERT INTO `sys_oper_log` VALUES (964, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"logininfor\",\"isFrame\":\"1\",\"menuId\":78,\"menuName\":\"扩展管理\",\"menuType\":\"0\",\"name\":\"system/plug\",\"orderNum\":0,\"parentId\":0,\"path\":\"system/plug\",\"status\":\"1\",\"visible\":\"0\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628671569);
INSERT INTO `sys_oper_log` VALUES (965, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671569);
INSERT INTO `sys_oper_log` VALUES (966, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=107', '[::1]', '内网IP', '{\"menuId\":\"107\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671571);
INSERT INTO `sys_oper_log` VALUES (967, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"cascader\",\"isFrame\":\"0\",\"menuId\":107,\"menuName\":\"流程管理\",\"menuType\":\"0\",\"name\":\"system/wf\",\"orderNum\":0,\"parentId\":0,\"path\":\"system/wf\",\"status\":\"1\",\"visible\":\"0\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628671572);
INSERT INTO `sys_oper_log` VALUES (968, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671572);
INSERT INTO `sys_oper_log` VALUES (969, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671574);
INSERT INTO `sys_oper_log` VALUES (970, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671574);
INSERT INTO `sys_oper_log` VALUES (971, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671575);
INSERT INTO `sys_oper_log` VALUES (972, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=112', '[::1]', '内网IP', '{\"menuId\":\"112\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671584);
INSERT INTO `sys_oper_log` VALUES (973, '修改菜单', 0, '/system/auth/editMenu', 'POST', 1, 'demo', '', '/system/auth/editMenu', '[::1]', '内网IP', '{\"component\":\"\",\"icon\":\"education\",\"isFrame\":\"0\",\"menuId\":112,\"menuName\":\"简单博客管理\",\"menuType\":\"0\",\"name\":\"system/plugin/blog\",\"orderNum\":0,\"parentId\":0,\"path\":\"blog\",\"status\":\"1\",\"visible\":\"0\"}', '{\"code\":0,\"msg\":\"修改菜单成功\"}', 1, '', 1628671585);
INSERT INTO `sys_oper_log` VALUES (974, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671585);
INSERT INTO `sys_oper_log` VALUES (975, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671588);
INSERT INTO `sys_oper_log` VALUES (976, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628671588);
INSERT INTO `sys_oper_log` VALUES (977, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628671588);
INSERT INTO `sys_oper_log` VALUES (978, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628731142);
INSERT INTO `sys_oper_log` VALUES (979, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628731142);
INSERT INTO `sys_oper_log` VALUES (980, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628745529);
INSERT INTO `sys_oper_log` VALUES (981, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628745529);
INSERT INTO `sys_oper_log` VALUES (982, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749345);
INSERT INTO `sys_oper_log` VALUES (983, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749345);
INSERT INTO `sys_oper_log` VALUES (984, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749786);
INSERT INTO `sys_oper_log` VALUES (985, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749786);
INSERT INTO `sys_oper_log` VALUES (986, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749804);
INSERT INTO `sys_oper_log` VALUES (987, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749804);
INSERT INTO `sys_oper_log` VALUES (988, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749869);
INSERT INTO `sys_oper_log` VALUES (989, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749869);
INSERT INTO `sys_oper_log` VALUES (990, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749882);
INSERT INTO `sys_oper_log` VALUES (991, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628749882);
INSERT INTO `sys_oper_log` VALUES (992, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750099);
INSERT INTO `sys_oper_log` VALUES (993, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750225);
INSERT INTO `sys_oper_log` VALUES (994, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750225);
INSERT INTO `sys_oper_log` VALUES (995, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750248);
INSERT INTO `sys_oper_log` VALUES (996, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750248);
INSERT INTO `sys_oper_log` VALUES (997, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750323);
INSERT INTO `sys_oper_log` VALUES (998, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750323);
INSERT INTO `sys_oper_log` VALUES (999, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750393);
INSERT INTO `sys_oper_log` VALUES (1000, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750393);
INSERT INTO `sys_oper_log` VALUES (1001, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750399);
INSERT INTO `sys_oper_log` VALUES (1002, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750399);
INSERT INTO `sys_oper_log` VALUES (1003, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750737);
INSERT INTO `sys_oper_log` VALUES (1004, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750737);
INSERT INTO `sys_oper_log` VALUES (1005, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750737);
INSERT INTO `sys_oper_log` VALUES (1006, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750737);
INSERT INTO `sys_oper_log` VALUES (1007, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750738);
INSERT INTO `sys_oper_log` VALUES (1008, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750737);
INSERT INTO `sys_oper_log` VALUES (1009, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750744);
INSERT INTO `sys_oper_log` VALUES (1010, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750744);
INSERT INTO `sys_oper_log` VALUES (1011, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750796);
INSERT INTO `sys_oper_log` VALUES (1012, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750796);
INSERT INTO `sys_oper_log` VALUES (1013, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750805);
INSERT INTO `sys_oper_log` VALUES (1014, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750805);
INSERT INTO `sys_oper_log` VALUES (1015, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750868);
INSERT INTO `sys_oper_log` VALUES (1016, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750868);
INSERT INTO `sys_oper_log` VALUES (1017, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750873);
INSERT INTO `sys_oper_log` VALUES (1018, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628750873);
INSERT INTO `sys_oper_log` VALUES (1019, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751758);
INSERT INTO `sys_oper_log` VALUES (1020, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751758);
INSERT INTO `sys_oper_log` VALUES (1021, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751931);
INSERT INTO `sys_oper_log` VALUES (1022, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751931);
INSERT INTO `sys_oper_log` VALUES (1023, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751942);
INSERT INTO `sys_oper_log` VALUES (1024, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751942);
INSERT INTO `sys_oper_log` VALUES (1025, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751990);
INSERT INTO `sys_oper_log` VALUES (1026, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628751991);
INSERT INTO `sys_oper_log` VALUES (1027, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752226);
INSERT INTO `sys_oper_log` VALUES (1028, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752226);
INSERT INTO `sys_oper_log` VALUES (1029, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752238);
INSERT INTO `sys_oper_log` VALUES (1030, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752238);
INSERT INTO `sys_oper_log` VALUES (1031, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752444);
INSERT INTO `sys_oper_log` VALUES (1032, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752444);
INSERT INTO `sys_oper_log` VALUES (1033, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752453);
INSERT INTO `sys_oper_log` VALUES (1034, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752453);
INSERT INTO `sys_oper_log` VALUES (1035, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752457);
INSERT INTO `sys_oper_log` VALUES (1036, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752457);
INSERT INTO `sys_oper_log` VALUES (1037, '菜单管理', 0, '/system/auth/menuList', 'GET', 1, 'demo', '', '/system/auth/menuList', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628752549);
INSERT INTO `sys_oper_log` VALUES (1038, '修改菜单', 0, '/system/auth/editMenu', 'GET', 1, 'demo', '', '/system/auth/editMenu?menuId=122', '[::1]', '内网IP', '{\"menuId\":\"122\"}', '{\"code\":0,\"msg\":\"成功\"}', 1, '', 1628752589);
INSERT INTO `sys_oper_log` VALUES (1039, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752629);
INSERT INTO `sys_oper_log` VALUES (1040, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628752629);
INSERT INTO `sys_oper_log` VALUES (1041, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753112);
INSERT INTO `sys_oper_log` VALUES (1042, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753112);
INSERT INTO `sys_oper_log` VALUES (1043, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753113);
INSERT INTO `sys_oper_log` VALUES (1044, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753113);
INSERT INTO `sys_oper_log` VALUES (1045, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753146);
INSERT INTO `sys_oper_log` VALUES (1046, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753146);
INSERT INTO `sys_oper_log` VALUES (1047, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753265);
INSERT INTO `sys_oper_log` VALUES (1048, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753265);
INSERT INTO `sys_oper_log` VALUES (1049, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753356);
INSERT INTO `sys_oper_log` VALUES (1050, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753367);
INSERT INTO `sys_oper_log` VALUES (1051, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753367);
INSERT INTO `sys_oper_log` VALUES (1052, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753557);
INSERT INTO `sys_oper_log` VALUES (1053, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753557);
INSERT INTO `sys_oper_log` VALUES (1054, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753565);
INSERT INTO `sys_oper_log` VALUES (1055, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753565);
INSERT INTO `sys_oper_log` VALUES (1056, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753575);
INSERT INTO `sys_oper_log` VALUES (1057, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753575);
INSERT INTO `sys_oper_log` VALUES (1058, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753653);
INSERT INTO `sys_oper_log` VALUES (1059, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628753653);
INSERT INTO `sys_oper_log` VALUES (1060, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754022);
INSERT INTO `sys_oper_log` VALUES (1061, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754022);
INSERT INTO `sys_oper_log` VALUES (1062, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754046);
INSERT INTO `sys_oper_log` VALUES (1063, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754046);
INSERT INTO `sys_oper_log` VALUES (1064, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754088);
INSERT INTO `sys_oper_log` VALUES (1065, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754088);
INSERT INTO `sys_oper_log` VALUES (1066, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754111);
INSERT INTO `sys_oper_log` VALUES (1067, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754111);
INSERT INTO `sys_oper_log` VALUES (1068, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754227);
INSERT INTO `sys_oper_log` VALUES (1069, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754227);
INSERT INTO `sys_oper_log` VALUES (1070, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754363);
INSERT INTO `sys_oper_log` VALUES (1071, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754363);
INSERT INTO `sys_oper_log` VALUES (1072, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754363);
INSERT INTO `sys_oper_log` VALUES (1073, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754367);
INSERT INTO `sys_oper_log` VALUES (1074, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754367);
INSERT INTO `sys_oper_log` VALUES (1075, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754383);
INSERT INTO `sys_oper_log` VALUES (1076, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754383);
INSERT INTO `sys_oper_log` VALUES (1077, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754614);
INSERT INTO `sys_oper_log` VALUES (1078, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754614);
INSERT INTO `sys_oper_log` VALUES (1079, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754623);
INSERT INTO `sys_oper_log` VALUES (1080, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754623);
INSERT INTO `sys_oper_log` VALUES (1081, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754684);
INSERT INTO `sys_oper_log` VALUES (1082, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754684);
INSERT INTO `sys_oper_log` VALUES (1083, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754690);
INSERT INTO `sys_oper_log` VALUES (1084, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754690);
INSERT INTO `sys_oper_log` VALUES (1085, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754944);
INSERT INTO `sys_oper_log` VALUES (1086, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754944);
INSERT INTO `sys_oper_log` VALUES (1087, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754957);
INSERT INTO `sys_oper_log` VALUES (1088, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754957);
INSERT INTO `sys_oper_log` VALUES (1089, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754965);
INSERT INTO `sys_oper_log` VALUES (1090, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754965);
INSERT INTO `sys_oper_log` VALUES (1091, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754971);
INSERT INTO `sys_oper_log` VALUES (1092, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628754971);
INSERT INTO `sys_oper_log` VALUES (1093, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755162);
INSERT INTO `sys_oper_log` VALUES (1094, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755162);
INSERT INTO `sys_oper_log` VALUES (1095, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755203);
INSERT INTO `sys_oper_log` VALUES (1096, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755203);
INSERT INTO `sys_oper_log` VALUES (1097, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755328);
INSERT INTO `sys_oper_log` VALUES (1098, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755328);
INSERT INTO `sys_oper_log` VALUES (1099, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755343);
INSERT INTO `sys_oper_log` VALUES (1100, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755343);
INSERT INTO `sys_oper_log` VALUES (1101, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755505);
INSERT INTO `sys_oper_log` VALUES (1102, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755505);
INSERT INTO `sys_oper_log` VALUES (1103, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755533);
INSERT INTO `sys_oper_log` VALUES (1104, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755533);
INSERT INTO `sys_oper_log` VALUES (1105, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755554);
INSERT INTO `sys_oper_log` VALUES (1106, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755554);
INSERT INTO `sys_oper_log` VALUES (1107, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755869);
INSERT INTO `sys_oper_log` VALUES (1108, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755869);
INSERT INTO `sys_oper_log` VALUES (1109, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755874);
INSERT INTO `sys_oper_log` VALUES (1110, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755874);
INSERT INTO `sys_oper_log` VALUES (1111, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755884);
INSERT INTO `sys_oper_log` VALUES (1112, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628755884);
INSERT INTO `sys_oper_log` VALUES (1113, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628756081);
INSERT INTO `sys_oper_log` VALUES (1114, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628756081);
INSERT INTO `sys_oper_log` VALUES (1115, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628756589);
INSERT INTO `sys_oper_log` VALUES (1116, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628756589);
INSERT INTO `sys_oper_log` VALUES (1117, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628756667);
INSERT INTO `sys_oper_log` VALUES (1118, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628756667);
INSERT INTO `sys_oper_log` VALUES (1119, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758703);
INSERT INTO `sys_oper_log` VALUES (1120, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758703);
INSERT INTO `sys_oper_log` VALUES (1121, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758703);
INSERT INTO `sys_oper_log` VALUES (1122, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758703);
INSERT INTO `sys_oper_log` VALUES (1123, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758706);
INSERT INTO `sys_oper_log` VALUES (1124, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758706);
INSERT INTO `sys_oper_log` VALUES (1125, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758718);
INSERT INTO `sys_oper_log` VALUES (1126, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758718);
INSERT INTO `sys_oper_log` VALUES (1127, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758721);
INSERT INTO `sys_oper_log` VALUES (1128, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758722);
INSERT INTO `sys_oper_log` VALUES (1129, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758821);
INSERT INTO `sys_oper_log` VALUES (1130, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758821);
INSERT INTO `sys_oper_log` VALUES (1131, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758825);
INSERT INTO `sys_oper_log` VALUES (1132, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758825);
INSERT INTO `sys_oper_log` VALUES (1133, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758905);
INSERT INTO `sys_oper_log` VALUES (1134, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758905);
INSERT INTO `sys_oper_log` VALUES (1135, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758978);
INSERT INTO `sys_oper_log` VALUES (1136, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628758978);
INSERT INTO `sys_oper_log` VALUES (1137, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759080);
INSERT INTO `sys_oper_log` VALUES (1138, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759080);
INSERT INTO `sys_oper_log` VALUES (1139, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759104);
INSERT INTO `sys_oper_log` VALUES (1140, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759104);
INSERT INTO `sys_oper_log` VALUES (1141, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759108);
INSERT INTO `sys_oper_log` VALUES (1142, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759108);
INSERT INTO `sys_oper_log` VALUES (1143, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759266);
INSERT INTO `sys_oper_log` VALUES (1144, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759266);
INSERT INTO `sys_oper_log` VALUES (1145, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759313);
INSERT INTO `sys_oper_log` VALUES (1146, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759313);
INSERT INTO `sys_oper_log` VALUES (1147, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759829);
INSERT INTO `sys_oper_log` VALUES (1148, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759829);
INSERT INTO `sys_oper_log` VALUES (1149, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759841);
INSERT INTO `sys_oper_log` VALUES (1150, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759841);
INSERT INTO `sys_oper_log` VALUES (1151, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759852);
INSERT INTO `sys_oper_log` VALUES (1152, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759852);
INSERT INTO `sys_oper_log` VALUES (1153, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759903);
INSERT INTO `sys_oper_log` VALUES (1154, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759903);
INSERT INTO `sys_oper_log` VALUES (1155, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759908);
INSERT INTO `sys_oper_log` VALUES (1156, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759908);
INSERT INTO `sys_oper_log` VALUES (1157, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759914);
INSERT INTO `sys_oper_log` VALUES (1158, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759914);
INSERT INTO `sys_oper_log` VALUES (1159, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759934);
INSERT INTO `sys_oper_log` VALUES (1160, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759934);
INSERT INTO `sys_oper_log` VALUES (1161, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759941);
INSERT INTO `sys_oper_log` VALUES (1162, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628759941);
INSERT INTO `sys_oper_log` VALUES (1163, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628760118);
INSERT INTO `sys_oper_log` VALUES (1164, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628760118);
INSERT INTO `sys_oper_log` VALUES (1165, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628814215);
INSERT INTO `sys_oper_log` VALUES (1166, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628814215);
INSERT INTO `sys_oper_log` VALUES (1167, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628814226);
INSERT INTO `sys_oper_log` VALUES (1168, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628814226);
INSERT INTO `sys_oper_log` VALUES (1169, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628814295);
INSERT INTO `sys_oper_log` VALUES (1170, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628814295);
INSERT INTO `sys_oper_log` VALUES (1171, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815515);
INSERT INTO `sys_oper_log` VALUES (1172, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815515);
INSERT INTO `sys_oper_log` VALUES (1173, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815556);
INSERT INTO `sys_oper_log` VALUES (1174, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815556);
INSERT INTO `sys_oper_log` VALUES (1175, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815733);
INSERT INTO `sys_oper_log` VALUES (1176, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815733);
INSERT INTO `sys_oper_log` VALUES (1177, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815784);
INSERT INTO `sys_oper_log` VALUES (1178, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628815784);
INSERT INTO `sys_oper_log` VALUES (1179, '', 0, '/system/index/getInfo', 'GET', 1, 'demo', '', '/system/index/getInfo', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628819423);
INSERT INTO `sys_oper_log` VALUES (1180, '', 0, '/system/index/getRouters', 'GET', 1, 'demo', '', '/system/index/getRouters', '[::1]', '内网IP', '{}', '{\"code\":0,\"msg\":\"ok\"}', 1, '', 1628819423);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '1', '', NULL, '', '2020-07-02 10:09:11', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '1', '', NULL, '', '2020-07-02 10:09:14', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '1', '', NULL, '', '2020-07-02 10:09:18', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '1', '', NULL, '', '2020-07-02 10:09:22', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `birthday` int(11) NOT NULL DEFAULT 0 COMMENT '生日',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `dept_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '部门id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `is_admin` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否后台管理员 1 是  0   否',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_login`(`user_name`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '18687455555', '超级管理员', 0, 1557715675, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, 'yxh669@qq.com', 1, 'pub_upload/2020-07-06/c3z4ly6gknispnpjea.jpeg', 1606698803, '192.168.0.212', 101, '', 1);
INSERT INTO `user` VALUES (2, 'yixiaohu', '13699885599', '奈斯', 0, 0, '9OFlt5qzzvCiZWhe7ilcLA==', 1, 'yxh@qq.com', 1, '', 1607305630, '192.168.0.212', 102, '备注', 1);
INSERT INTO `user` VALUES (3, 'zs', '16399669855', '张三', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, 'zs@qq.com', 0, '', 1559293160, '127.0.0.1', 101, '', 1);
INSERT INTO `user` VALUES (4, 'qlgl', '13758596696', '测试c', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 0, 'qlgl@qq.com', 0, '', 1559293134, '127.0.0.1', 102, '', 1);
INSERT INTO `user` VALUES (5, 'test', '13845696696', '测试2', 0, 0, '9OFlt5qzzvCiZWhe7ilcLA==', 0, '123@qq.com', 0, '', 0, '', 101, '', 0);
INSERT INTO `user` VALUES (6, '18999998889', '13755866654', '刘大大', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '1223@qq.com', 0, '', 0, '', 103, '', 1);
INSERT INTO `user` VALUES (7, 'zmm', '13788566696', '张明明', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '11123@qq.com', 0, '', 0, '', 104, '', 1);
INSERT INTO `user` VALUES (8, 'lxx', '13756566696', '李小小', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '123333@qq.com', 0, '', 1571729563, '127.0.0.1', 101, '', 1);
INSERT INTO `user` VALUES (10, 'xmm', '13588999969', '小秘密', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '', 0, '', 0, '', 101, '', 1);
INSERT INTO `user` VALUES (14, 'cd_19', '123154564', '看金利科技', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '', 0, '', 0, '', 0, '', 1);
INSERT INTO `user` VALUES (15, 'lmm', '13587754545', '刘敏敏', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, 'a@coc.com', 0, '', 0, '', 201, '', 1);
INSERT INTO `user` VALUES (16, 'ldn', '13899658874', '李大牛', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, 'a@ll.con', 0, '', 0, '', 102, '', 1);
INSERT INTO `user` VALUES (20, 'dbc', '13877555566', '大百词', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '', 0, '', 0, '', 0, '', 1);
INSERT INTO `user` VALUES (22, 'yxfmlbb', '15969423326', 'yxf', 0, 1557715675, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, 'yxh6691@qq.com', 0, '', 1565059554, '127.0.0.1', 200, '', 1);
INSERT INTO `user` VALUES (23, 'wangming', '13699888855', '王明', 0, 0, 'IJ1xz+Wve+ZONVMFfXJQMw==', 1, '', 0, '', 0, '', 0, '', 1);
INSERT INTO `user` VALUES (24, 'zhk', '13699885591', '综合科', 0, 0, 'IZNU7Pn91/++830Pi6HAWA==', 1, '', 0, '', 1569288069, '192.168.0.146', 0, '', 1);
INSERT INTO `user` VALUES (28, 'demo3', '18699888855', '测试账号1', 0, 1581314035, '9OFlt5qzzvCiZWhe7ilcLA==', 1, '', 0, '', 0, '', 0, '', 1);
INSERT INTO `user` VALUES (31, 'demo', '18699888856', '测试账号', 0, 1581314770, '9OFlt5qzzvCiZWhe7ilcLA==', 1, '223@qq.com', 2, 'pub_upload/2020-09-03/c5disauti1wogasemy.jpeg', 1628814215, '[::1]', 109, '', 1);
INSERT INTO `user` VALUES (32, 'demo100', '18699888859', '测试账号1', 0, 1582103659, '9OFlt5qzzvCiZWhe7ilcLA==', 1, '', 0, '', 0, '', 0, '', 1);
INSERT INTO `user` VALUES (33, 'demo110', '18699888853', '测试账号1', 0, 1582109337, '9OFlt5qzzvCiZWhe7ilcLA==', 1, '', 0, '', 0, '', 0, '', 1);

-- ----------------------------
-- Table structure for user_online
-- ----------------------------
DROP TABLE IF EXISTS `user_online`;
CREATE TABLE `user_online`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '用户标识',
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '用户token',
  `create_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `ip` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录ip',
  `explorer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '浏览器',
  `os` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_token`(`token`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16408 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户在线状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_online
-- ----------------------------
INSERT INTO `user_online` VALUES (16385, '8fe4e6c8b05a73093da8ccd946e95d0f', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB5U5CA5On4D/jCERqtaru7Ck14h+wdGeWeCm7FXD83/PAyENmKjeZmY0OBb7X58oPw==', 1628304608, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16386, '1311f147235474a8b7d7dd99f0093cfd', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB/CcYULvbP9/e/EtKCHzY60VW5U9eYMy9MrPhbhQIBw+7u8YoKZdIyoKaaHl6OVaRw==', 1628304849, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16382, '24db38212f15b9ba49d0c78aa42f0ac1', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB340Lp1xy1t3a7tcdqqoJNuTGWPi0pZQR5KTQPefl2FNPTuFPnqq3jJODm8v66tTAg==', 1628303879, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16383, 'a1afde05226fdde027dc444d497d1e82', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB1Q2lgHP8BfLpqYXIqLmca4HaHzFAsyNDC7sfAmRAzj6xQ+bNsSCM+rZJUoktI4OwQ==', 1628304171, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16384, 'cc06b571ded472dde8ee54690319f022', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB42WYCHTD91wLYY4NrmFkXDj+P7xiDN1GHrftt9AkeafEIq6MZvSYhgOYFvIR9TBzA==', 1628304379, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16381, '66d4a02c85806ab6067f7961877134aa', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PBxYNQLST7T/LFgqwrExsK//05A7smg6mxcej9rxtdm3bc82rEcZK50XnHU8X2fw3dA==', 1628273073, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16387, '652c89e78de0e90e346e54ca7919b7eb', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB7mfYmxHo0Jg1XAILarqj+Nd425rw3yHL7XqeImxhNA65s5oW4T50lKdOGflL7q8AA==', 1628306538, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16388, 'bb5f94e63c754840224fdc5398af330b', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB5OVU7/mw5G8xAwpQguN1/rHit59wWBF6GFhSAtgADAaiYa8EwMB3fIcdzgftlMBbg==', 1628317625, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16389, 'd96daf5c7ccf64be0923e9f63a9fa5d8', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PBy6F2eYoU3yT0Q3FVt/OsWlHYeYS5Tfi49NY3+t3sIQ5/QitbLWFxXv0/DFjcN0LKA==', 1628318187, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16390, '8d59af79e271a548b1ab4f29be8034b5', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB6wP+rtT3/VOYbmsex7lpdDKEfT52kUsI5A0H4ccQ+OTgvfKW7tzM9h96JzkN/icyA==', 1628323014, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16391, 'f313b1788d258501a97bac3bca8e7a19', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB0KnbaT6NoGlmqfIh696W2L/z6WjpRt9RYxm8bcSVwkJyrAnSiZ7BUxc2WOb+tWOLA==', 1628644195, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16392, 'a61bd52412b57359a4e7b5d35e26c0c7', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB9CmoqzI7yP2jNp/vgNYPyAn5Lx4yk46R2anPqADehIcWwDMdQxMSN/NtAPWdGrTOA==', 1628648246, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16393, 'e469b346c43156b6991768c7796ccd56', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB/1B/3/MiEoKTKWTtX5n+AzX6q1dtCiuTPlhu+Q1HbivJPOwcjMUgYaBTRnkrLfp0g==', 1628666227, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16394, '63c5e444d9ab32697785587aedaa6276', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB/vBqD5xEEdHZnOP0tUARqliFCTExf5VLeMW6GU92LS9hMGOzWTe7NSMIy3auVr+nA==', 1628668348, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16395, 'e96ca7051e5b8984f4fbb2f8d6d5654b', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wLk1LiXTNziBlmAQUkZx3xKuD3D4fJeffjuKHQxdglzxfpUeVgp6Ghc6sb30LulvjjEkk90qifM5vlvlgyEwbdf0xcyyDUCiiEqnI4eyJ7mdg==', 1628668712, 'demo', '127.0.0.1', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16396, '0156b3c2383e9802527c78dc2be1112c', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB8NejN6OKxtCQsxNmvwSijXX4V8pIzdjQxGiKs+tQ1SDo1s4lkBH1ojFzY8tm5ZNdg==', 1628668875, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16397, 'fb5b56839c3a3fe584cb025040b8eafc', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB6Ls4v/UX7O6dOy4WGaDLnGo9dfBREZtNA17MVe/1kk0T9T0z6/mGn/geCGgRNBvvA==', 1628670165, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16398, '90249f7b32a24d620e7f410049ca1ebe', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB8XG2UT7FUmFvL+o6TaQJnZBR6rOsOUS0JcKMTRVf2u1npUtvJXBDasjC4kTyrAg1w==', 1628671138, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16399, '3d519cf88417d560d1a6a01e8bad5151', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PBxn/J0aRDQaQyScK7+dZpSOUT/oOBcHbdwwsfsc/Uz4xcHvoHLOVLR3Y1bMm68G16Q==', 1628731142, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16403, 'b867ed5f5d19f350555c9958214f67f5', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB/shK+SUNn0YM0hEl7OXMaefUvKZv/cWL0MFWVuPJdEd93vxE9N5yaYZb9PrBWyJnA==', 1628754367, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16404, '8c702ac68baff0170e479f14bb510423', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB33GLA5sBpuvBTgU3aleZSWP91KodM+1F4E3qFhtS/VfAMfJXtEE2qCF8lSm6tjFZQ==', 1628754944, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16406, 'e5d54983affead5270bfbea1caf54884', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB7Ucpl92SvG0M5OGn5adUR84CxQrQm3oWx8dbjqJsfhMuWWgT2BiUHHYvyQh751QcQ==', 1628759080, 'demo', '[::1]', 'Chrome', 'Windows 10');
INSERT INTO `user_online` VALUES (16407, '7a219a8e39b891743ede15d2024089b2', 'r7P03Dwb+twLFBg4HOF5zedr9aZ+sJYT1wdYAlGy5wIWmuSJ3gSo20ugVQ1eEK5PRl0yAqtatrIapjYY9+0PB6J/Fk+ZX2FSpDThFbcBlZcty3raApVoqInsB5ExSuGDoz+2iFKms6rgiLQI/3MGmg==', 1628814215, 'demo', '[::1]', 'Chrome', 'Windows 10');

-- ----------------------------
-- Table structure for user_post
-- ----------------------------
DROP TABLE IF EXISTS `user_post`;
CREATE TABLE `user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_post
-- ----------------------------
INSERT INTO `user_post` VALUES (1, 2);
INSERT INTO `user_post` VALUES (1, 3);
INSERT INTO `user_post` VALUES (2, 1);
INSERT INTO `user_post` VALUES (2, 2);
INSERT INTO `user_post` VALUES (3, 1);
INSERT INTO `user_post` VALUES (5, 2);
INSERT INTO `user_post` VALUES (15, 4);
INSERT INTO `user_post` VALUES (16, 2);
INSERT INTO `user_post` VALUES (22, 1);
INSERT INTO `user_post` VALUES (22, 2);
INSERT INTO `user_post` VALUES (31, 2);

-- ----------------------------
-- Table structure for web_set
-- ----------------------------
DROP TABLE IF EXISTS `web_set`;
CREATE TABLE `web_set`  (
  `web_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `web_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '站点信息',
  PRIMARY KEY (`web_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_set
-- ----------------------------
INSERT INTO `web_set` VALUES (2, '{\"webLogo\":\"pub_upload/2020-08-07/c4qgtm9okus0lbku6g.jpg\",\"webName\":\"gfast\",\"webSite\":\"localhost\"}');

-- ----------------------------
-- Table structure for wf_business_checker
-- ----------------------------
DROP TABLE IF EXISTS `wf_business_checker`;
CREATE TABLE `wf_business_checker`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `from_table` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '业务表名',
  `from_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '业务id',
  `user_id` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户id',
  `department_id` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `from_table`(`from_table`, `from_id`) USING BTREE COMMENT 'tb_id_unique'
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '业务表对应的当前审批用户和部门' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_business_checker
-- ----------------------------
INSERT INTO `wf_business_checker` VALUES (136, 'wf_news', 1, '2', '');
INSERT INTO `wf_business_checker` VALUES (139, 'wf_news', 3, '1,2', '');
INSERT INTO `wf_business_checker` VALUES (140, 'wf_news', 4, '2', '');

-- ----------------------------
-- Table structure for wf_flow
-- ----------------------------
DROP TABLE IF EXISTS `wf_flow`;
CREATE TABLE `wf_flow`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程类别',
  `flow_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '流程名称',
  `flow_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `sort_order` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0不可用1正常',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `uid` int(11) NULL DEFAULT NULL COMMENT '添加用户',
  `add_time` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '*工作流表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_flow
-- ----------------------------
INSERT INTO `wf_flow` VALUES (1, 'wf_news', '请假', '请假任务', 0, 1, 0, 7, 1597213002);
INSERT INTO `wf_flow` VALUES (2, 'wf_news', '新闻审核', '新闻审核', 0, 1, 0, 1, 1597629655);
INSERT INTO `wf_flow` VALUES (3, 'wf_news', '测试666', '描述666', 0, 1, 0, 2, 1598343685);
INSERT INTO `wf_flow` VALUES (4, 'wf_news', '酷酷酷', '客家话艰苦', 0, 0, 1, 2, 1598343987);
INSERT INTO `wf_flow` VALUES (5, 'wf_news', '新建测试', '新建测试', 0, 1, 0, 2, 1598411926);
INSERT INTO `wf_flow` VALUES (6, 'gov_matter', '项目审批流程1', '', 0, 1, 1, 2, 1604367534);
INSERT INTO `wf_flow` VALUES (7, 'gov_matter', '项目审批流程2', '', 0, 1, 1, 31, 1604566010);
INSERT INTO `wf_flow` VALUES (8, 'wf_news', '审核测试', '', 0, 1, 0, 31, 1607075901);

-- ----------------------------
-- Table structure for wf_flow_process
-- ----------------------------
DROP TABLE IF EXISTS `wf_flow_process`;
CREATE TABLE `wf_flow_process`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `flow_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流程ID',
  `process_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '步骤' COMMENT '步骤名称',
  `process_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '步骤类型',
  `process_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '转交下一步骤号',
  `auto_person` tinyint(1) UNSIGNED NOT NULL DEFAULT 4 COMMENT '3自由选择|4指定人员|5指定角色|6事务接受',
  `auto_sponsor_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '4指定步骤主办人ids',
  `auto_sponsor_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '4指定步骤主办人text',
  `work_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '6事务接受',
  `work_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '6事务接受',
  `auto_role_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '5角色ids',
  `auto_role_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '5角色 text',
  `range_user_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '3自由选择IDS',
  `range_user_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '3自由选择用户ID',
  `is_sing` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1允许|2不允许',
  `is_back` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1允许|2不允许',
  `out_condition` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '转出条件',
  `setleft` smallint(5) UNSIGNED NOT NULL DEFAULT 100 COMMENT '左 坐标',
  `settop` smallint(5) UNSIGNED NOT NULL DEFAULT 100 COMMENT '上 坐标',
  `style` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '样式 序列化',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wf_mode` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 单一线性，1，转出条件 2，同步模式',
  `wf_action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'view' COMMENT '对应方法',
  `work_sql` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `work_msg` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wf_flow_process
-- ----------------------------
INSERT INTO `wf_flow_process` VALUES (1, 1, '核查', 'is_one', '2', 4, '2', '奈斯', '1', '', '', '', '', '', 1, 2, '{}', 158, 34, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597213640, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (2, 1, '登记', 'is_step', '4,3', 4, '1,2', '超级管理员,奈斯', '1', '', '', '', '', '', 1, 1, '{\"3\":{\"condition\":[\"titleinclude \'审批\' AND\",\"uid= \'2\'\"]},\"4\":{\"condition\":[\"uid= \'1\'\"]}}', 436, 52, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597213640, 0, 1, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (3, 1, '校对2', 'is_step', '5', 4, '1,2', '超级管理员,奈斯', '1', '', '100,101', '奇讯科技,深圳总公司', '2', '', 1, 1, '{}', 736, 265, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"140\"}', 0, 1597213640, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (4, 1, '校对1', 'is_step', '5', 6, '6', '', '1', 'uid', '', '', '', '', 1, 1, '{}', 237, 260, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597213640, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (5, 1, '结束', 'is_step', '', 3, '2,3', '奈斯,张三', '1', '', '', '', '2,3', '奈斯,张三', 1, 1, '{}', 509, 440, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597213640, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (7, 2, '步骤1', 'is_one', '52', 4, '2,3', '奈斯,张三', '1', '', '', '', '', '', 1, 1, '{}', 98, 98, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597712162, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (8, 2, '步骤3-2', 'is_step', '10', 5, '', '', '', '', '100,103', '奇讯科技,研发部门', '', '', 1, 1, '{}', 544, 13, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597712162, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (9, 2, '步骤3-1', 'is_step', '10', 4, '2,5', '奈斯,测试2', '', '', '', '', '', '', 1, 1, '{}', 310, 178, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597712162, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (10, 2, '步骤4', 'is_step', '59,60', 4, '1,2', '超级管理员,奈斯', '', '', '', '', '', '', 1, 1, '{\"59\":{\"condition\":[\"uid= \'2\'\"]},\"60\":{\"condition\":[\"uid= \'1\'\"]}}', 523, 198, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 1597712163, 0, 1, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (45, 5, '步骤', 'is_one', '46', 4, '3', '张三', '', '', '', '', '', '', 1, 1, '{}', 100, 100, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (46, 5, '步骤', 'is_step', '48,49,47', 5, '4,5', '', '', '', '100', '奇讯科技', '', '', 1, 1, '{\"47\":{\"condition\":[\"user_id= \'10\'\"]},\"48\":{\"condition\":[\"news_hits\\u003e \'100\'\"]},\"49\":{\"condition\":[\"published_time\\u003e \'30\'\"]}}', 475, 119, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 1, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (47, 5, '步骤', 'is_step', '51', 4, '7', '张明明', '', '', '', '', '', '', 1, 1, '{}', 777, 141, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (48, 5, '步骤', 'is_step', '50', 4, '8', '李小小', '', '', '', '', '', '', 1, 1, '{}', 212, 594, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (49, 5, '步骤', 'is_step', '50', 4, '16,23', '李大牛,王明', '', '', '', '', '', '', 1, 1, '{}', 619, 380, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (50, 5, '步骤', 'is_step', '', 6, '', '', '1', 'news_status', '', '', '', '', 1, 1, '{}', 619, 640, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (51, 5, '步骤', 'is_step', '50', 4, '33', '测试账号1', '', '', '', '', '', '', 1, 1, '{}', 1085, 336, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (52, 2, '步骤2', 'is_step', '9,8', 4, '2,4', '奈斯,测试c', '', '', '', '', '', '', 1, 1, '{}', 327, 19, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 2, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (53, 6, '步骤1', 'is_one', '54', 4, '2,3', '奈斯,张三', '', '', '', '', '', '', 1, 1, '{}', 100, 100, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (54, 6, '步骤2', 'is_step', '55', 5, '', '', '', '', '101,102', '深圳总公司,长沙分公司', '', '', 1, 1, '{}', 488, 85, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (55, 6, '步骤3', 'is_step', '', 4, '2,3', '奈斯,张三', '', '', '', '', '', '', 1, 1, '{}', 919, 100, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (56, 7, '步骤', 'is_one', '57', 4, '3', '张三', '', '', '', '', '', '', 1, 1, '{}', 100, 100, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (57, 7, '步骤', 'is_step', '58', 4, '2', '奈斯', '', '', '', '', '', '', 1, 1, '{}', 377, 102, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (58, 7, '步骤', 'is_step', '', 4, '1', '超级管理员', '', '', '', '', '', '', 1, 1, '{}', 662, 99, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (59, 2, '步骤5', 'is_step', '61', 4, '2,6', '奈斯,刘大大', '', '', '', '', '', '', 1, 1, '{}', 762, 199, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (60, 2, '步骤6', 'is_step', '61', 4, '2,8', '奈斯,李小小', '', '', '', '', '', '', 1, 1, '{}', 752, 345, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (61, 2, '步骤7', 'is_step', '', 4, '2,3', '奈斯,张三', '', '', '', '', '', '', 1, 1, '{}', 1042, 298, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (62, 8, '步骤', 'is_one', '', 4, '', '', '', '', '', '', '', '', 1, 1, '', 100, 100, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (64, 3, '步骤', 'is_one', '65,66', 4, '', '', '', '', '', '', '', '', 1, 1, '', 100, 100, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (65, 3, '步骤', 'is_step', '', 4, '', '', '', '', '', '', '', '', 1, 1, '', 270, 349, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');
INSERT INTO `wf_flow_process` VALUES (66, 3, '步骤', 'is_step', '', 4, '', '', '', '', '', '', '', '', 1, 1, '', 540, 219, '{\"color\":\"#0e76a8\",\"height\":\"auto\",\"width\":\"120\"}', 0, 0, 0, 0, 'view', '', '');

-- ----------------------------
-- Table structure for wf_news
-- ----------------------------
DROP TABLE IF EXISTS `wf_news`;
CREATE TABLE `wf_news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '-1回退修改0 保存中1流程中 2通过',
  `up_time` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '更新日期',
  `uid` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '流程审批测试' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_news
-- ----------------------------
INSERT INTO `wf_news` VALUES (1, '审批测试1', 1, 1605238894, 2);
INSERT INTO `wf_news` VALUES (2, '审批流程2', -1, 1607076352, 2);
INSERT INTO `wf_news` VALUES (3, '审批流程3', 1, 1605239342, 2);
INSERT INTO `wf_news` VALUES (4, '审批流程4', 1, 1603447296, 2);
INSERT INTO `wf_news` VALUES (5, '审批流程5', 0, 1604365445, 2);
INSERT INTO `wf_news` VALUES (7, '新闻审核', 0, 1603705350, 2);

-- ----------------------------
-- Table structure for wf_run
-- ----------------------------
DROP TABLE IF EXISTS `wf_run`;
CREATE TABLE `wf_run`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'work_run父流转公文ID 值大于0则这个是子流程，完成后或者要返回父流程',
  `from_table` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单据表，不带前缀',
  `from_id` int(11) NULL DEFAULT NULL,
  `from_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务表标题字段',
  `from_status` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '业务表审批状态字段',
  `pid_flow_step` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父pid的flow_id中的第几步骤进入的,取回这个work_flow_step的child_over决定结束子流程的动作',
  `cache_run_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '多个子流程时pid无法识别cache所以加这个字段pid>0',
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flow_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流程id 正常流程',
  `cat_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流程分类ID即公文分类ID',
  `run_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '公文名称',
  `run_flow_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流转到什么流程 最新流程，查询优化，进入子流程时将简化查询，子流程与父流程同步',
  `run_flow_process` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '流转到第几步',
  `att_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '公文附件ids',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '结束时间',
  `status` int(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态，0流程中，1通过,2回退',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_sing` int(11) NOT NULL DEFAULT 0,
  `sing_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `from_uni`(`from_id`, `from_table`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `pid_flow_step`(`pid_flow_step`) USING BTREE,
  INDEX `cache_run_id`(`cache_run_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_run
-- ----------------------------
INSERT INTO `wf_run` VALUES (85, 0, 'wf_news', 1, NULL, 'status', 0, 0, 1, 2, 0, '1', 2, '52', '', 1607076300, 0, 0, 0, 1605844037, 1, 42);
INSERT INTO `wf_run` VALUES (86, 0, 'wf_news', 2, NULL, 'status', 0, 0, 2, 1, 0, '2', 1, '2', '', 1606795533, 1, 0, 0, 1606795500, 0, NULL);
INSERT INTO `wf_run` VALUES (87, 0, 'wf_news', 3, NULL, 'status', 0, 0, 2, 1, 0, '3', 1, '2', '', 0, 0, 0, 0, 1607076361, 0, NULL);
INSERT INTO `wf_run` VALUES (88, 0, 'wf_news', 4, 'title', 'status', 0, 0, 2, 1, 0, '4', 1, '1', '', 0, 0, 0, 0, 1607325539, 0, NULL);

-- ----------------------------
-- Table structure for wf_run_cache
-- ----------------------------
DROP TABLE IF EXISTS `wf_run_cache`;
CREATE TABLE `wf_run_cache`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `run_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 缓存run工作的全部流程模板步骤等信息,确保修改流程后工作依然不变',
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flow_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流程ID',
  `run_form` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板信息',
  `run_flow` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '流程信息',
  `run_flow_process` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '流程步骤信息 ',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `run_id`(`run_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_run_cache
-- ----------------------------
INSERT INTO `wf_run_cache` VALUES (93, 85, 1, 2, '', '{\"id\":2,\"type\":\"wf_news\",\"flow_name\":\"新闻审核\",\"flow_desc\":\"新闻审核\",\"sort_order\":0,\"status\":1,\"is_del\":0,\"uid\":1,\"add_time\":1597629655}', '{\"id\":7,\"flow_id\":2,\"process_name\":\"步骤1\",\"process_type\":\"is_one\",\"process_to\":\"52\",\"auto_person\":4,\"auto_sponsor_ids\":\"2,3\",\"auto_sponsor_text\":\"奈斯,张三\",\"work_ids\":\"1\",\"work_text\":\"\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"is_sing\":1,\"is_back\":1,\"out_condition\":\"{}\",\"setleft\":98,\"settop\":98,\"style\":\"{\\\"color\\\":\\\"#0e76a8\\\",\\\"height\\\":\\\"auto\\\",\\\"width\\\":\\\"120\\\"}\",\"is_del\":0,\"updatetime\":1597712162,\"dateline\":0,\"wf_mode\":0,\"wf_action\":\"view\",\"work_sql\":\"\",\"work_msg\":\"\"}', 0, 0, 1605844037);
INSERT INTO `wf_run_cache` VALUES (94, 86, 2, 1, '', '{\"id\":1,\"type\":\"wf_news\",\"flow_name\":\"请假\",\"flow_desc\":\"请假任务\",\"sort_order\":0,\"status\":1,\"is_del\":0,\"uid\":7,\"add_time\":1597213002}', '{\"id\":1,\"flow_id\":1,\"process_name\":\"核查\",\"process_type\":\"is_one\",\"process_to\":\"2\",\"auto_person\":4,\"auto_sponsor_ids\":\"2\",\"auto_sponsor_text\":\"奈斯\",\"work_ids\":\"1\",\"work_text\":\"\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"is_sing\":1,\"is_back\":2,\"out_condition\":\"{}\",\"setleft\":158,\"settop\":34,\"style\":\"{\\\"color\\\":\\\"#0e76a8\\\",\\\"height\\\":\\\"auto\\\",\\\"width\\\":\\\"120\\\"}\",\"is_del\":0,\"updatetime\":1597213640,\"dateline\":0,\"wf_mode\":0,\"wf_action\":\"view\",\"work_sql\":\"\",\"work_msg\":\"\"}', 0, 0, 1606795500);
INSERT INTO `wf_run_cache` VALUES (95, 87, 3, 1, '', '{\"id\":1,\"type\":\"wf_news\",\"flow_name\":\"请假\",\"flow_desc\":\"请假任务\",\"sort_order\":0,\"status\":1,\"is_del\":0,\"uid\":7,\"add_time\":1597213002}', '{\"id\":1,\"flow_id\":1,\"process_name\":\"核查\",\"process_type\":\"is_one\",\"process_to\":\"2\",\"auto_person\":4,\"auto_sponsor_ids\":\"2\",\"auto_sponsor_text\":\"奈斯\",\"work_ids\":\"1\",\"work_text\":\"\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"is_sing\":1,\"is_back\":2,\"out_condition\":\"{}\",\"setleft\":158,\"settop\":34,\"style\":\"{\\\"color\\\":\\\"#0e76a8\\\",\\\"height\\\":\\\"auto\\\",\\\"width\\\":\\\"120\\\"}\",\"is_del\":0,\"updatetime\":1597213640,\"dateline\":0,\"wf_mode\":0,\"wf_action\":\"view\",\"work_sql\":\"\",\"work_msg\":\"\"}', 0, 0, 1607076361);
INSERT INTO `wf_run_cache` VALUES (96, 88, 4, 1, '', '{\"id\":1,\"type\":\"wf_news\",\"flow_name\":\"请假\",\"flow_desc\":\"请假任务\",\"sort_order\":0,\"status\":1,\"is_del\":0,\"uid\":7,\"add_time\":1597213002}', '{\"id\":1,\"flow_id\":1,\"process_name\":\"核查\",\"process_type\":\"is_one\",\"process_to\":\"2\",\"auto_person\":4,\"auto_sponsor_ids\":\"2\",\"auto_sponsor_text\":\"奈斯\",\"work_ids\":\"1\",\"work_text\":\"\",\"auto_role_ids\":\"\",\"auto_role_text\":\"\",\"range_user_ids\":\"\",\"range_user_text\":\"\",\"is_sing\":1,\"is_back\":2,\"out_condition\":\"{}\",\"setleft\":158,\"settop\":34,\"style\":\"{\\\"color\\\":\\\"#0e76a8\\\",\\\"height\\\":\\\"auto\\\",\\\"width\\\":\\\"120\\\"}\",\"is_del\":0,\"updatetime\":1597213640,\"dateline\":0,\"wf_mode\":0,\"wf_action\":\"view\",\"work_sql\":\"\",\"work_msg\":\"\"}', 0, 0, 1607325539);

-- ----------------------------
-- Table structure for wf_run_log
-- ----------------------------
DROP TABLE IF EXISTS `wf_run_log`;
CREATE TABLE `wf_run_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID',
  `from_id` int(11) NULL DEFAULT NULL COMMENT '单据ID',
  `from_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单据表',
  `run_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流转id',
  `run_flow` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流程ID',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  `btn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交操作信息',
  `art` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '附件日志',
  `work_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事务日志',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `run_id`(`run_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 439 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_run_log
-- ----------------------------
INSERT INTO `wf_run_log` VALUES (426, 1, 1, 'wf_news', 85, 0, '1111', 1605844037, 'Send', '', '');
INSERT INTO `wf_run_log` VALUES (427, 2, 1, 'wf_news', 85, 0, '222', 1605844072, 'ok', '[{\"name\":\"b40-800x400.jpg\",\"url\":\"pub_upload/2020-11-20/c77s7pwl58a8fjuycb.jpg\"}]', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (428, 2, 1, 'wf_news', 85, 0, '3333', 1605844088, 'ok', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (429, 2, 1, 'wf_news', 85, 0, '4444', 1605844116, 'Sing', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (430, 2, 1, 'wf_news', 85, 0, '555', 1605844122, 'sok', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (431, 2, 2, 'wf_news', 86, 0, '请假回家', 1606795500, 'Send', '', '');
INSERT INTO `wf_run_log` VALUES (432, 2, 2, 'wf_news', 86, 0, '同意', 1606795519, 'ok', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (433, 2, 2, 'wf_news', 86, 0, '不同意', 1606795533, 'Back', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (434, 2, 1, 'wf_news', 85, 0, '666', 1607076172, 'Back', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (435, 2, 1, 'wf_news', 85, 0, '', 1607076300, 'Sing', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (436, 2, 3, 'wf_news', 87, 0, '666', 1607076361, 'Send', '', '');
INSERT INTO `wf_run_log` VALUES (437, 2, 3, 'wf_news', 87, 0, '222', 1607076368, 'ok', '', 'work_sql:null|work_msg:null');
INSERT INTO `wf_run_log` VALUES (438, 2, 4, 'wf_news', 88, 0, '6666', 1607325539, 'Send', '', '');

-- ----------------------------
-- Table structure for wf_run_process
-- ----------------------------
DROP TABLE IF EXISTS `wf_run_process`;
CREATE TABLE `wf_run_process`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `run_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前流转id',
  `run_flow` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '属于那个流程的id',
  `run_flow_process` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前步骤编号',
  `parent_flow` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上一步流程',
  `parent_flow_process` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上一步骤号',
  `run_child` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '开始转入子流程run_id 如果转入子流程，则在这里也记录',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `is_receive_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否先接收人为主办人',
  `auto_person` tinyint(4) NULL DEFAULT NULL,
  `sponsor_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sponsor_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_sponsor` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否步骤主办人 0否(默认) 1是',
  `is_singpost` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否已会签过',
  `is_back` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被退回的 0否(默认) 1是',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态 0为未接收（默认），1为办理中 ,2为已转交,3为已结束4为已打回',
  `js_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '接收时间',
  `bl_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '办理时间',
  `jj_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '转交时间,最后一步等同办结时间',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wf_mode` int(11) NULL DEFAULT NULL,
  `wf_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `run_id`(`run_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `is_del`(`is_del`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 369 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_run_process
-- ----------------------------
INSERT INTO `wf_run_process` VALUES (358, 1, 85, 2, 7, 0, 0, 0, '222', 0, 4, '奈斯,张三', '2,3', 0, 0, 0, 2, 1605844037, 1605844072, 0, 0, 0, 1605844037, 0, 'view');
INSERT INTO `wf_run_process` VALUES (359, 2, 85, 2, 52, 0, 0, 0, '', 0, 4, '奈斯,测试c', '2,4', 0, 0, 0, 0, 1605844072, 1607076300, 0, 0, 0, 1605844072, 2, 'view');
INSERT INTO `wf_run_process` VALUES (360, 2, 85, 2, 9, 0, 0, 0, '4444', 0, 4, '奈斯,测试2', '2,5', 0, 0, 0, 0, 1605844088, 1605844116, 0, 0, 0, 1605844088, 0, 'view');
INSERT INTO `wf_run_process` VALUES (361, 2, 85, 2, 8, 0, 0, 0, '', 0, 5, '奇讯科技,研发部门', '100,103', 0, 0, 0, 0, 1605844088, 0, 0, 0, 0, 1605844088, 0, 'view');
INSERT INTO `wf_run_process` VALUES (362, 2, 85, 2, 10, 0, 0, 0, '666', 0, 4, '超级管理员,奈斯', '1,2', 0, 0, 0, 0, 1605844122, 1607076172, 0, 0, 0, 1605844122, 1, 'view');
INSERT INTO `wf_run_process` VALUES (363, 2, 86, 1, 1, 0, 0, 0, '同意', 0, 4, '奈斯', '2', 0, 0, 0, 2, 1606795500, 1606795519, 0, 0, 0, 1606795500, 0, 'view');
INSERT INTO `wf_run_process` VALUES (364, 2, 86, 1, 2, 0, 0, 0, '', 0, 4, '超级管理员,奈斯', '1,2', 0, 0, 0, 0, 1606795519, 0, 0, 0, 0, 1606795519, 1, 'view');
INSERT INTO `wf_run_process` VALUES (365, 2, 85, 2, 59, 0, 0, 0, '', 0, 4, '奈斯,刘大大', '2,6', 0, 0, 0, 0, 1607076172, 0, 0, 0, 0, 1607076172, 0, 'view');
INSERT INTO `wf_run_process` VALUES (366, 2, 87, 1, 1, 0, 0, 0, '222', 0, 4, '奈斯', '2', 0, 0, 0, 2, 1607076361, 1607076368, 0, 0, 0, 1607076361, 0, 'view');
INSERT INTO `wf_run_process` VALUES (367, 2, 87, 1, 2, 0, 0, 0, '', 0, 4, '超级管理员,奈斯', '1,2', 0, 0, 0, 0, 1607076368, 0, 0, 0, 0, 1607076368, 1, 'view');
INSERT INTO `wf_run_process` VALUES (368, 2, 88, 1, 1, 0, 0, 0, '', 0, 4, '奈斯', '2', 0, 0, 0, 0, 1607325539, 0, 0, 0, 0, 1607325539, 0, 'view');

-- ----------------------------
-- Table structure for wf_run_sign
-- ----------------------------
DROP TABLE IF EXISTS `wf_run_sign`;
CREATE TABLE `wf_run_sign`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `run_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `run_flow` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '流程ID,子流程时区分run step',
  `run_flow_process` smallint(5) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当前步骤编号',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '会签内容',
  `is_agree` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '审核意见：1同意；2不同意',
  `sign_att_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sign_look` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '步骤设置的会签可见性,0总是可见（默认）,1本步骤经办人之间不可见2针对其他步骤不可见',
  `dateline` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `run_id`(`run_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_run_sign
-- ----------------------------
INSERT INTO `wf_run_sign` VALUES (41, 2, 85, 2, 360, '555', 1, 0, 0, 1605844122);
INSERT INTO `wf_run_sign` VALUES (42, 2, 85, 2, 359, NULL, 0, 0, 0, 1607076300);

-- ----------------------------
-- Table structure for wf_workinfo
-- ----------------------------
DROP TABLE IF EXISTS `wf_workinfo`;
CREATE TABLE `wf_workinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '单据JSON',
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '处理数据',
  `info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '处理结果',
  `datetime` datetime(0) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wf_workinfo
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
