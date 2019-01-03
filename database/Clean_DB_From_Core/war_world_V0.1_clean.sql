/*
 Navicat MySQL Data Transfer

 Source Server         : TEST
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : war_world

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 03/01/2019 12:56:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abilities
-- ----------------------------
DROP TABLE IF EXISTS `abilities`;
CREATE TABLE `abilities`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `CareerLine` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MinRange` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Range` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `CastTime` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Cooldown` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ApCost` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `SpecialCost` smallint(6) NULL DEFAULT NULL,
  `MoveCast` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MinimumRank` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MinimumRenown` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `IconId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Specline` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MasteryTree` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Category` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Flags` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `PointCost` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `CashCost` int(10) UNSIGNED NULL DEFAULT NULL,
  `AbilityType` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ChannelID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `CastAngle` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `EffectID` smallint(5) UNSIGNED NOT NULL,
  `WeaponNeeded` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `InvokeDelay` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `EffectDelay` smallint(6) NULL DEFAULT NULL,
  `IgnoreGlobalCooldown` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `AffectsDead` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StealthInteraction` int(11) NULL DEFAULT NULL,
  `Fragile` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `CooldownEntry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ToggleEntry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `IgnoreOwnModifiers` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `AIRange` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `IgnoreCooldownReduction` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `CDcap` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `VFXTarget` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `abilityID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `effectID2` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Time` smallint(5) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ability_commands
-- ----------------------------
DROP TABLE IF EXISTS `ability_commands`;
CREATE TABLE `ability_commands`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `AbilityName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CommandID` tinyint(3) UNSIGNED NOT NULL,
  `CommandSequence` tinyint(3) UNSIGNED NOT NULL,
  `CommandName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PrimaryValue` int(11) NULL DEFAULT NULL,
  `SecondaryValue` int(11) NULL DEFAULT NULL,
  `EffectRadius` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EffectAngle` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Target` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EffectSource` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MaxTargets` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `AttackingStat` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `IsDelayedEffect` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `FromAllTargets` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `NoAutoUse` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `CommandID`, `CommandSequence`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ability_damage_heals
-- ----------------------------
DROP TABLE IF EXISTS `ability_damage_heals`;
CREATE TABLE `ability_damage_heals`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `DisplayEntry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Name` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Index` tinyint(3) UNSIGNED NOT NULL,
  `ParentCommandID` tinyint(3) UNSIGNED NOT NULL,
  `ParentCommandSequence` tinyint(3) UNSIGNED NOT NULL,
  `MinDamage` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `MaxDamage` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `DamageType` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DamageVariance` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `CastTimeDamageMult` float NULL DEFAULT NULL,
  `WeaponDamageFrom` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `WeaponDamageScale` float NULL DEFAULT NULL,
  `NoCrits` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Undefendable` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `OverrideDefenseEvent` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StatUsed` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StatDamageScale` float NULL DEFAULT NULL,
  `ArmorResistPenFactor` float NULL DEFAULT NULL,
  `HatredScale` float NULL DEFAULT NULL,
  `HealHatredScale` float NULL DEFAULT NULL,
  `ResourceBuild` smallint(6) NULL DEFAULT NULL,
  `CastPlayerSubID` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PriStatMultiplier` float NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Index`, `ParentCommandID`, `ParentCommandSequence`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ability_knockback_info
-- ----------------------------
DROP TABLE IF EXISTS `ability_knockback_info`;
CREATE TABLE `ability_knockback_info`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `Id` smallint(5) UNSIGNED NOT NULL,
  `Angle` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Power` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `RangeExtension` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `GravMultiplier` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Unk` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ability_modifier_checks
-- ----------------------------
DROP TABLE IF EXISTS `ability_modifier_checks`;
CREATE TABLE `ability_modifier_checks`  (
  `Entry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `SourceAbility` varchar(48) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Affecting` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `AffectedAbility` varchar(48) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PreOrPost` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ID` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Sequence` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `CommandName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `FailCode` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PrimaryValue` int(11) NULL DEFAULT NULL,
  `SecondaryValue` int(11) NULL DEFAULT NULL,
  `ability_modifier_checks_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ability_modifier_checks_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ability_modifiers
-- ----------------------------
DROP TABLE IF EXISTS `ability_modifiers`;
CREATE TABLE `ability_modifiers`  (
  `Entry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `SourceAbility` varchar(48) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Affecting` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `AffectedAbility` varchar(48) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PreOrPost` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Sequence` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ModifierCommandName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TargetCommandID` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `TargetCommandSequence` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PrimaryValue` int(11) NULL DEFAULT NULL,
  `SecondaryValue` int(11) NULL DEFAULT NULL,
  `BuffLine` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ability_modifiers_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ability_modifiers_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for battlefront_guards
-- ----------------------------
DROP TABLE IF EXISTS `battlefront_guards`;
CREATE TABLE `battlefront_guards`  (
  `ObjectiveId` int(11) NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `OrderId` int(10) UNSIGNED NOT NULL,
  `DestroId` int(10) UNSIGNED NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `battlefront_guards_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`battlefront_guards_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for battlefront_objectives
-- ----------------------------
DROP TABLE IF EXISTS `battlefront_objectives`;
CREATE TABLE `battlefront_objectives`  (
  `Entry` int(11) NOT NULL,
  `RegionId` smallint(5) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `TokDiscovered` int(10) UNSIGNED NOT NULL,
  `TokUnlocked` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for battlefront_objects
-- ----------------------------
DROP TABLE IF EXISTS `battlefront_objects`;
CREATE TABLE `battlefront_objects`  (
  `Entry` int(11) NOT NULL,
  `RegionId` smallint(5) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `Type` smallint(5) UNSIGNED NOT NULL,
  `Realm` smallint(5) UNSIGNED NOT NULL,
  `ObjectiveID` int(11) NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for battlefront_resource_spawns
-- ----------------------------
DROP TABLE IF EXISTS `battlefront_resource_spawns`;
CREATE TABLE `battlefront_resource_spawns`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `Entry` int(11) NULL DEFAULT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for battlefront_status
-- ----------------------------
DROP TABLE IF EXISTS `battlefront_status`;
CREATE TABLE `battlefront_status`  (
  `RegionId` int(11) NOT NULL AUTO_INCREMENT,
  `OpenZoneIndex` int(11) NULL DEFAULT NULL,
  `ActiveRegionOrZone` int(11) NULL DEFAULT NULL,
  `ControlingRealm` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`RegionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for buff_commands
-- ----------------------------
DROP TABLE IF EXISTS `buff_commands`;
CREATE TABLE `buff_commands`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CommandID` tinyint(3) UNSIGNED NOT NULL,
  `CommandSequence` tinyint(3) UNSIGNED NOT NULL,
  `CommandName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BuffClassString` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PrimaryValue` int(11) NULL DEFAULT NULL,
  `SecondaryValue` int(11) NULL DEFAULT NULL,
  `TertiaryValue` int(11) NULL DEFAULT NULL,
  `InvokeOn` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EffectRadius` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EffectAngle` smallint(6) NULL DEFAULT NULL,
  `Target` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EffectSource` varchar(24) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MaxTargets` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EventIDString` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EventCheck` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `EventCheckParam` int(10) UNSIGNED NULL DEFAULT NULL,
  `EventChance` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `RetriggerInterval` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ConsumesStack` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `BuffLine` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `NoAutoUse` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `CommandID`, `CommandSequence`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for buff_infos
-- ----------------------------
DROP TABLE IF EXISTS `buff_infos`;
CREATE TABLE `buff_infos`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `BuffClassString` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TypeString` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Group` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `AuraPropagation` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MaxCopies` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `UseMaxStackAsInitial` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MaxStack` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StackLine` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StacksFromCaster` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Duration` int(10) UNSIGNED NULL DEFAULT NULL,
  `LeadInDelay` int(11) NULL DEFAULT NULL,
  `Interval` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `PersistsOnDeath` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `CanRefresh` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `FriendlyEffectID` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EnemyEffectID` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Silent` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for chapter_infos
-- ----------------------------
DROP TABLE IF EXISTS `chapter_infos`;
CREATE TABLE `chapter_infos`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CreatureEntry` int(10) UNSIGNED NULL DEFAULT NULL,
  `InfluenceEntry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Race` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ChapterRank` int(10) UNSIGNED NULL DEFAULT NULL,
  `PinX` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `PinY` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `TokEntry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `TokExploreEntry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Tier1InfluenceCount` int(10) UNSIGNED NULL DEFAULT NULL,
  `Tier2InfluenceCount` int(10) UNSIGNED NULL DEFAULT NULL,
  `Tier3InfluenceCount` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for chapter_rewards
-- ----------------------------
DROP TABLE IF EXISTS `chapter_rewards`;
CREATE TABLE `chapter_rewards`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ItemId` int(10) UNSIGNED NOT NULL,
  `InfluenceCount` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `ItemId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characterinfo
-- ----------------------------
DROP TABLE IF EXISTS `characterinfo`;
CREATE TABLE `characterinfo`  (
  `CareerLine` tinyint(3) UNSIGNED NOT NULL,
  `Career` tinyint(3) UNSIGNED NOT NULL,
  `CareerName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Realm` tinyint(3) UNSIGNED NOT NULL,
  `Region` smallint(5) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `WorldX` int(11) NOT NULL,
  `WorldY` int(11) NOT NULL,
  `WorldZ` int(11) NOT NULL,
  `WorldO` int(11) NOT NULL,
  `RallyPt` smallint(5) UNSIGNED NOT NULL,
  `Skills` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`CareerLine`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characterinfo_items
-- ----------------------------
DROP TABLE IF EXISTS `characterinfo_items`;
CREATE TABLE `characterinfo_items`  (
  `CareerLine` tinyint(3) UNSIGNED NOT NULL,
  `Entry` int(10) UNSIGNED NOT NULL,
  `SlotId` smallint(5) UNSIGNED NOT NULL,
  `Count` smallint(5) UNSIGNED NOT NULL,
  `ModelId` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`CareerLine`, `SlotId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characterinfo_renown
-- ----------------------------
DROP TABLE IF EXISTS `characterinfo_renown`;
CREATE TABLE `characterinfo_renown`  (
  `SpellId` smallint(5) UNSIGNED NOT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ID` tinyint(3) UNSIGNED NOT NULL,
  `Passive` tinyint(3) UNSIGNED NOT NULL,
  `Tree` tinyint(3) UNSIGNED NOT NULL,
  `Position` tinyint(3) UNSIGNED NOT NULL,
  `Renown_Costs` tinyint(3) UNSIGNED NOT NULL,
  `Slotreq` tinyint(3) UNSIGNED NOT NULL,
  `Unk` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CommandName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Stat` tinyint(3) UNSIGNED NOT NULL,
  `Value` int(11) NOT NULL,
  PRIMARY KEY (`SpellId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for characterinfo_stats
-- ----------------------------
DROP TABLE IF EXISTS `characterinfo_stats`;
CREATE TABLE `characterinfo_stats`  (
  `CareerLine` tinyint(3) UNSIGNED NOT NULL,
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `StatId` tinyint(3) UNSIGNED NOT NULL,
  `StatValue` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`CareerLine`, `Level`, `StatId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for creature_abilities
-- ----------------------------
DROP TABLE IF EXISTS `creature_abilities`;
CREATE TABLE `creature_abilities`  (
  `ProtoEntry` int(10) UNSIGNED NULL DEFAULT NULL,
  `AbilityId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Cooldown` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `TimeStart` int(10) UNSIGNED NULL DEFAULT NULL,
  `ActivateAtHealthPercent` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `DisableAtHealthPercent` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `AbilityCycle` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Active` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ActivateOnCombatStart` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `RandomTarget` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MinRange` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `creature_abilities_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`creature_abilities_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for creature_items
-- ----------------------------
DROP TABLE IF EXISTS `creature_items`;
CREATE TABLE `creature_items`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `SlotId` smallint(5) UNSIGNED NOT NULL,
  `ModelId` smallint(5) UNSIGNED NOT NULL,
  `EffectId` int(10) UNSIGNED NOT NULL,
  `PrimaryColor` smallint(5) UNSIGNED NOT NULL,
  `SecondaryColor` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Entry`, `SlotId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for creature_protos
-- ----------------------------
DROP TABLE IF EXISTS `creature_protos`;
CREATE TABLE `creature_protos`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Model1` smallint(5) UNSIGNED NOT NULL,
  `Model2` smallint(5) UNSIGNED NOT NULL,
  `MinScale` smallint(5) UNSIGNED NOT NULL,
  `MaxScale` smallint(5) UNSIGNED NOT NULL,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL,
  `Faction` tinyint(3) UNSIGNED NOT NULL,
  `CreatureType` tinyint(3) UNSIGNED NOT NULL,
  `CreatureSubType` tinyint(3) UNSIGNED NOT NULL,
  `Ranged` smallint(5) UNSIGNED NOT NULL,
  `Icone` tinyint(3) UNSIGNED NOT NULL,
  `Emote` tinyint(3) UNSIGNED NOT NULL,
  `Title` smallint(5) UNSIGNED NOT NULL,
  `Unk` smallint(5) UNSIGNED NOT NULL,
  `Unk1` smallint(5) UNSIGNED NOT NULL,
  `Unk2` smallint(5) UNSIGNED NOT NULL,
  `Unk3` smallint(5) UNSIGNED NOT NULL,
  `Unk4` smallint(5) UNSIGNED NOT NULL,
  `Unk5` smallint(5) UNSIGNED NOT NULL,
  `Unk6` smallint(5) UNSIGNED NOT NULL,
  `Flag` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ScriptName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LairBoss` tinyint(3) UNSIGNED NOT NULL,
  `VendorID` smallint(5) UNSIGNED NOT NULL,
  `TokUnlock` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `States` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `FigLeafData` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `BaseRadiusUnits` int(11) NULL DEFAULT NULL,
  `Career` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PowerModifier` float NULL DEFAULT NULL,
  `WoundsModifier` float NULL DEFAULT NULL,
  `Invulnerable` tinyint(3) UNSIGNED NOT NULL,
  `WeaponDPS` smallint(5) UNSIGNED NOT NULL,
  `ImmuneToCC` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for creature_spawns
-- ----------------------------
DROP TABLE IF EXISTS `creature_spawns`;
CREATE TABLE `creature_spawns`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `Entry` int(10) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `WorldX` int(11) NOT NULL,
  `WorldY` int(11) NOT NULL,
  `WorldZ` int(11) NOT NULL,
  `WorldO` int(11) NOT NULL,
  `Icone` tinyint(3) UNSIGNED NOT NULL,
  `Emote` tinyint(3) UNSIGNED NOT NULL,
  `RespawnMinutes` smallint(5) UNSIGNED NOT NULL,
  `Faction` tinyint(3) UNSIGNED NOT NULL,
  `WaypointType` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `Oid` int(10) UNSIGNED NOT NULL,
  `Enabled` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for creature_stats
-- ----------------------------
DROP TABLE IF EXISTS `creature_stats`;
CREATE TABLE `creature_stats`  (
  `ProtoEntry` int(10) UNSIGNED NOT NULL,
  `StatId` int(10) UNSIGNED NOT NULL,
  `StatValue` int(11) NOT NULL,
  `Comment` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `UUID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for creature_texts
-- ----------------------------
DROP TABLE IF EXISTS `creature_texts`;
CREATE TABLE `creature_texts`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Text` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `creature_texts_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`creature_texts_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dye_infos
-- ----------------------------
DROP TABLE IF EXISTS `dye_infos`;
CREATE TABLE `dye_infos`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `Price` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gameobject_loots
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_loots`;
CREATE TABLE `gameobject_loots`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `ItemId` int(10) UNSIGNED NOT NULL,
  `Pct` float NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`, `ItemId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gameobject_protos
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_protos`;
CREATE TABLE `gameobject_protos`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `DisplayID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Scale` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Level` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Faction` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `HealthPoints` int(10) UNSIGNED NULL DEFAULT NULL,
  `TokUnlock` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Unks` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Unk1` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Unk2` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Unk3` int(10) UNSIGNED NULL DEFAULT NULL,
  `Unk4` int(10) UNSIGNED NULL DEFAULT NULL,
  `ScriptName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CreatureId` int(10) UNSIGNED NULL DEFAULT NULL,
  `CreatureCount` int(10) UNSIGNED NULL DEFAULT NULL,
  `CreatureSpawnText` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CreatureCooldownMinutes` int(10) UNSIGNED NULL DEFAULT NULL,
  `IsAttackable` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for gameobject_spawns
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_spawns`;
CREATE TABLE `gameobject_spawns`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `ZoneId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `WorldX` int(11) NULL DEFAULT NULL,
  `WorldY` int(11) NULL DEFAULT NULL,
  `WorldZ` int(11) NULL DEFAULT NULL,
  `WorldO` int(11) NULL DEFAULT NULL,
  `DisplayID` int(10) UNSIGNED NULL DEFAULT NULL,
  `Unks` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Unk1` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Unk2` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Unk3` int(10) UNSIGNED NULL DEFAULT NULL,
  `Unk4` int(10) UNSIGNED NULL DEFAULT NULL,
  `VfxState` int(10) UNSIGNED NULL DEFAULT NULL,
  `AllowVfxUpdate` int(10) UNSIGNED NULL DEFAULT NULL,
  `DoorId` int(10) UNSIGNED NULL DEFAULT NULL,
  `TokUnlock` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `SoundId` int(10) UNSIGNED NULL DEFAULT NULL,
  `AlternativeName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for guild_xp
-- ----------------------------
DROP TABLE IF EXISTS `guild_xp`;
CREATE TABLE `guild_xp`  (
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `Xp` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Level`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_attributes
-- ----------------------------
DROP TABLE IF EXISTS `instance_attributes`;
CREATE TABLE `instance_attributes`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Type` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `AttachToTableID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `AttachToID` int(10) UNSIGNED NULL DEFAULT NULL,
  `instance_attributes_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_attributes_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_boss_spawns
-- ----------------------------
DROP TABLE IF EXISTS `instance_boss_spawns`;
CREATE TABLE `instance_boss_spawns`  (
  `Instance_spawns_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Level` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Emote` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ZoneID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `InstanceID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `BossID` int(10) UNSIGNED NULL DEFAULT NULL,
  `SpawnGroupID` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldX` int(11) NULL DEFAULT NULL,
  `WorldY` int(11) NULL DEFAULT NULL,
  `WorldZ` int(11) NULL DEFAULT NULL,
  `WorldO` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Instance_spawns_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_creature_spawns
-- ----------------------------
DROP TABLE IF EXISTS `instance_creature_spawns`;
CREATE TABLE `instance_creature_spawns`  (
  `Instance_spawns_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Level` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Emote` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ZoneID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ConnectedBossID` int(10) UNSIGNED NULL DEFAULT NULL,
  `SpawnGroupID` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldX` int(11) NULL DEFAULT NULL,
  `WorldY` int(11) NULL DEFAULT NULL,
  `WorldZ` int(11) NULL DEFAULT NULL,
  `WorldO` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Instance_spawns_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_encounters
-- ----------------------------
DROP TABLE IF EXISTS `instance_encounters`;
CREATE TABLE `instance_encounters`  (
  `Instance_Boss_ID` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Zone` int(10) UNSIGNED NULL DEFAULT NULL,
  `BossID` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceID` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_encounters_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_encounters_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_event_commands
-- ----------------------------
DROP TABLE IF EXISTS `instance_event_commands`;
CREATE TABLE `instance_event_commands`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceEventID` int(10) UNSIGNED NULL DEFAULT NULL,
  `CommandType` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_event_commands_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_event_commands_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_events
-- ----------------------------
DROP TABLE IF EXISTS `instance_events`;
CREATE TABLE `instance_events`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceID` int(10) UNSIGNED NULL DEFAULT NULL,
  `EncounterID` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceSpawnID` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceObjectID` int(10) UNSIGNED NULL DEFAULT NULL,
  `EventType` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_events_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_events_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_infos
-- ----------------------------
DROP TABLE IF EXISTS `instance_infos`;
CREATE TABLE `instance_infos`  (
  `Entry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ZoneID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `LockoutTimer` int(10) UNSIGNED NULL DEFAULT NULL,
  `TrashRespawnTimer` int(10) UNSIGNED NULL DEFAULT NULL,
  `WardsNeeded` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `exitzonejup` int(10) UNSIGNED NULL DEFAULT NULL,
  `instance_infos_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_infos_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_lockouts
-- ----------------------------
DROP TABLE IF EXISTS `instance_lockouts`;
CREATE TABLE `instance_lockouts`  (
  `InstanceID` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Bosseskilled` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_lockouts_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_lockouts_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_objects
-- ----------------------------
DROP TABLE IF EXISTS `instance_objects`;
CREATE TABLE `instance_objects`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceID` int(10) UNSIGNED NULL DEFAULT NULL,
  `EncounterID` int(10) UNSIGNED NULL DEFAULT NULL,
  `DoorID` int(10) UNSIGNED NULL DEFAULT NULL,
  `GameObjectSpawnID` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `WorldX` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldY` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldZ` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldO` int(10) UNSIGNED NULL DEFAULT NULL,
  `DisplayID` int(10) UNSIGNED NULL DEFAULT NULL,
  `VfxState` int(10) UNSIGNED NULL DEFAULT NULL,
  `instance_objects_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_objects_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_scripts
-- ----------------------------
DROP TABLE IF EXISTS `instance_scripts`;
CREATE TABLE `instance_scripts`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `InstanceID` int(10) UNSIGNED NULL DEFAULT NULL,
  `Script` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_scripts_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_scripts_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_spawn_state_abilities
-- ----------------------------
DROP TABLE IF EXISTS `instance_spawn_state_abilities`;
CREATE TABLE `instance_spawn_state_abilities`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceSpawnStateID` int(10) UNSIGNED NULL DEFAULT NULL,
  `AbilityID` int(10) UNSIGNED NULL DEFAULT NULL,
  `Note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_spawn_state_abilities_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_spawn_state_abilities_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for instance_spawn_states
-- ----------------------------
DROP TABLE IF EXISTS `instance_spawn_states`;
CREATE TABLE `instance_spawn_states`  (
  `Entry` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceSpawnID` int(10) UNSIGNED NULL DEFAULT NULL,
  `InstanceObjectID` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `instance_spawn_states_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`instance_spawn_states_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for item_infos
-- ----------------------------
DROP TABLE IF EXISTS `item_infos`;
CREATE TABLE `item_infos`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Type` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Race` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ModelId` int(10) UNSIGNED NULL DEFAULT NULL,
  `SlotId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Rarity` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Career` int(10) UNSIGNED NULL DEFAULT NULL,
  `Skills` int(10) UNSIGNED NULL DEFAULT NULL,
  `Bind` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Armor` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `SpellId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ItemSet` int(10) UNSIGNED NULL DEFAULT NULL,
  `Dps` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Speed` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `MinRank` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MinRenown` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ObjectLevel` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `UniqueEquiped` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `StartQuest` int(11) NULL DEFAULT NULL,
  `Stats` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Effects` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Crafts` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `SellPrice` int(10) UNSIGNED NULL DEFAULT NULL,
  `SellRequiredItems` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `TalismanSlots` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MaxStack` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Unk27` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ScriptName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TwoHanded` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Craftresult` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `DyeAble` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Salvageable` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `BaseColor1` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `BaseColor2` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `TokUnlock` smallint(5) UNSIGNED NOT NULL,
  `TokUnlock2` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for item_sets
-- ----------------------------
DROP TABLE IF EXISTS `item_sets`;
CREATE TABLE `item_sets`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Unk` tinyint(3) UNSIGNED NOT NULL,
  `ItemsString` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BonusString` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for keep_creatures
-- ----------------------------
DROP TABLE IF EXISTS `keep_creatures`;
CREATE TABLE `keep_creatures`  (
  `KeepId` int(11) NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `OrderId` int(10) UNSIGNED NOT NULL,
  `DestroId` int(10) UNSIGNED NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `KeepLord` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`X`, `Y`, `Z`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for keep_doors
-- ----------------------------
DROP TABLE IF EXISTS `keep_doors`;
CREATE TABLE `keep_doors`  (
  `KeepId` int(11) NOT NULL,
  `Number` tinyint(3) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `GameObjectId` smallint(5) UNSIGNED NOT NULL,
  `DoorId` int(10) UNSIGNED NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `TeleportX1` int(11) NOT NULL,
  `TeleportY1` int(11) NOT NULL,
  `TeleportZ1` int(11) NOT NULL,
  `TeleportO1` int(11) NOT NULL,
  `TeleportX2` int(11) NOT NULL,
  `TeleportY2` int(11) NOT NULL,
  `TeleportZ2` int(11) NOT NULL,
  `TeleportO2` int(11) NOT NULL,
  PRIMARY KEY (`DoorId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for keep_infos
-- ----------------------------
DROP TABLE IF EXISTS `keep_infos`;
CREATE TABLE `keep_infos`  (
  `KeepId` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Realm` tinyint(3) UNSIGNED NOT NULL,
  `Race` tinyint(3) UNSIGNED NOT NULL,
  `DoorCount` tinyint(3) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `RegionId` smallint(5) UNSIGNED NOT NULL,
  `PQuestId` smallint(5) UNSIGNED NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `OilX` int(11) NOT NULL,
  `OilY` int(11) NOT NULL,
  `OilZ` int(11) NOT NULL,
  `OilO` int(11) NOT NULL,
  `OilOuterX` int(11) NOT NULL,
  `OilOuterY` int(11) NOT NULL,
  `OilOuterZ` int(11) NOT NULL,
  `OilOuterO` int(11) NOT NULL,
  `RamX` int(11) NOT NULL,
  `RamY` int(11) NOT NULL,
  `RamZ` int(11) NOT NULL,
  `RamO` int(11) NOT NULL,
  `RamOuterX` int(11) NOT NULL,
  `RamOuterY` int(11) NOT NULL,
  `RamOuterZ` int(11) NOT NULL,
  `RamOuterO` int(11) NOT NULL,
  PRIMARY KEY (`KeepId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for loot_group_butchering
-- ----------------------------
DROP TABLE IF EXISTS `loot_group_butchering`;
CREATE TABLE `loot_group_butchering`  (
  `CreatureSubType` tinyint(3) UNSIGNED NOT NULL,
  `ItemID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`CreatureSubType`, `ItemID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for loot_group_items
-- ----------------------------
DROP TABLE IF EXISTS `loot_group_items`;
CREATE TABLE `loot_group_items`  (
  `LootGroupID` int(10) UNSIGNED NULL DEFAULT NULL,
  `ItemID` int(10) UNSIGNED NULL DEFAULT NULL,
  `MinRank` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MaxRank` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MinRenown` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MaxRenown` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `loot_group_items_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`loot_group_items_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for loot_groups
-- ----------------------------
DROP TABLE IF EXISTS `loot_groups`;
CREATE TABLE `loot_groups`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `DropEvent` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `CreatureID` int(10) UNSIGNED NULL DEFAULT NULL,
  `CreatureSubType` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `DropChance` float NULL DEFAULT NULL,
  `DropCount` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ReqGroupUsable` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ReqActiveQuest` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `SpecificZone` smallint(5) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mount_infos
-- ----------------------------
DROP TABLE IF EXISTS `mount_infos`;
CREATE TABLE `mount_infos`  (
  `Id` int(10) UNSIGNED NOT NULL,
  `Entry` int(10) UNSIGNED NOT NULL,
  `Speed` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  UNIQUE INDEX `Entry`(`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pet_mastery_modifiers
-- ----------------------------
DROP TABLE IF EXISTS `pet_mastery_modifiers`;
CREATE TABLE `pet_mastery_modifiers`  (
  `UUID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CareerLine` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PrimaryValue` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MasteryTree` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PointStart` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PointEnd` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `MasteryModifierPercent` float NULL DEFAULT NULL,
  `MasteryModifierAddition` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Active` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pet_stat_override
-- ----------------------------
DROP TABLE IF EXISTS `pet_stat_override`;
CREATE TABLE `pet_stat_override`  (
  `UUID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CareerLine` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PrimaryValue` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `SecondaryValue` float NULL DEFAULT NULL,
  `Active` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`UUID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pquest_info
-- ----------------------------
DROP TABLE IF EXISTS `pquest_info`;
CREATE TABLE `pquest_info`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `PinX` int(10) UNSIGNED NOT NULL,
  `PinY` int(10) UNSIGNED NOT NULL,
  `ChapterId` int(10) UNSIGNED NOT NULL,
  `PQAreaId` tinyint(3) UNSIGNED NOT NULL,
  `TokDiscovered` int(10) UNSIGNED NOT NULL,
  `TokUnlocked` int(10) UNSIGNED NOT NULL,
  `GoldChestWorldX` int(11) NOT NULL,
  `GoldChestWorldY` int(11) NOT NULL,
  `GoldChestWorldZ` int(11) NOT NULL,
  `PQType` tinyint(3) UNSIGNED NOT NULL,
  `PQDifficult` tinyint(3) UNSIGNED NOT NULL,
  `Chapter` tinyint(3) UNSIGNED NOT NULL,
  `PQTier` tinyint(3) UNSIGNED NOT NULL,
  `PQCraftingBag` tinyint(3) UNSIGNED NOT NULL,
  `SoundPQEnd` int(10) UNSIGNED NOT NULL,
  `RespawnID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pquest_loot
-- ----------------------------
DROP TABLE IF EXISTS `pquest_loot`;
CREATE TABLE `pquest_loot`  (
  `ItemID` int(10) UNSIGNED NOT NULL,
  `Career` int(10) UNSIGNED NOT NULL,
  `Chapter` tinyint(3) UNSIGNED NOT NULL,
  `Bag` tinyint(3) UNSIGNED NOT NULL,
  `PQTier` tinyint(3) UNSIGNED NOT NULL,
  `PQType` tinyint(3) UNSIGNED NOT NULL,
  `PQEntry` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ItemID`, `PQTier`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pquest_loot_crafting
-- ----------------------------
DROP TABLE IF EXISTS `pquest_loot_crafting`;
CREATE TABLE `pquest_loot_crafting`  (
  `PQCraftingBag_ID` tinyint(3) UNSIGNED NOT NULL,
  `ItemID` int(10) UNSIGNED NOT NULL,
  `Count` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`PQCraftingBag_ID`, `ItemID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pquest_objectives
-- ----------------------------
DROP TABLE IF EXISTS `pquest_objectives`;
CREATE TABLE `pquest_objectives`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `Entry` int(10) UNSIGNED NOT NULL,
  `StageName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `Objective` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Count` smallint(5) UNSIGNED NOT NULL,
  `Time` smallint(5) UNSIGNED NOT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ObjectId` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ObjectId2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ObjectId3` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ObjectId4` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TokCompleted` int(10) UNSIGNED NOT NULL,
  `NoRespawn` tinyint(3) UNSIGNED NOT NULL,
  `SoundId` int(10) UNSIGNED NOT NULL,
  `SoundDelay` int(10) UNSIGNED NOT NULL,
  `SoundIteration` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pquest_spawns
-- ----------------------------
DROP TABLE IF EXISTS `pquest_spawns`;
CREATE TABLE `pquest_spawns`  (
  `pquest_spawns_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Entry` int(10) UNSIGNED NOT NULL,
  `Objective` int(10) UNSIGNED NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `WorldX` int(11) NOT NULL,
  `WorldY` int(11) NOT NULL,
  `WorldZ` int(11) NOT NULL,
  `WorldO` int(11) NOT NULL,
  `Emote` tinyint(3) UNSIGNED NOT NULL,
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `SoundId` int(10) UNSIGNED NULL DEFAULT NULL,
  `VfxState` int(10) UNSIGNED NULL DEFAULT NULL,
  `AllowVfxUpdate` int(10) UNSIGNED NULL DEFAULT NULL,
  `Unks` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Unk3` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`pquest_spawns_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quests
-- ----------------------------
DROP TABLE IF EXISTS `quests`;
CREATE TABLE `quests`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `OnCompletionQuest` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ProgressText` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Particular` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Xp` int(10) UNSIGNED NOT NULL,
  `Gold` int(10) UNSIGNED NOT NULL,
  `Given` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Choice` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ChoiceCount` tinyint(3) UNSIGNED NOT NULL,
  `PrevQuest` smallint(5) UNSIGNED NOT NULL,
  `Repeatable` tinyint(3) UNSIGNED NOT NULL,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL,
  `MinRenown` tinyint(3) UNSIGNED NOT NULL,
  `MaxRenown` tinyint(3) UNSIGNED NOT NULL,
  `Active` tinyint(3) UNSIGNED NOT NULL,
  `Shareable` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quests_creature_finisher
-- ----------------------------
DROP TABLE IF EXISTS `quests_creature_finisher`;
CREATE TABLE `quests_creature_finisher`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `CreatureID` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quests_creature_starter
-- ----------------------------
DROP TABLE IF EXISTS `quests_creature_starter`;
CREATE TABLE `quests_creature_starter`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `CreatureID` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quests_maps
-- ----------------------------
DROP TABLE IF EXISTS `quests_maps`;
CREATE TABLE `quests_maps`  (
  `Entry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Id` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ZoneId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Icon` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `X` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Y` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Unk` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `When` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `quests_maps_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`quests_maps_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for quests_objectives
-- ----------------------------
DROP TABLE IF EXISTS `quests_objectives`;
CREATE TABLE `quests_objectives`  (
  `Guid` int(11) NOT NULL AUTO_INCREMENT,
  `Entry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ObjType` int(10) UNSIGNED NULL DEFAULT NULL,
  `ObjCount` int(10) UNSIGNED NULL DEFAULT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ObjID` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `PQArea` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `inZones` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `PreviousObj` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Guid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rallypoints
-- ----------------------------
DROP TABLE IF EXISTS `rallypoints`;
CREATE TABLE `rallypoints`  (
  `Id` smallint(5) UNSIGNED NOT NULL,
  `CreatureId` int(10) UNSIGNED NULL DEFAULT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ZoneID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `WorldX` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldY` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldZ` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `WorldO` smallint(5) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for random_names
-- ----------------------------
DROP TABLE IF EXISTS `random_names`;
CREATE TABLE `random_names`  (
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`Name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for renown_infos
-- ----------------------------
DROP TABLE IF EXISTS `renown_infos`;
CREATE TABLE `renown_infos`  (
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `Renown` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Level`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rvr_objects
-- ----------------------------
DROP TABLE IF EXISTS `rvr_objects`;
CREATE TABLE `rvr_objects`  (
  `ModelId` smallint(5) UNSIGNED NOT NULL,
  `Name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Race` tinyint(3) UNSIGNED NOT NULL,
  `MaxInteractionDist` int(10) UNSIGNED NOT NULL,
  `MaxHealth` int(10) UNSIGNED NOT NULL,
  `BuildTime` int(10) UNSIGNED NOT NULL,
  `ExclusionRadius` float NOT NULL,
  PRIMARY KEY (`ModelId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for scenario_infos
-- ----------------------------
DROP TABLE IF EXISTS `scenario_infos`;
CREATE TABLE `scenario_infos`  (
  `ScenarioId` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL,
  `MinPlayers` tinyint(3) UNSIGNED NOT NULL,
  `MaxPlayers` tinyint(3) UNSIGNED NOT NULL,
  `Type` int(11) NOT NULL,
  `Tier` int(11) NOT NULL,
  `MapId` smallint(5) UNSIGNED NOT NULL,
  `KillPointScore` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `RewardScaler` float NOT NULL,
  `DeferKills` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Enabled` tinyint(3) UNSIGNED NOT NULL,
  `QueueType` int(11) NOT NULL,
  PRIMARY KEY (`ScenarioId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for scenario_objects
-- ----------------------------
DROP TABLE IF EXISTS `scenario_objects`;
CREATE TABLE `scenario_objects`  (
  `ScenarioId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Identifier` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ObjectiveName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ProtoEntry` int(10) UNSIGNED NULL DEFAULT NULL,
  `Type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PointGain` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PointOverTimeGain` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `WorldPosX` int(11) NULL DEFAULT NULL,
  `WorldPosY` int(11) NULL DEFAULT NULL,
  `PosZ` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Heading` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `CaptureObjectiveText` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CaptureObjectiveDescription` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `HoldObjectiveText` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `HoldObjectiveDescription` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `CaptureAnnouncement` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `scenario_objects_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`scenario_objects_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for timedannounces
-- ----------------------------
DROP TABLE IF EXISTS `timedannounces`;
CREATE TABLE `timedannounces`  (
  `SenderName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `Message` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `ZoneId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Type` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `NextTime` int(11) NULL DEFAULT NULL,
  `timedannounces_ID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`timedannounces_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tok_bestary
-- ----------------------------
DROP TABLE IF EXISTS `tok_bestary`;
CREATE TABLE `tok_bestary`  (
  `Creature_Sub_Type` smallint(5) UNSIGNED NOT NULL,
  `Bestary_ID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Kill1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kill25` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kill100` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kill1000` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kill10000` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Kill100000` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Creature_Sub_Type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tok_infos
-- ----------------------------
DROP TABLE IF EXISTS `tok_infos`;
CREATE TABLE `tok_infos`  (
  `Entry` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Xp` int(10) UNSIGNED NULL DEFAULT NULL,
  `Section` int(10) UNSIGNED NULL DEFAULT NULL,
  `Index` int(10) UNSIGNED NULL DEFAULT NULL,
  `Flag` int(10) UNSIGNED NULL DEFAULT NULL,
  `EventName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Rewards` int(10) UNSIGNED NULL DEFAULT NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for vendor_items
-- ----------------------------
DROP TABLE IF EXISTS `vendor_items`;
CREATE TABLE `vendor_items`  (
  `VendorId` smallint(5) UNSIGNED NOT NULL,
  `ItemId` int(10) UNSIGNED NOT NULL,
  `Price` int(10) UNSIGNED NOT NULL,
  `ReqTokUnlock` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `ReqGuildlvl` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `ReqItems` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`VendorId`, `ItemId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for waypoints
-- ----------------------------
DROP TABLE IF EXISTS `waypoints`;
CREATE TABLE `waypoints`  (
  `GUID` int(11) NOT NULL AUTO_INCREMENT,
  `CreatureSpawnGUID` int(10) UNSIGNED NOT NULL,
  `GameObjectSpawnGUID` int(10) UNSIGNED NOT NULL,
  `X` smallint(5) UNSIGNED NOT NULL,
  `Y` smallint(5) UNSIGNED NOT NULL,
  `Z` smallint(5) UNSIGNED NOT NULL,
  `O` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Speed` smallint(5) UNSIGNED NOT NULL,
  `EmoteOnStart` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `EmoteOnEnd` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `WaitAtEndMS` int(10) UNSIGNED NULL DEFAULT NULL,
  `EquipOnStart` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `EquipOnEnd` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `TextOnStart` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `TextOnEnd` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `NextWaypointGUID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`GUID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for world_settings
-- ----------------------------
DROP TABLE IF EXISTS `world_settings`;
CREATE TABLE `world_settings`  (
  `SettingId` int(11) NOT NULL AUTO_INCREMENT,
  `Setting` int(11) NULL DEFAULT NULL,
  `Description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`SettingId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for xp_infos
-- ----------------------------
DROP TABLE IF EXISTS `xp_infos`;
CREATE TABLE `xp_infos`  (
  `Level` tinyint(3) UNSIGNED NOT NULL,
  `Xp` int(10) UNSIGNED NULL DEFAULT NULL,
  `Adv1` int(11) NULL DEFAULT NULL,
  `Adv2` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Level`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for zone_areas
-- ----------------------------
DROP TABLE IF EXISTS `zone_areas`;
CREATE TABLE `zone_areas`  (
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `AreaName` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `AreaId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Realm` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `PieceId` tinyint(3) UNSIGNED NOT NULL,
  `OrderInfluenceId` int(10) UNSIGNED NULL DEFAULT NULL,
  `DestroInfluenceId` int(10) UNSIGNED NULL DEFAULT NULL,
  `TokExploreEntry` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `OrderRespawnId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `DestroRespawnId` smallint(5) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`ZoneId`, `PieceId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for zone_infos
-- ----------------------------
DROP TABLE IF EXISTS `zone_infos`;
CREATE TABLE `zone_infos`  (
  `ZoneId` smallint(5) UNSIGNED NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL,
  `Type` int(11) NOT NULL,
  `Tier` int(11) NOT NULL,
  `Pairing` tinyint(3) UNSIGNED NOT NULL,
  `Price` smallint(5) UNSIGNED NOT NULL,
  `Region` smallint(5) UNSIGNED NOT NULL,
  `OffX` int(11) NOT NULL,
  `OffY` int(11) NOT NULL,
  `Collision` tinyint(3) UNSIGNED NOT NULL,
  `Illegal` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`ZoneId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for zone_jumps
-- ----------------------------
DROP TABLE IF EXISTS `zone_jumps`;
CREATE TABLE `zone_jumps`  (
  `Entry` int(10) UNSIGNED NOT NULL,
  `ZoneID` smallint(5) UNSIGNED NOT NULL,
  `WorldX` int(10) UNSIGNED NOT NULL,
  `WorldY` int(10) UNSIGNED NOT NULL,
  `WorldZ` smallint(5) UNSIGNED NOT NULL,
  `WorldO` smallint(5) UNSIGNED NOT NULL,
  `Type` tinyint(3) UNSIGNED NOT NULL,
  `Enabled` tinyint(3) UNSIGNED NOT NULL,
  `InstanceID` smallint(5) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`Entry`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for zone_respawns
-- ----------------------------
DROP TABLE IF EXISTS `zone_respawns`;
CREATE TABLE `zone_respawns`  (
  `RespawnID` int(11) NOT NULL AUTO_INCREMENT,
  `ZoneID` int(11) NOT NULL,
  `Realm` tinyint(3) UNSIGNED NOT NULL,
  `PinX` smallint(5) UNSIGNED NOT NULL,
  `PinY` smallint(5) UNSIGNED NOT NULL,
  `PinZ` smallint(5) UNSIGNED NOT NULL,
  `WorldO` smallint(5) UNSIGNED NOT NULL,
  `InZoneID` int(11) NOT NULL,
  PRIMARY KEY (`RespawnID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for zone_taxis
-- ----------------------------
DROP TABLE IF EXISTS `zone_taxis`;
CREATE TABLE `zone_taxis`  (
  `ZoneID` smallint(5) UNSIGNED NOT NULL,
  `RealmID` tinyint(3) UNSIGNED NOT NULL,
  `WorldX` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldY` int(10) UNSIGNED NULL DEFAULT NULL,
  `WorldZ` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `WorldO` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `Tier` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `Enable` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`ZoneID`, `RealmID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
