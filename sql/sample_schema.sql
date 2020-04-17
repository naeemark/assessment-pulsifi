/*
 Prepared by: Naeem<naeemark@gmail.com>

 Created from Sample Data (provided)
 

 Date: 16/04/2020 18:43:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `action_id` int(11) NOT NULL,
  `action_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of action
-- ----------------------------
BEGIN;
INSERT INTO `action` VALUES (1, 'Login');
INSERT INTO `action` VALUES (2, 'Logout');
INSERT INTO `action` VALUES (3, 'Start Assessment');
INSERT INTO `action` VALUES (4, 'Finish Assessment');
COMMIT;

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profile
-- ----------------------------
BEGIN;
INSERT INTO `profile` VALUES (11, 'Alex', 'Male');
INSERT INTO `profile` VALUES (22, 'Beth', 'Female');
INSERT INTO `profile` VALUES (33, 'Chad', 'Male');
COMMIT;

-- ----------------------------
-- Table structure for profile_action
-- ----------------------------
DROP TABLE IF EXISTS `profile_action`;
CREATE TABLE `profile_action` (
  `profile_action_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`profile_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profile_action
-- ----------------------------
BEGIN;
INSERT INTO `profile_action` VALUES (1, 11, 1, '2020-01-01 01:00:00');
INSERT INTO `profile_action` VALUES (2, 22, 3, '2020-01-01 02:00:00');
INSERT INTO `profile_action` VALUES (3, 11, 3, '2020-01-01 03:00:00');
INSERT INTO `profile_action` VALUES (4, 22, 2, '2020-01-01 04:00:00');
INSERT INTO `profile_action` VALUES (5, 22, 1, '2020-01-01 05:00:00');
INSERT INTO `profile_action` VALUES (6, 11, 4, '2020-01-01 06:00:00');
INSERT INTO `profile_action` VALUES (7, 11, 2, '2020-01-01 07:00:00');
INSERT INTO `profile_action` VALUES (8, 22, 2, '2020-01-01 08:00:00');
COMMIT;

-- ----------------------------
-- Table structure for profile_action_____
-- ----------------------------
DROP TABLE IF EXISTS `profile_action_____`;
CREATE TABLE `profile_action_____` (
  `profile_action_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`profile_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profile_action_____
-- ----------------------------
BEGIN;
INSERT INTO `profile_action_____` VALUES (1, 11, 1, '2020-01-01 01:00:00');
INSERT INTO `profile_action_____` VALUES (2, 22, 3, '2020-01-01 02:00:00');
INSERT INTO `profile_action_____` VALUES (3, 11, 3, '2020-01-01 03:00:00');
INSERT INTO `profile_action_____` VALUES (4, 22, 2, '2020-01-01 04:00:00');
INSERT INTO `profile_action_____` VALUES (5, 22, 1, '2020-01-01 05:00:00');
INSERT INTO `profile_action_____` VALUES (6, 11, 4, '2020-01-01 06:00:00');
INSERT INTO `profile_action_____` VALUES (7, 11, 2, '2020-01-01 07:00:00');
INSERT INTO `profile_action_____` VALUES (8, 22, 2, '2020-04-16 17:07:52');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
