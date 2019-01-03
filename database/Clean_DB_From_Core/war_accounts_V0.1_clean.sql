/*
 Navicat MySQL Data Transfer

 Source Server         : TEST
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : war_accounts

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 03/01/2019 12:56:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account_sanction_logs
-- ----------------------------
DROP TABLE IF EXISTS `account_sanction_logs`;
CREATE TABLE `account_sanction_logs`  (
  `AccountId` int(11) NULL DEFAULT NULL,
  `IssuedBy` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ActionType` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `IssuerGmLevel` int(11) NULL DEFAULT NULL,
  `ActionDuration` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ActionLog` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ActionTime` int(11) NULL DEFAULT NULL,
  `account_sanction_logs_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`account_sanction_logs_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for account_value
-- ----------------------------
DROP TABLE IF EXISTS `account_value`;
CREATE TABLE `account_value`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AccountId` int(11) NULL DEFAULT NULL,
  `InstallId` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `IP` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `MAC` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `HDSerialHash` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CPUIDHash` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ModifyDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `AccountId` int(11) NOT NULL AUTO_INCREMENT,
  `PacketLog` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CryptPassword` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `GmLevel` tinyint(4) NOT NULL,
  `Banned` int(11) NOT NULL,
  `BanReason` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `AdviceBlockEnd` int(11) NULL DEFAULT NULL,
  `StealthMuteEnd` int(11) NULL DEFAULT NULL,
  `CoreLevel` int(11) NULL DEFAULT NULL,
  `LastLogged` int(11) NULL DEFAULT NULL,
  `LastNameChanged` int(11) NULL DEFAULT NULL,
  `LastPatcherLog` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `InvalidPasswordCount` int(10) UNSIGNED NOT NULL,
  `noSurname` tinyint(4) NOT NULL,
  PRIMARY KEY (`AccountId`) USING BTREE,
  UNIQUE INDEX `Username`(`Username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ip_bans
-- ----------------------------
DROP TABLE IF EXISTS `ip_bans`;
CREATE TABLE `ip_bans`  (
  `Ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Expire` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Ip`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for realms
-- ----------------------------
DROP TABLE IF EXISTS `realms`;
CREATE TABLE `realms`  (
  `RealmId` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Language` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Adresse` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Port` int(11) NOT NULL,
  `AllowTrials` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CharfxerAvailable` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Legacy` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BonusDestruction` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BonusOrder` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Redirect` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Region` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Retired` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `WaitingDestruction` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `WaitingOrder` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DensityDestruction` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DensityOrder` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `OpenRvr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Rp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Online` tinyint(3) UNSIGNED NOT NULL,
  `OnlineDate` datetime(0) NULL DEFAULT NULL,
  `OnlinePlayers` int(10) UNSIGNED NULL DEFAULT NULL,
  `OrderCount` int(10) UNSIGNED NULL DEFAULT NULL,
  `DestructionCount` int(10) UNSIGNED NULL DEFAULT NULL,
  `MaxPlayers` int(10) UNSIGNED NULL DEFAULT NULL,
  `OrderCharacters` int(10) UNSIGNED NULL DEFAULT NULL,
  `DestruCharacters` int(10) UNSIGNED NULL DEFAULT NULL,
  `NextRotationTime` bigint(20) NULL DEFAULT NULL,
  `MasterPassword` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `BootTime` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`RealmId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
