-- ----------------------------
-- Table structure for act_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `act_id_membership`;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for act_id_user
-- ----------------------------
DROP TABLE IF EXISTS `act_id_user`;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_id_user
-- ----------------------------
INSERT INTO `act_id_user` VALUES ('emp1', null, '王', '一', 'sds@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('emp2', null, '王', '二', 'sds@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('fuzongcai1', null, '王', '三', '123@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('gly1', null, '王', '四', '123@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('jingli1', null, '王', '五', '123@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('renshi1', null, '王', '六', '123@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('zhangsan', null, '王', '七', '123@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('zongcai1', null, '王', '八', 'sds@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('zongjian1', null, '王', '九', '123@qq.com', '123', null);
INSERT INTO `act_id_user` VALUES ('zuzhang1', null, '王', '十', '123@qq.com', '123', null);
-- ----------------------------
-- Table structure for act_id_group
-- ----------------------------
DROP TABLE IF EXISTS `act_id_group`;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of act_id_group
-- ----------------------------
INSERT INTO `act_id_group` VALUES ('emp', null, '员工', null);
INSERT INTO `act_id_group` VALUES ('fuzongcai', null, '副总裁', null);
INSERT INTO `act_id_group` VALUES ('gly', null, '管理员', null);
INSERT INTO `act_id_group` VALUES ('jingli', null, '经理', null);
INSERT INTO `act_id_group` VALUES ('renshi', null, '人事', null);
INSERT INTO `act_id_group` VALUES ('zongcai', null, '总裁', null);
INSERT INTO `act_id_group` VALUES ('zongjian', null, '总监', null);
INSERT INTO `act_id_group` VALUES ('zuzhang', null, '组长', null);



-- ----------------------------
-- Records of act_id_membership
-- ----------------------------
INSERT INTO `act_id_membership` VALUES ('emp1', 'emp');
INSERT INTO `act_id_membership` VALUES ('emp2', 'emp');
INSERT INTO `act_id_membership` VALUES ('fuzongcai1', 'fuzongcai');
INSERT INTO `act_id_membership` VALUES ('gly1', 'gly');
INSERT INTO `act_id_membership` VALUES ('jingli1', 'jingli');
INSERT INTO `act_id_membership` VALUES ('renshi1', 'renshi');
INSERT INTO `act_id_membership` VALUES ('zongcai1', 'zongcai');
INSERT INTO `act_id_membership` VALUES ('zongjian1', 'zongjian');
INSERT INTO `act_id_membership` VALUES ('zuzhang1', 'zuzhang');

-- ----------------------------
-- Table structure for t_leave
-- ----------------------------
DROP TABLE IF EXISTS `t_leave`;
CREATE TABLE `t_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(64) DEFAULT NULL,
  `leaveDate` datetime DEFAULT NULL,
  `leaveDays` int(11) DEFAULT NULL,
  `leaveReason` text,
  `state` varchar(20) DEFAULT NULL,
  `processInstanceId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leave
-- ----------------------------

