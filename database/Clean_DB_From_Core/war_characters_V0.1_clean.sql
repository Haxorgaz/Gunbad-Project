/*
 Navicat MySQL Data Transfer

 Source Server         : TEST
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : war_characters

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 03/01/2019 12:56:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auctions
-- ----------------------------
DROP TABLE IF EXISTS `auctions`;
CREATE TABLE `auctions`  (
  `AuctionId` bigint(20) UNSIGNED NOT NULL,
  `Realm` tinyint(3) UNSIGNED NOT NULL,
  `SellerId` int(10) UNSIGNED NOT NULL,
  `ItemId` int(10) UNSIGNED NOT NULL,
  `SellPrice` int(10) UNSIGNED NOT NULL,
  `Count` smallint(5) UNSIGNED NOT NULL,
  `StartTime` int(10) UNSIGNED NOT NULL,
  `Talismans` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PrimaryDye` smallint(5) UNSIGNED NOT NULL,
  `SecondaryDye` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`AuctionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for banned_names
-- ----------------------------
DROP TABLE IF EXISTS `banned_names`;
CREATE TABLE `banned_names`  (
  `NameString` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FilterTypeString` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`NameString`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for bug_report
-- ----------------------------
DROP TABLE IF EXISTS `bug_report`;
CREATE TABLE `bug_report`  (
  `AccountId` int(10) UNSIGNED NOT NULL,
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `X` smallint(5) UNSIGNED NOT NULL,
  `Y` smallint(5) UNSIGNED NOT NULL,
  `Time` int(10) UNSIGNED NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `Category` tinyint(3) UNSIGNED NOT NULL,
  `Message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ReportType` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `FieldSting` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Assigned` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bug_report_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`bug_report_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_abilities
-- ----------------------------
DROP TABLE IF EXISTS `character_abilities`;
CREATE TABLE `character_abilities`  (
  `CharacterID` int(11) NULL DEFAULT NULL,
  `AbilityID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `LastCast` int(11) NULL DEFAULT NULL,
  `character_abilities_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`character_abilities_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_bag_pools
-- ----------------------------
DROP TABLE IF EXISTS `character_bag_pools`;
CREATE TABLE `character_bag_pools`  (
  `CharacterId` int(11) NOT NULL,
  `Bag_Type` int(11) NOT NULL,
  `BagPool_Value` int(11) NOT NULL,
  PRIMARY KEY (`CharacterId`, `Bag_Type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_client_data
-- ----------------------------
DROP TABLE IF EXISTS `character_client_data`;
CREATE TABLE `character_client_data`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `ClientDataString` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`CharacterId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_deletions
-- ----------------------------
DROP TABLE IF EXISTS `character_deletions`;
CREATE TABLE `character_deletions`  (
  `DeletionIP` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `AccountID` int(11) NULL DEFAULT NULL,
  `AccountName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CharacterID` int(10) UNSIGNED NULL DEFAULT NULL,
  `CharacterName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `DeletionTimeSeconds` int(11) NULL DEFAULT NULL,
  `character_deletions_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`character_deletions_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_influences
-- ----------------------------
DROP TABLE IF EXISTS `character_influences`;
CREATE TABLE `character_influences`  (
  `CharacterId` int(11) NOT NULL,
  `InfluenceId` smallint(5) UNSIGNED NOT NULL,
  `InfluenceCount` int(10) UNSIGNED NOT NULL,
  `Tier_1_Itemtaken` tinyint(3) UNSIGNED NOT NULL,
  `Tier_2_Itemtaken` tinyint(3) UNSIGNED NOT NULL,
  `Tier_3_Itemtaken` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`CharacterId`, `InfluenceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for character_saved_buffs
-- ----------------------------
DROP TABLE IF EXISTS `character_saved_buffs`;
CREATE TABLE `character_saved_buffs`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `BuffId` smallint(5) UNSIGNED NOT NULL,
  `Level` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StackLevel` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EndTimeSeconds` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`CharacterId`, `BuffId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `Name` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Surname` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RealmId` int(11) NOT NULL,
  `AccountId` int(11) NOT NULL,
  `SlotId` tinyint(3) UNSIGNED NOT NULL,
  `ModelId` tinyint(3) UNSIGNED NOT NULL,
  `Career` tinyint(3) UNSIGNED NOT NULL,
  `CareerLine` tinyint(3) UNSIGNED NOT NULL,
  `Realm` tinyint(3) UNSIGNED NOT NULL,
  `HeldLeft` int(11) NOT NULL,
  `Race` tinyint(3) UNSIGNED NOT NULL,
  `Traits` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Sex` tinyint(3) UNSIGNED NOT NULL,
  `Anonymous` tinyint(3) UNSIGNED NOT NULL,
  `Hidden` tinyint(3) UNSIGNED NOT NULL,
  `OldName` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PetName` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PetModel` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`CharacterId`) USING BTREE,
  UNIQUE INDEX `Name`(`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_items
-- ----------------------------
DROP TABLE IF EXISTS `characters_items`;
CREATE TABLE `characters_items`  (
  `Guid` bigint(20) NOT NULL,
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `Entry` int(10) UNSIGNED NOT NULL,
  `SlotId` smallint(5) UNSIGNED NOT NULL,
  `ModelId` int(10) UNSIGNED NOT NULL,
  `Counts` smallint(5) UNSIGNED NOT NULL,
  `Talismans` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PrimaryDye` smallint(5) UNSIGNED NOT NULL,
  `SecondaryDye` smallint(5) UNSIGNED NOT NULL,
  `BoundtoPlayer` tinyint(3) UNSIGNED NOT NULL,
  `Alternate_AppereanceEntry` int(10) UNSIGNED NOT NULL,
  `characters_items_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`characters_items_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_mails
-- ----------------------------
DROP TABLE IF EXISTS `characters_mails`;
CREATE TABLE `characters_mails`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `AuctionType` tinyint(3) UNSIGNED NOT NULL,
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `CharacterIdSender` int(10) UNSIGNED NOT NULL,
  `SenderName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ReceiverName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `SendDate` int(10) UNSIGNED NOT NULL,
  `ReadDate` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Money` int(10) UNSIGNED NOT NULL,
  `Cr` tinyint(3) UNSIGNED NOT NULL,
  `Opened` tinyint(3) UNSIGNED NOT NULL,
  `ItemsString` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_quests
-- ----------------------------
DROP TABLE IF EXISTS `characters_quests`;
CREATE TABLE `characters_quests`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `QuestID` smallint(5) UNSIGNED NOT NULL,
  `Objectives` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Done` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`CharacterId`, `QuestID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_socials
-- ----------------------------
DROP TABLE IF EXISTS `characters_socials`;
CREATE TABLE `characters_socials`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `DistCharacterId` int(10) UNSIGNED NOT NULL,
  `DistName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Friend` tinyint(3) UNSIGNED NOT NULL,
  `Ignore` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`CharacterId`, `DistCharacterId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_toks
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks`;
CREATE TABLE `characters_toks`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `TokEntry` smallint(5) UNSIGNED NOT NULL,
  `Count` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`CharacterId`, `TokEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_toks_kills
-- ----------------------------
DROP TABLE IF EXISTS `characters_toks_kills`;
CREATE TABLE `characters_toks_kills`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `NPCEntry` smallint(5) UNSIGNED NOT NULL,
  `Count` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`CharacterId`, `NPCEntry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characters_value
-- ----------------------------
DROP TABLE IF EXISTS `characters_value`;
CREATE TABLE `characters_value`  (
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `Xp` int(10) UNSIGNED NOT NULL,
  `XpMode` int(11) NOT NULL,
  `RestXp` int(10) UNSIGNED NOT NULL,
  `Renown` int(10) UNSIGNED NOT NULL,
  `RenownRank` tinyint(3) UNSIGNED NOT NULL,
  `Money` int(10) UNSIGNED NOT NULL,
  `Speed` int(11) NOT NULL,
  `PlayedTime` int(10) UNSIGNED NOT NULL,
  `LastSeen` int(11) NULL DEFAULT NULL,
  `RegionId` int(11) NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `WorldX` int(11) NOT NULL,
  `WorldY` int(11) NOT NULL,
  `WorldZ` int(11) NOT NULL,
  `WorldO` int(11) NOT NULL,
  `RallyPoint` smallint(5) UNSIGNED NOT NULL,
  `BagBuy` tinyint(3) UNSIGNED NOT NULL,
  `BankBuy` tinyint(3) UNSIGNED NOT NULL,
  `Skills` int(10) UNSIGNED NOT NULL,
  `Online` tinyint(3) UNSIGNED NOT NULL,
  `GearShow` tinyint(3) UNSIGNED NOT NULL,
  `TitleId` smallint(5) UNSIGNED NOT NULL,
  `RenownSkills` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MasterySkills` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Morale1` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Morale2` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Morale3` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Morale4` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Tactic1` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Tactic2` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Tactic3` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Tactic4` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `GatheringSkill` tinyint(3) UNSIGNED NOT NULL,
  `GatheringSkillLevel` tinyint(3) UNSIGNED NOT NULL,
  `CraftingSkill` tinyint(3) UNSIGNED NOT NULL,
  `CraftingSkillLevel` tinyint(3) UNSIGNED NOT NULL,
  `ExperimentalMode` tinyint(3) UNSIGNED NOT NULL,
  `RVRKills` int(10) UNSIGNED NOT NULL,
  `RVRDeaths` int(10) UNSIGNED NOT NULL,
  `CraftingBags` tinyint(3) UNSIGNED NOT NULL,
  `PendingXp` int(10) UNSIGNED NULL DEFAULT NULL,
  `PendingRenown` int(10) UNSIGNED NULL DEFAULT NULL,
  `Lockouts` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DisconcetTime` int(11) NOT NULL,
  PRIMARY KEY (`CharacterId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gmcommandlogs
-- ----------------------------
DROP TABLE IF EXISTS `gmcommandlogs`;
CREATE TABLE `gmcommandlogs`  (
  `AccountId` int(10) UNSIGNED NULL DEFAULT NULL,
  `PlayerName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Command` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Date` datetime(0) NULL DEFAULT NULL,
  `gmcommandlogs_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`gmcommandlogs_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_alliance_info
-- ----------------------------
DROP TABLE IF EXISTS `guild_alliance_info`;
CREATE TABLE `guild_alliance_info`  (
  `AllianceId` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`AllianceId`) USING BTREE,
  UNIQUE INDEX `Name`(`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_event
-- ----------------------------
DROP TABLE IF EXISTS `guild_event`;
CREATE TABLE `guild_event`  (
  `SlotId` tinyint(3) UNSIGNED NOT NULL,
  `GuildId` int(10) UNSIGNED NOT NULL,
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `Begin` int(10) UNSIGNED NOT NULL,
  `End` int(10) UNSIGNED NOT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Alliance` tinyint(3) UNSIGNED NOT NULL,
  `Locked` tinyint(3) UNSIGNED NOT NULL,
  `Signups` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `guild_event_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`guild_event_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_info
-- ----------------------------
DROP TABLE IF EXISTS `guild_info`;
CREATE TABLE `guild_info`  (
  `GuildId` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `Realm` tinyint(3) UNSIGNED NOT NULL,
  `LeaderId` int(10) UNSIGNED NOT NULL,
  `CreateDate` int(11) NOT NULL,
  `Motd` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AboutUs` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Xp` int(10) UNSIGNED NOT NULL,
  `Renown` bigint(20) UNSIGNED NOT NULL,
  `BriefDescription` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Summary` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PlayStyle` tinyint(3) UNSIGNED NOT NULL,
  `Atmosphere` tinyint(3) UNSIGNED NOT NULL,
  `CareersNeeded` int(10) UNSIGNED NOT NULL,
  `Interests` tinyint(3) UNSIGNED NOT NULL,
  `ActivelyRecruiting` tinyint(3) UNSIGNED NOT NULL,
  `RanksNeeded` tinyint(3) UNSIGNED NOT NULL,
  `Tax` tinyint(3) UNSIGNED NOT NULL,
  `Money` bigint(20) UNSIGNED NOT NULL,
  `guildvaultpurchased` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Banners` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Heraldry` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GuildTacticsPurchased` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `AllianceId` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`GuildId`) USING BTREE,
  UNIQUE INDEX `Name`(`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_logs
-- ----------------------------
DROP TABLE IF EXISTS `guild_logs`;
CREATE TABLE `guild_logs`  (
  `GuildId` int(10) UNSIGNED NOT NULL,
  `Time` int(10) UNSIGNED NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `Text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `guild_logs_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`guild_logs_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_members
-- ----------------------------
DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE `guild_members`  (
  `GuildId` int(10) UNSIGNED NOT NULL,
  `CharacterId` int(10) UNSIGNED NOT NULL,
  `RankId` tinyint(3) UNSIGNED NOT NULL,
  `PublicNote` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `OfficerNote` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `JoinDate` int(10) UNSIGNED NOT NULL,
  `LastSeen` int(10) UNSIGNED NOT NULL,
  `RealmCaptain` tinyint(3) UNSIGNED NOT NULL,
  `StandardBearer` tinyint(3) UNSIGNED NOT NULL,
  `GuildRecruiter` tinyint(3) UNSIGNED NOT NULL,
  `RenownContributed` bigint(20) UNSIGNED NOT NULL,
  `Tithe` tinyint(3) UNSIGNED NOT NULL,
  `TitheContributed` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`CharacterId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_ranks
-- ----------------------------
DROP TABLE IF EXISTS `guild_ranks`;
CREATE TABLE `guild_ranks`  (
  `GuildId` int(10) UNSIGNED NOT NULL,
  `RankId` tinyint(3) UNSIGNED NOT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Permissions` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Enabled` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`GuildId`, `RankId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_vault_item
-- ----------------------------
DROP TABLE IF EXISTS `guild_vault_item`;
CREATE TABLE `guild_vault_item`  (
  `GuildId` int(10) UNSIGNED NOT NULL,
  `Entry` int(10) UNSIGNED NOT NULL,
  `VaultId` tinyint(3) UNSIGNED NOT NULL,
  `SlotId` smallint(5) UNSIGNED NOT NULL,
  `Counts` smallint(5) UNSIGNED NOT NULL,
  `Talismans` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PrimaryDye` smallint(5) UNSIGNED NOT NULL,
  `SecondaryDye` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`GuildId`, `VaultId`, `SlotId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for scenario_durations
-- ----------------------------
DROP TABLE IF EXISTS `scenario_durations`;
CREATE TABLE `scenario_durations`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `ScenarioId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Tier` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StartTime` bigint(20) NULL DEFAULT NULL,
  `DurationSeconds` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
