USE [Rappelz_Logs]
GO
/****** Object:  StoredProcedure [dbo].[uspSchedule_TruncateSystemLogs]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspSchedule_TruncateSystemLogs]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateUndergroundMazePlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_UpdateUndergroundMazePlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateStoryDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_UpdateStoryDungeonPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateHeroCreatureCardShopRandomProoductLog_Purchase]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_UpdateHeroCreatureCardShopRandomProoductLog_Purchase]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateGoldDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_UpdateGoldDungeonPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateExpDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_UpdateExpDungeonPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWorkQueueLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWorkQueueLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWorkLogEntry]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWorkLogEntry]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWorkLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWorkLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarMemoryMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryDisQualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarMemoryDisQualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarMemoryCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCompletionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarMemoryCompletionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarMemoryCompletionMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarMemoryCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarehouseSlotExtendLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddWarehouseSlotExtendLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddVipLevelRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddVipLevelRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddVipLevelRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddVipLevelRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddUndergroundMazePlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddUndergroundMazePlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTradeShipMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipMemberDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTradeShipMemberDisqualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTradeShipCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTradeShipCompletionMemberRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCompletionMemberAdditionalRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTradeShipCompletionMemberAdditionalRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTradeShipCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTodayMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTodayMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTodayMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddTodayMissionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSupplySupportQuestStartLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSupplySupportQuestStartLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSupplySupportQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSupplySupportQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSupplySupportQuestCartDestructionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSupplySupportQuestCartDestructionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSubGearQualityUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSubGearQualityUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSubGearLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSubGearLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSubGearGradeUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSubGearGradeUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddStoryDungeonPlayRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddStoryDungeonPlayRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddStoryDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddStoryDungeonPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddStaminaBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddStaminaBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSoulCoveterRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSoulCoveterRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSoulCoveterRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSoulCoveterRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSimpleShopSellLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSimpleShopSellLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSimpleShopSellDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSimpleShopSellDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSimpleShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSimpleShopProductBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSeriesMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSeriesMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSeriesMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSeriesMissionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSecretLetterQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddSecretLetterQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimStepCompletionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimStepCompletionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimStepCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimStepCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimObjectRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimObjectRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimDisqualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRankRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRankRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRankRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddRankRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddPurchaseProvideCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddPurchaseProvideCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddPickBoxItemUseDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddPickBoxItemUseDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarRerwardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarRerwardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarRankingRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarNationPowerReward]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarNationPowerReward]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarHeroTransmissionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarHeroTransmissionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarHeroObjectiveRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarHeroObjectiveRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarDeclarationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarDeclarationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarConvergingAttackLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarConvergingAttackLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarCallLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarCallLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarAllianceRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationWarAllianceRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationNoblesseAppointmentLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationNoblesseAppointmentLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationDonationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationConnectionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationConnectionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationAllianceLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationAllianceLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationAllianceBrokenLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddNationAllianceBrokenLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddMysteryBoxQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddMysteryBoxQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddMainGearBoxItemUseDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddMainGearBoxItemUseDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddLevelUpRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddLevelUpRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddLevelUpRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddLevelUpRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddLevelRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddLevelRankingRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddItemUseLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddItemUseLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddItemCompositionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddItemCompositionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInventorySlotExtendLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInventorySlotExtendLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInfiniteWarMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInfiniteWarDisqualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCompletionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCompletionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCompletionMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHonorShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHonorShopProductBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHolyWarQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHolyWarQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWisdomTempleRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWisdomTempleRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWisdomTempleRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWisdomTempleRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingOpenLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWingOpenLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingEnchantLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWingEnchantLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestRoundRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestRoundRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestRoundCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestRoundCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestRoundAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestRoundAcceptanceLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestImmediateCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestImmediateCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeekendRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeekendRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeekendRewardItemRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroWeekendRewardItemRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTrueHeroQuestStepRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTrueHeroQuestStepRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTrueHeroQuestStartLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTrueHeroQuestStartLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTrueHeroQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTrueHeroQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTitleActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTitleActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTitleAcquiredLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTitleAcquiredLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTaskConsignmentLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTaskConsignmentLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestAcceptanceLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestAbandonmentLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestAbandonmentLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubGearSoulstoneLevelSetActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroSubGearSoulstoneLevelSetActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroStaminaRecoveryLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroStaminaRecoveryLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroSkillLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRookieGiftRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRookieGiftRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRookieGiftRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRookieGiftRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRevivalLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRevivalLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRetrievalLogs]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRetrievalLogs]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRetrievalLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRetrievalLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRetrievalDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRetrievalDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRechargeEventRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRechargeEventRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRechargeEventRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRechargeEventRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRankPassiveSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRankPassiveSkillLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRankActiveSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroRankActiveSkillLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProspectQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroProspectQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProspectQuestRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroProspectQuestRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProofOfValorRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroProofOfValorRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProofOfValorRefreshLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroProofOfValorRefreshLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroPresentLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroPresentLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroPotionAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroPotionAttrLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOsirisRoomRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOsirisRoomRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOrdealQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOrdealQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOrdealQuestMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOrdealQuestMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpenGiftRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOpenGiftRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpenGiftRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOpenGiftRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpen7DayEventRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOpen7DayEventRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpen7DayEventRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOpen7DayEventRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpen7DayEventBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroOpen7DayEventBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroNpcShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroNpcShopProductBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountPotionAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMountPotionAttrLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMountLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountGearRefinementLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMountGearRefinementLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountGearPickBoxMakingLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMountGearPickBoxMakingLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountAwakeningLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMountAwakeningLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMoneyBuffUsedLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMoneyBuffUsedLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearRefinementLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMainGearRefinementLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearRefinementDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMainGearRefinementDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearRefinementApplicationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMainGearRefinementApplicationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearEnchantLevelSetActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMainGearEnchantLevelSetActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearDisassembleLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMainGearDisassembleLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearDisassembleDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroMainGearDisassembleDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroLimitationGiftRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroLimitationGiftRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroLimitationGiftReawrdDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroLimitationGiftReawrdDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroJobChangeQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroJobChangeQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroJobChangeLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroJobChangeLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroItemLuckyShopPickLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroItemLuckyShopPickLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroItemLuckyShopPickDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroItemLuckyShopPickDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroGuildSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroGuildSkillLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFirstChargeEventRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroFirstChargeEventRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFirstChargeEventRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroFirstChargeEventRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFearAltarHalidomElementalRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroFearAltarHalidomElementalRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFearAltarHalidomCollectionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroFearAltarHalidomCollectionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDiaShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDiaShopProductBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestRefreshLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestRefreshLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestRefreshDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestRefreshDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestImmediateCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestImmediateCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestAbandonLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestAbandonLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreauteCardLuckyShopPickDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreauteCardLuckyShopPickDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureVariationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureVariationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureVariationDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureVariationDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureStatusUpdateLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureStatusUpdateLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureSkillSlotOpenLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureSkillSlotOpenLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureReleaseLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureReleaseLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureReleaseDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureReleaseDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureRearingLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureRearingLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureInjectionRetrievalLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureInjectionRetrievalLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureInjectionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureInjectionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureFarmQuestMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureFarmQuestMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationSkillLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationSkillLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationBaseAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationBaseAttrLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationAdditionalAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationAdditionalAttrLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCompositionSkillLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCompositionSkillLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCompositionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCompositionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCompositionDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCompositionDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardShopRandomProoductLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardShopRandomProoductLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardShopLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardShopLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardShopFixedProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardShopFixedProductBuyLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardLuckyShopPickLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardLuckyShopPickLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardDisassembleLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardDisassembleLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreaturCardCompositionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCreaturCardCompositionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeEnchantLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCostumeEnchantLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeEffectApplicationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCostumeEffectApplicationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeCollectionShuffleLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCostumeCollectionShuffleLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeCollectionActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCostumeCollectionActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeAcquisitionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroCostumeAcquisitionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroContinentEliteMonsterKillLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroContinentEliteMonsterKillLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConstellationStepOpenLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroConstellationStepOpenLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConstellationActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroConstellationActivationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroChargeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroChargeEventMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroChargeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroChargeEventMissionRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBlessingSendingLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroBlessingSendingLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBlessingReceivingLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroBlessingReceivingLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyStartLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroBiographyStartLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroBiographyRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyReawrdLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroBiographyReawrdLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroBiographyQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroArtifactLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroArtifactLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroArtifactLevelUpDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroArtifactLevelUpDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroAccomplishmentRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeroAccomplishmentRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeoMainGearEnchantLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddHeoMainGearEnchantLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildWeeklyObjectiveLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildWeeklyObjectiveLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildSupplySupportQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildSupplySupportQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildSupplySupportQuestExtraRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildSupplySupportQuestExtraRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildInvitationAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildInvitationAcceptanceLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildHuntingQuestMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildHuntingQuestMissionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildHuntingDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildHuntingDonationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildHuntingDonationCompletionReawrdLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildHuntingDonationCompletionReawrdLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFoodWarehouseStockLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildFoodWarehouseStockLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFoodWarehouseRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildFoodWarehouseRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFoodWarehouseCollectionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildFoodWarehouseCollectionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFarmQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildFarmQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildDonationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDailyObjectiveRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildDailyObjectiveRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDailyObjectiveLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildDailyObjectiveLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDailyItemRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildDailyItemRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildBuildingLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildBuildingLevelUpLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildBanishmentLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildBanishmentLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAppointmentLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildAppointmentLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildApplicationAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildApplicationAcceptanceLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarSpellInjectionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildAltarSpellInjectionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildAltarRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildAltarDonationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarDefenseLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildAltarDefenseLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarCompletionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuildAltarCompletionRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuidDailyObjectiveRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGuidDailyObjectiveRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGoldDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddGoldDungeonPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFishingQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFishingQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldOfHonorRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFieldOfHonorRankingRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldOfHonorRankingRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFieldOfHonorRankingRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldBossRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFieldBossRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldBossKillLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFieldBossKillLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldBossCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFieldBossCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFearAltarMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarHalidomAcquisitionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFearAltarHalidomAcquisitionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFearAltarDisqualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFearAltarCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFearAltarCompletionMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddFearAltarCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddExpDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddExpDungeonPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDragonNestMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestMemberDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDragonNestMemberDisqualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDragonNestCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDragonNestCompletionMemberRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDragonNestCompletionMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDragonNestCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDimensionRaidQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDimensionRaidQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDailyAttendRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddDailyAttendRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddContinentEliteMonsterSpawnLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddContinentEliteMonsterSpawnLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddConnectionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddConnectionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddChattingMessageLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddChattingMessageLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddChattingLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddChattingLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddBountyHunterQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddBountyHunterQuestRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAttainmentEntryRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAttainmentEntryRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAttainmentEntryRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAttainmentEntryRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddArtifactRoomPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddArtifactRoomPlayLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddArtifactRoomInitLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddArtifactRoomInitLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAnkouTombMemberLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombMemberDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAnkouTombMemberDisqualificationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAnkouTombCreationLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAnkouTombCompletionMemberRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCompletionMemberAdditionalRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAnkouTombCompletionMemberAdditionalRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAnkouTombCompletionLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAncientRelicRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAncientRelicRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAncientRelicRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAncientRelicRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAchievementRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAchievementRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAchievementRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAchievementRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAccountLoginLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAccountLoginLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAccessRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAccessRewardLog]
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAccessRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspPGApi_AddAccessRewardDetailLog]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_AddClientLog]    Script Date: 2023/4/7 11:49:05 ******/
DROP PROCEDURE [dbo].[uspApi_AddClientLog]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_AddClientLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=============================================================================
  설  명 : 클라이언트 로그 등록
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspApi_AddClientLog]
	@nServiceId		int,
	@sAppId			varchar(50),
	@sUdid			varchar(50),
	@sBrand			nvarchar(20),
	@sModel			nvarchar(20),
	@sOsName		nvarchar(20),
	@sOsVersion		nvarchar(20),
	@sVersion		nvarchar(20),
	@sVersionCode	nvarchar(20),
	@sLanguage		nvarchar(20),
	@sCountry		nvarchar(20),
	@sCpuUsage		nvarchar(50),
	@sFreeMemory	nvarchar(50),
	@sContent		nvarchar(max),
	@sIpAddress		varchar(20)
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO l_ClientLog(serviceId, appId, udid, brand, model, osName, osVersion, version, versionCode, language, country, cpuUsage, freeMemory, content, ipAddress)
	VALUES(@nServiceId, @sAppId, @sUdid, @sBrand, @sModel, @sOsName, @sOsVersion, @sVersion, @sVersionCode, @sLanguage, @sCountry, @sCpuUsage, @sFreeMemory, @sContent, @sIpAddress)
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAccessRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAccessRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON

	INSERT 
	  INTO t_AccessRewardDetailLog (detailLogId, logId, itemId, itemCount, itemOwned)
	VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAccessRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAccessRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@fAccessTime		float,
	@nEntryId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT
	  INTO t_AccessRewardLog (logId, heroId, accessTime, entryId, regTime)
	VALUES (@logId, @heroId, @fAccessTime, @nEntryId, @regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAccountLoginLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAccountLoginLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@sIp		varchar(200),
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO dbo.t_AccountLoginLog (logId, accountId, ip, regTime)
	  VALUES (@logId, @accountId, @sIp, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAchievementRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAchievementRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AchievementRewardDetailLog(detailLogId, logId, itemId, itemCount, itemOwned)
		 VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
		 
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAchievementRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAchievementRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nAchievementPoint	int,
	@nRewardNo			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AchievementRewardLog(logId, heroId, achievementPoint, rewardNo, regTime)
		 VALUES (@logId, @heroId, @nAchievementPoint, @nRewardNo, @regTime)
		 
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAncientRelicRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAncientRelicRewardDetailLog]
	@detailLogId	uniqueidentifier,
	@logId			uniqueidentifier,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AncientRelicRewardDetailLog (detailLogId, logId, itemId, itemCount, itemOwned)
		VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAncientRelicRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAncientRelicRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@nStep			int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AncientRelicRewardLog (logId, heroId, instanceId, step, regTime)
		VALUES (@logId, @heroId, @instanceId, @nStep, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAnkouTombCompletionLog]
	@instanceId		uniqueidentifier,
	@nStatus		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AnkouTombCompletionLog (instanceId, status, regTime)
		VALUES (@instanceId, @nStatus, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCompletionMemberAdditionalRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAnkouTombCompletionMemberAdditionalRewardLog]
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardExpType		int,
	@lnRewardExp		bigint,
	@nUsedUnOwnDia		int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AnkouTombCompletionMemberAdditionalRewardLog (
			instanceId,
			heroId,
			rewardExpType,
			rewardExp,
			usedUnOwnDia)
		VALUES (
			@instanceId,
			@heroId,
			@nRewardExpType,
			@lnRewardExp,
			@nUsedUnOwnDia)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAnkouTombCompletionMemberRewardLog]
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@lnRewardGold		bigint,
	@lnRewardExp		bigint,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AnkouTombCompletionMemberRewardLog (
			instanceId,
			heroId,
			rewardGold,
			rewardExp,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@instanceId,
			@heroId,
			@lnRewardGold,
			@lnRewardExp,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAnkouTombCreationLog]
	@instanceId		uniqueidentifier,
	@nDifficulty	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AnkouTombCreationLog (instanceId, difficulty, regTime)
		VALUES (@instanceId, @nDifficulty, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombMemberDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAnkouTombMemberDisqualificationLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AnkouTombMemberDisqualificationLog (instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAnkouTombMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAnkouTombMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nLevel			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AnkouTombMemberLog (instanceId, heroId, level)
		VALUES (@instanceId, @heroId, @nLevel)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddArtifactRoomInitLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddArtifactRoomInitLog]
	@logId		uniqueidentifier,
	@heroId		uniqueidentifier,
	@nBestFloor int,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ArtifactRoomInitLog (logId, heroId, bestFloor, regTime)
		VALUES (@logId, @heroId, @nBestFloor, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddArtifactRoomPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddArtifactRoomPlayLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nType			int,
	@nOldFloor		int,
	@nFloor			int,
	@nBestFloor		int,
	@nUsedOwnDia	int,
	@nUsedUnOwnDia	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ArtifactRoomPlayLog (
			logId,
			heroId, 
			type,
			oldFloor,
			floor,
			bestFloor,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nType,
			@nOldFloor,
			@nFloor,
			@nBestFloor,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAttainmentEntryRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAttainmentEntryRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nType				int,
	@heroMainGearId		uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@nContentId			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_AttainmentEntryRewardDetailLog(
			detailLogId, 
			logId, 
			type, 
			heroMainGearId, 
			itemid, 
			itemCount, 
			itemOwned, 
			contentId)
		 VALUES (
			@detailLogId,
			@logId,
			@nType,
			@heroMainGearId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@nContentId)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddAttainmentEntryRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddAttainmentEntryRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nEntryNo			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_AttainmentEntryRewardLog(logId, heroId, entryNo, regTime)
	VALUES (@logId, @heroId, @nEntryNo, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddBountyHunterQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddBountyHunterQuestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@instanceId			uniqueidentifier,
	@nLevel				int,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_BountyHunterQuestRewardLog (
			logId, 
			heroId, 
			instanceId, 
			level, 
			rewardExp, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@instanceId,
			@nLevel,
			@lnRewardExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddChattingLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddChattingLog]
	@logId			uniqueidentifier,
	@nChattingType	int,
	@nLinkType		int,
	@senderId		uniqueidentifier,
	@targetId		uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ChattingLog (logId, chattingType, linkType, senderId, targetId, regTime)
	  VALUES (@logId, @nChattingType, @nLinkType, @senderId, @targetId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddChattingMessageLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddChattingMessageLog]
	@logId		uniqueidentifier,
	@nNo		int,
	@sMessage	nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ChattingMessageLog (logId, no, message)
	  VALUES (@logId, @nNo, @sMessage)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddConnectionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddConnectionLog]
	@logId			uniqueidentifier,
	@nClientCount	int,
	@nHeroCount		int,
	@logTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ConnectionLog (logId, clientCount, heroCount, logTime)
	  VALUES (@logId, @nClientCount, @nHeroCount, @logTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddContinentEliteMonsterSpawnLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddContinentEliteMonsterSpawnLog]
	@logId				uniqueidentifier,
	@nEliteMonsterId	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ContinentEliteMonsterSpawnLog (logId, eliteMonsterId, regTime)
		VALUES (@logId, @nEliteMonsterId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDailyAttendRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDailyAttendRewardLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nDay						int,
	@nDailyRewardItemId			int,
	@nDailyRewardItemCount		int,
	@bDailyRewardItemOwned		bit,
	@nWeekendRewardItemId		int,
	@nWeekendRewardItemCount	int,
	@bWeekendRewardItemOwned	bit,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DailyAttendRewardLog(
			logId, 
			heroId, 
			day, 
			dailyRewardItemId,
			dailyRewardItemCount,
			dailyRewardItemOwned,
			weekendRewardItemId,
			weekendRewardItemCount,
			weekendRewardItemOwned,
			regTime)
		 VALUES (
			@logId, 
			@heroId, 
			@nDay, 
			@nDailyRewardItemId, 
			@nDailyRewardItemCount, 
			@bDailyRewardItemOwned, 
			@nWeekendRewardItemId,
			@nWeekendRewardItemCount,
			@bWeekendRewardItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDimensionRaidQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDimensionRaidQuestRewardLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@instanceId					uniqueidentifier,
	@nRewardExploitPoint		int,
	@nAcquiredExploitPoint		int,
	@lnRewardExp				bigint,
	@nItemId					int,
	@nItemCount					int,
	@bItemOwned					bit,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DimensionRaidQuestRewardLog (logId, heroId, instanceId, rewardExploitPoint, acquiredExploitPoint, rewardExp, itemId, itemCount, itemOwned, regTime)
	  VALUES (@logId, @heroId, @instanceId, @nRewardExploitPoint, @nAcquiredExploitPoint, @lnRewardExp, @nItemId, @nItemCount, @bItemOwned, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDragonNestCompletionLog]
	@instanceId				uniqueidentifier,
	@nStatus				int,
	@bAdditionalStepOpened	bit,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DragonNestCompletionLog (
			instanceId,
			status,
			additionalStepOpened,
			regTime)
		VALUES (
			@instanceId,
			@nStatus,
			@bAdditionalStepOpened,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDragonNestCompletionMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DragonNestCompletionMemberLog (instanceId, heroId)
		VALUES (@instanceId, @heroId)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDragonNestCompletionMemberRewardLog]
	@logId				uniqueidentifier,
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nStepNo			int,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DragonNestCompletionMemberRewardLog (
			logId,
			instanceId,
			heroId,
			stepNo,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nStepNo,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDragonNestCreationLog]
	@instanceId		uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DragonNestCreationLog (instanceId, regTime)
		VALUES (@instanceId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestMemberDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDragonNestMemberDisqualificationLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DragonNestMemberDisqualificationLog (instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddDragonNestMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddDragonNestMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nLevel			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_DragonNestMemberLog (instanceId, heroId, level)
		VALUES (@instanceId, @heroId, @nLevel)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddExpDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddExpDungeonPlayLog]
	@logId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nDifficulty	int,
	@nStatus		int,
	@lnRewardExp	bigint,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ExpDungeonPlayLog (
			logId,
			instanceId,
			heroId,
			difficulty,
			status,
			rewardExp,
			regTime)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nDifficulty,
			@nStatus,
			@lnRewardExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFearAltarCompletionLog]
	@instanceId		uniqueidentifier,
	@nStatus		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FearAltarCompletionLog (instanceId, status, regTime)
		VALUES (@instanceId, @nStatus, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFearAltarCompletionMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@lnRewardExp	bigint
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FearAltarCompletionMemberLog (instanceId, heroId, rewardExp)
		VALUES (@instanceId, @heroId, @lnRewardExp)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFearAltarCreationLog]
	@instanceId		uniqueidentifier,
	@nStageId		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FearAltarCreationLog (instanceId, stageId, regTime)
		VALUES (@instanceId, @nStageId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFearAltarDisqualificationLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FearAltarDisqualificationLog (instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarHalidomAcquisitionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFearAltarHalidomAcquisitionLog]
	@logId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nHalidomId		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FearAltarHalidomAcquisitionLog (
			logId,
			instanceId,
			heroId,
			halidomId,
			regTime)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nHalidomId,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFearAltarMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFearAltarMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FearAltarMemberLog (instanceId, heroId)
		VALUES (@instanceId, @heroId)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldBossCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFieldBossCreationLog]
	@logId					uniqueidentifier,
	@lnMonsterInstanceId	bigint,
	@nScheduleId			int,
	@nFieldBossId			int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FieldBossCreationLog (logId, monsterInstanceId, scheduleId, fieldBossId, regTime)
		VALUES (@logId, @lnMonsterInstanceId, @nScheduleId, @nFieldBossId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldBossKillLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFieldBossKillLog]
	@logId					uniqueidentifier,
	@lnMonsterInstanceId	bigint,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FieldBossKillLog (logId, monsterInstanceId, regTime)
		VALUES (@logId, @lnMonsterInstanceId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldBossRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFieldBossRewardLog]
	@detailLogId uniqueidentifier,
	@logId uniqueidentifier,
	@heroId uniqueidentifier,
	@nRewardItemId int,
	@bRewardItemOwned bit,
	@nRewardItemCount int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FieldBossRewardLog (detailLogId, logId, heroId, rewardItemId, rewardItemOwned, rewardItemCount)
		VALUES (@detailLogId, @logId, @heroId, @nRewardItemId, @bRewardItemOWned, @nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldOfHonorRankingRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFieldOfHonorRankingRewardDetailLog]
	@detailLogId	uniqueidentifier,
	@logId			uniqueidentifier,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FieldOfHonorRankingRewardDetailLog (detailLogId, logId, itemId, itemCount, itemOwned, regTime)
		VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFieldOfHonorRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFieldOfHonorRankingRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nRankingNo		int,
	@nRanking		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FieldOfHonorRankingRewardLog (logId, heroId, rankingNo, ranking, regTime)
		VALUES (@logId, @heroId, @nRankingNo, @nRanking, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddFishingQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddFishingQuestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@questDate			date,
	@nQuestCount		int,
	@nBaitItemId		int,
	@nCastingCount		int,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_FishingQuestRewardLog(
			logId, 
			heroId,
			questdate,
			questCount,
			baitItemId,
			castingCount,
			rewardExp,
			regTime) 
		 VALUES (
			@logId,
			@heroId,
			@questDate,
			@nQuestCount,
			@nBaitItemId,
			@nCastingCount,
			@lnRewardExp,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGoldDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGoldDungeonPlayLog]
	@logId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nDifficulty	int,
	@nStatus		int,
	@lnRewardGold	bigint,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GoldDungeonPlayLog (
			logId,
			instanceId,
			heroId,
			difficulty,
			status,
			rewardGold,
			regTime)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nDifficulty,
			@nStatus,
			@lnRewardGold,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuidDailyObjectiveRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuidDailyObjectiveRewardLog]
	@logId					uniqueidentifier,
	@guildId				uniqueidentifier,
	@date					date,
	@heroId					uniqueidentifier,
	@nRewardNo				int,
	@nCompletionMemberCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildDailyObjectiveRewardLog(
			logId,
			guildId,
			date,
			heroId,
			rewardNo,
			completionMemberCount,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@date,
			@heroId,
			@nRewardNo,
			@nCompletionMemberCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarCompletionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildAltarCompletionRewardLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@lnRewardExp					bigint,
	@nRewardGuildContributionPoint	int,
	@nRewardGuildFund				int,
	@nRewardGuildBuildingPoint		int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildAltarCompletionRewardLog(
			logId,
			guildId,
			heroId,
			rewardExp,
			rewardGuildContributionPoint,
			rewardGuildFund,
			rewardGuildBuildingPoint,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@lnRewardExp,
			@nRewardGuildContributionPoint,
			@nRewardGuildFund,
			@nRewardGuildBuildingPoint,
			@regTime);
			
	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarDefenseLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildAltarDefenseLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nLevel				int,
	@nGuildLevel		int,
	@nRewardMoralPoint	int,
	@nAddedMoralPoint	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildAltarDefenseLog (
			logId,
			guildId,
			heroId,
			level,
			guildLevel,
			rewardMoralPoint,
			addedMoralPoint,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nLevel,
			@nGuildLevel,
			@nRewardMoralPoint,
			@nAddedMoralPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildAltarDonationLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nUsedGold			int,
	@nRewardMoralPoint	int,
	@nAddedMoralPoint	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildAltarDonationLog (
			logId,
			guildId,
			heroId,
			usedGold,
			rewardMoralPoint,
			addedMoralPoint,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nUsedGold,
			@nRewardMoralPoint,
			@nAddedMoralPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildAltarRewardLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nGuildMoralPoint	int,
	@nGuildLevel		int,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildAltarRewardLog (
			logId,
			guildId,
			heroId,
			guildMoralPoint,
			guildLevel,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nGuildMoralPoint,
			@nGuildLevel,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAltarSpellInjectionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildAltarSpellInjectionLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardMoralPoint	int,
	@nAddedMoralPoint	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildAltarSpellInjectionLog (
			logId,
			guildId,
			heroId,
			rewardMoralPoint,
			addedMoralPoint,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nRewardMoralPoint,
			@nAddedMoralPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildApplicationAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildApplicationAcceptanceLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@acceptanceHeroId	uniqueidentifier,
	@nGuildMemberGrade	int,
	@applicationHeroId	uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildApplicationAcceptanceLog (
			logId,
			guildId,
			acceptanceHeroId,
			guildMemberGrade,
			applicationHeroId,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@acceptanceHeroId,
			@nGuildMemberGrade,
			@applicationHeroId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildAppointmentLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildAppointmentLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@nGuildMemberGrade				int,
	@targetHeroId					uniqueidentifier,
	@nOldTargetHeroGuildMemberGrade	int,
	@nTargetHeroGuildMemberGrade	int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildAppointmentLog (
			logId,
			guildId,
			heroId,
			guildMemberGrade,
			targetHeroId,
			oldTargetHeroGuildMemberGrade,
			targetHeroGuildMemberGrade,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nGuildMemberGrade,
			@targetHeroId,
			@nOldTargetHeroGuildMemberGrade,
			@nTargetHeroGuildMemberGrade,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildBanishmentLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildBanishmentLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@nGuildMemberGrade				int,
	@banishedHeroId					uniqueidentifier,
	@nBanishedHeroGuildMemberGrade	int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildBanishmentLog(
			logId,
			guildId,
			heroId,
			guildMemberGrade,
			banishedHeroId,
			banishedHeroGuildMemberGrade,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nGuildMemberGrade,
			@banishedHeroId,
			@nBanishedHeroGuildMemberGrade,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildBuildingLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildBuildingLevelUpLog]
	@logId					uniqueidentifier,
	@guildId				uniqueidentifier,
	@heroId					uniqueidentifier,
	@nBuildingId			int,
	@nOldLevel				int,
	@nLevel					int,
	@nGuildLobbyLevel		int,
	@nGuildBuildingPoint	int,
	@nUsedGuildFund			int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildBuildingLevelUpLog(
			logId, 
			guildId, 
			heroId, 
			buildingId, 
			oldLevel, 
			level, 
			guildLobbyLevel, 
			guildBuildingPoint, 
			usedGuildFund, 
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nBuildingId,
			@nOldLevel,
			@nLevel,
			@nGuildLobbyLevel,
			@nGuildBuildingPoint,
			@nUsedGuildFund,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildCreationLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildCreationLog(
			logId, 
			guildId, 
			heroId,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDailyItemRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildDailyItemRewardLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildDailyItemRewardLog(
			logId,
			guildId,
			heroId,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDailyObjectiveLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildDailyObjectiveLog]
	@logId					uniqueidentifier,
	@guildId				uniqueidentifier,
	@date					date,
	@nObjectiveContentId	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildDailyObjectiveLog (
			logId,
			guildId,
			date,
			objectiveContentId,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@date,
			@nObjectiveContentId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDailyObjectiveRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildDailyObjectiveRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildDailyObjectiveRewardDetailLog(
			detailLogId, 
			logId, 
			itemId, 
			itemCount, 
			itemOwned)
		 VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildDonationLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@nEntryId						int,
	@lnUsedGold						bigint,
	@nUsedOwnDia					int,
	@nUsedUnOwnDia					int,
	@nRewardGuildContributionPoint	int,
	@nRewardGuildFund				int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildDonationLog(
			logId,
			guildId,
			heroId,
			entryId,
			usedGold,
			usedOwnDia,
			usedUnOwnDia,
			rewardGuildContributionPoint,
			rewardGuildFund,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nEntryId,
			@lnUsedGold,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@nRewardGuildContributionPoint,
			@nRewardGuildFund,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFarmQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildFarmQuestRewardLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@lnRewardExp		bigint,
	@nRewardGuildContributionPoint	int,
	@nRewardGuildBuildingPoint		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildFarmQuestRewardLog (
			logId,
			guildId,
			heroId,
			questInstanceId,
			itemId,
			itemCount,
			itemOwned,
			rewardExp,
			rewardGuildContributionPoint,
			rewardGuildBuildingPoint,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@questInstanceId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@lnRewardExp,
			@nRewardGuildContributionPoint,
			@nRewardGuildBuildingPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFoodWarehouseCollectionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildFoodWarehouseCollectionLog]
	@collectionId	uniqueidentifier,
	@guildId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildFoodWarehouseCollectionLog (
			collectionId,
			guildId,
			heroId,
			regTime)
		 VALUES (
			@collectionId,
			@guildId,
			@heroId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFoodWarehouseRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildFoodWarehouseRewardLog]
	@logId			uniqueidentifier,
	@collectionId	uniqueidentifier,
	@guildId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildFoodWarehouseRewardLog (
			logId,
			collectionId,
			guildId,
			heroId,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		 VALUES (
			@logId,
			@collectionId,
			@guildId,
			@heroId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildFoodWarehouseStockLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildFoodWarehouseStockLog]
	@logId					uniqueidentifier,
	@guildId				uniqueidentifier,
	@heroId					uniqueidentifier,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@nOldLevel				int,
	@nOldExp				int,
	@nLevel					int,
	@nExp					int,
	@lnRewardExp			bigint,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildFoodWarehouseStockLog (
			logId,
			guildId,
			heroId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			oldLevel,
			oldExp,
			level,
			exp,
			rewardExp,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@nOldLevel,
			@nOldExp,
			@nLevel,
			@nExp,
			@lnRewardExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildHuntingDonationCompletionReawrdLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildHuntingDonationCompletionReawrdLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildHuntingDonationCompletionRewardLog(
			logId,
			guildId,
			heroId,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildHuntingDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildHuntingDonationLog]
	@logId					uniqueidentifier,
	@guildId				uniqueidentifier,
	@heroId					uniqueidentifier,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@nRewardItemId			int,
	@nRewardItemCount		int,
	@bRewardItemOwned		bit,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildHuntingDonationLog(
			logId,
			guildId,
			heroId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			rewardItemId,
			rewardItemCount,
			rewardItemOwned,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@nRewardItemId,
			@nRewardItemCount,
			@bRewardItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildHuntingQuestMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildHuntingQuestMissionRewardLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildHuntingQuestMissionRewardLog(
			logId,
			guildId,
			heroId,
			questInstanceId,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@questInstanceId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildInvitationAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildInvitationAcceptanceLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@invitationHeroId	uniqueidentifier,
	@acceptanceHeroId	uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildInvitationAcceptanceLog (
			logId,
			guildId,
			invitationHeroId,
			acceptanceHeroId,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@invitationHeroId,
			@acceptanceHeroId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildMissionRewardLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@missionInstanceId				uniqueidentifier,
	@nMissionId						int,
	@nRewardGuildContributionPoint	int,
	@nRewardGuildFund				int,
	@nRewardGuildBuildingPoint		int,
	@lnRewardExp					bigint,
	@nRewardItemId					int,
	@nRewardItemCount				int,
	@bRewardItemOwned				bit,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildMissionRewardLog(
			logId,
			guildId,
			heroId,
			missionInstanceId,
			missionId,
			rewardGuildContributionPoint,
			rewardGuildFund,
			rewardGuildBuildingPoint,
			rewardExp,
			rewardItemId,
			rewardItemCount,
			rewardItemOwned,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@missionInstanceId,
			@nMissionId,
			@nRewardGuildContributionPoint,
			@nRewardGuildFund,
			@nRewardGuildBuildingPoint,
			@lnRewardExp,
			@nRewardItemId,
			@nRewardItemCount,
			@bRewardItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildSupplySupportQuestExtraRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildSupplySupportQuestExtraRewardLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@questInstanceId				uniqueidentifier,
	@nRewardGuildContributionPoint	int,
	@lnRewardExp					bigint,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildSupplySupportQuestExtraRewardLog (
			logId,
			guildId,
			heroId,
			questInstanceId,
			rewardGuildContributionPoint,
			rewardExp,
			regTime)
		VALUES (
			@logId,
			@guildId,
			@heroId,
			@questInstanceId,
			@nRewardGuildContributionPoint,
			@lnRewardExp,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildSupplySupportQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildSupplySupportQuestRewardLog]
	@logId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@heroId							uniqueidentifier,
	@questInstanceId				uniqueidentifier,
	@nRewardGuildBuildingPoint		int,
	@nRewardGuildFund				int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildSupplySupportQuestRewardLog (
			logId,
			guildId,
			heroId,
			questInstanceId,
			rewardGuildBuildingPoint,
			rewardGuildFund,
			regTime)
		VALUES (
			@logId,
			@guildId,
			@heroId,
			@questInstanceId,
			@nRewardGuildBuildingPoint,
			@nRewardGuildFund,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildWeeklyObjectiveLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildWeeklyObjectiveLog]
	@logId				uniqueidentifier,
	@guildId			uniqueidentifier,
	@nType				int,
	@heroId				uniqueidentifier,
	@nObjectiveId		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildWeeklyObjectiveLog(
			logId,
			guildId,
			type,
			heroId,
			objectiveId,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@nType,
			@heroId,
			@nObjectiveId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildWeeklyObjectiveRewardDetailLog(
			detailLogId,
			logId,
			itemId,
			itemCount,
			itemOwned)
		 VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddGuildWeeklyObjectiveRewardLog]
	@logId					uniqueidentifier,
	@guildId				uniqueidentifier,
	@heroId					uniqueidentifier,
	@nObjectiveId			int,
	@nCompletionMemberCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_GuildWeeklyObjectiveRewardLog(
			logId,
			guildId,
			heroId,
			objectiveId,
			completionMemberCount,
			regTime)
		 VALUES (
			@logId,
			@guildId,
			@heroId,
			@nObjectiveId,
			@nCompletionMemberCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeoMainGearEnchantLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeoMainGearEnchantLog]
	@logId							uniqueidentifier,
	@heroId							uniqueidentifier,
	@heroMainGearId					uniqueidentifier,
	@nOldEnchantLevel				int,
	@nEnchantLevel					int,
	@bOldOwned						bit,
	@bOwned							bit,
	@bIsSuccess						bit,
	@nMaterialItemId				int,
	@nMaterialItemOwnCount			int,
	@nMaterialItemUnOwnCount		int,
	@nPenaltyPreventItemId			int,
	@nPenaltyPreventItemOwnCount	int,
	@nPenaltyPreventItemUnOwnCount	int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMainGearEnchantLog(
			logId, 
			heroId, 
			heroMainGearId, 
			oldEnchantLevel,
			enchantLevel,
			oldOwned,
			owned,
			isSuccess, 
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			penaltyPreventItemId,
			penaltyPreventItemOwnCount,
			penaltyPreventItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@heroMainGearId,
			@nOldEnchantLevel,
			@nEnchantLevel,
			@bOldOwned,
			@bOwned,
			@bIsSuccess,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@nPenaltyPreventItemId,
			@nPenaltyPreventItemOwnCount,
			@nPenaltyPreventItemUnOwnCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroAccomplishmentRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroAccomplishmentRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nAccomplishmentId	int,
	@nRewardItemId		int,
	@nRewardItemCount	int,
	@bRewardItemOwned	bit,
	@regTime			datetimeoffset	
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroAccomplishmentRewardLog (
			logId,
			heroId,
			accomplishmentId,
			rewardItemId,
			rewardItemCount,
			rewardItemOwned,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nAccomplishmentId,
			@nRewardItemId,
			@nRewardItemCount,
			@bRewardItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroArtifactLevelUpDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroArtifactLevelUpDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@heroMainGearId		uniqueidentifier,
	@nExp				int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroArtifactLevelUpDetailLog (
			detailLogId,
			logId,
			heroMainGearId,
			exp)
		VALUES (
			@detailLogId,
			@logId,
			@heroMainGearId,
			@nExp)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroArtifactLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroArtifactLevelUpLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nOldArtifactNo		int,
	@nOldArtifactLevel	int,
	@noldArtifactExp	int,
	@nArtifactNo		int,
	@nArtifactLevel		int,
	@nArtifactExp		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroArtifactLevelUpLog (
			logId,
			heroId,
			oldArtifactNo,
			oldArtifactLevel,
			oldArtifactExp,
			artifactNo,
			artifactLevel,
			artifactExp,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nOldArtifactNo,
			@nOldArtifactLevel,
			@noldArtifactExp,
			@nArtifactNo,
			@nArtifactLevel,
			@nArtifactExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroBiographyQuestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nBiographyId		int,
	@nQuestNo			int,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroBiographyQuestRewardLog (
			logId, 
			heroId, 
			biographyId, 
			questNo, 
			rewardExp, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nBiographyId,
			@nQuestNo,
			@lnRewardExp,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyReawrdLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroBiographyReawrdLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nBiographyId		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroBiographyRewardLog (logId, heroId, biographyId, regTime)
	VALUES (@logId, @heroId, @nBiographyId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroBiographyRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroBiographyRewardDetailLog (
			detailLogId, 
			logId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBiographyStartLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroBiographyStartLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nBiographyId			int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroBiographyStartLog (
			logId, 
			heroId, 
			biographyId, 
			usedItemId, 
			usedItemOwnCount, 
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nBiographyId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBlessingReceivingLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroBlessingReceivingLog]
	@logId			uniqueidentifier,
	@sendingLogId	uniqueidentifier,
	@lnRewardGold	bigint,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroBlessingReceivingLog (logId, sendingLogId, rewardGold, regTime)
	  VALUES (@logId, @sendingLogId, @lnRewardGold, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroBlessingSendingLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroBlessingSendingLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@blessingReceiveHeroId	uniqueidentifier,
	@nTargetLevelId			int,
	@nBlessingId			int,
	@lnUsedGold				bigint,
	@nUsedOwnDia			int,
	@nUsedUnOwnDia			int,
	@nRewardItemId			int,
	@bRewardItemOwned		bit,
	@nRewardItemCount		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroBlessingSendingLog (logId, heroId, blessingReceiveHeroId, targetLevelId, blessingId,
		usedGold, usedOwnDia, usedUnOwnDia, rewardItemId, rewardItemOwned, rewardItemCount, regTime)
	  VALUES (@logId, @heroId, @blessingReceiveHeroId, @nTargetLevelId, @nBlessingId,
		@lnUsedGold, @nUsedOwnDia, @nUsedUnOwnDia, @nRewardItemId, @bRewardItemOwned, @nRewardItemCount, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroChargeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroChargeEventMissionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroChargeEventMissionRewardDetailLog (
			DetailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroChargeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroChargeEventMissionRewardLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@heroId		uniqueidentifier,
	@nEventId	int,
	@nMissionNo	int,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroChargeEventMissionRewardLog (
			logId,
			accountId,
			heroId,
			eventId,
			missionNo,
			regTime)
		VALUES (
			@logId,
			@accountId,
			@heroId,
			@nEventId,
			@nMissionNo,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConstellationActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroConstellationActivationLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nConstellationId	int,
	@nStep				int,
	@nCycle				int,
	@nEntryNo			int,
	@nUsedStarEssense	int,
	@lnUsedGold			bigint,
	@bActivated			bit,
	@nFailPoint			int,
	@regTime			datetimeoffset
AS	
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroConstellationActivationLog (
			logId,
			heroId,
			constellationId,
			step,
			cycle,
			entryNo,
			usedStartEssense,
			usedGold,
			activated,
			failPoint,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nConstellationId,
			@nStep,
			@nCycle,
			@nEntryNo,
			@nUsedStarEssense,
			@lnUsedGold,
			@bActivated,
			@nFailPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConstellationStepOpenLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroConstellationStepOpenLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nConsellationId	int,
	@nStep				int,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroConstellationStepOpenLog (
			logId,
			heroId, 
			constellationId,
			step,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nConsellationId,
			@nStep,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroConsumeEventMissionRewardDetailLog (
			DetailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroConsumeEventMissionRewardLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@heroId		uniqueidentifier,
	@nEventId	int,
	@nMissionNo	int,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroConsumeEventMissionRewardLog (
			logId,
			accountId,
			heroId,
			eventId,
			missionNo,
			regTime)
		VALUES (
			@logId,
			@accountId,
			@heroId,
			@nEventId,
			@nMissionNo,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroContinentEliteMonsterKillLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroContinentEliteMonsterKillLog]
	@killLogId		uniqueidentifier,
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroContinentEliteMonsterKillLog (
			killLogId,
			logId,
			heroId,
			regTime)
		VALUES (
			@killLogId,
			@logId,
			@heroId,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeAcquisitionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCostumeAcquisitionLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nCostumeId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCostumeAcquisitionLog (logId, heroId, costumeId, regTime)
		VALUES (@logId, @heroId, @nCostumeId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeCollectionActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCostumeCollectionActivationLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nCostumeCollectionId	int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCostumeCollectionActivationLog (
			logId,
			heroId,
			costumeCollectionId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nCostumeCollectionId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeCollectionShuffleLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCostumeCollectionShuffleLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nOldCostumeCollectionId	int,
	@nCostumeCollectionId		int,
	@nUsedItemId				int,
	@nUsedItemOwnCount			int,
	@nUsedItemUnOwnCount		int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCostumeCollectionShuffleLog (
			logId,
			heroId,
			oldCostumeCollectionId,
			costumeCollectionId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nOldCostumeCollectionId,
			@nCostumeCollectionId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeEffectApplicationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCostumeEffectApplicationLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nCostumeId				int,
	@nOldCostumeEffectId	int,
	@nCostumeEffectId		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCostumeEffectApplicationLog (
			logId,
			heroId,
			costumeId,
			oldCostumeEffectId,
			costumeEffectId,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nCostumeId,
			@nOldCostumeEffectId,
			@nCostumeEffectId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCostumeEnchantLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCostumeEnchantLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nCostumeId				int,
	@nOldEnchantLevel		int,
	@nOldLuckyValue			int,
	@nEnchantLevel			int,
	@nLuckyValue			int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCostumeEnchantLog (
			logId, 
			heroId, 
			costumeId, 
			oldEnchantLevel, 
			oldLuckyValue, 
			enchantLevel, 
			luckyValue, 
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nCostumeId,
			@nOldEnchantLevel,
			@nOldLuckyValue,
			@nEnchantLevel,
			@nLuckyValue,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreaturCardCompositionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreaturCardCompositionLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nCreatureCardId	int,
	@nCount				int,
	@nUsedSoulPowder	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroCreatureCardCompositionLog (
			logId, 
			heroId, 
			creatureCardId, 
			count, 
			usedSoulPowder, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nCreatureCardId,
			@nCount,
			@nUsedSoulPowder,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nOldAttrId			int,
	@nAttrId			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureAdditionalAttrSwitchDetailLog (
			detailLogId,
			logId,
			oldAttrId,
			attrId)
		 VALUES (
			@detailLogId,
			@logId,
			@nOldAttrId,
			@nAttrId)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureAdditionalAttrSwitchLog]
	@logId					uniqueidentifier,
	@heroCreatureId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureAdditionalAttrSwitchLog (
			logId,
			heroCreatureId,
			heroId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES	(
			@logId,
			@heroCreatureId,
			@heroId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nCreatureCardId	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT
	  INTO t_HeroCreatureCardCollectionActivationDetailLog(detailLogId, logId, creatureCardId)
	VALUES (@detailLogId, @logId, @nCreatureCardId)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardCollectionActivationLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nCollectionId		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroCreatureCardCollectionActivationLog(logId, heroId, collectionId, regTime)
	VALUES (@logId, @heroId, @nCollectionId, @regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllDetailLog]
	@detailLogId			uniqueidentifier,
	@logId					uniqueidentifier,
	@nCreatureCardId		int,
	@nCount					int,
	@nAcquiredSoulPowder	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCardDisassembleAllDetailLog (
			detailLogId, 
			logId, 
			creatureCardId, 
			count, 
			acquiredSoulPowder)
		 VALUES (
			@detailLogId,
			@logId,
			@nCreatureCardId,
			@nCount,
			@nAcquiredSoulPowder)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardDisassembleAllLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	 SET NOCOUNT ON
	 
	INSERT 
	  INTO t_HeroCreatureCardDisassembleAllLog (logId, heroId, regTime)
	VALUES (@logId, @heroId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardDisassembleLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardDisassembleLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nCreatureCardId		int,
	@nCount					int,
	@nAcquiredSoulPowder	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCardDisassembleLog(
			logId,
			heroId,
			creatureCardId,
			count,
			acquiredSoulPowder,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nCreatureCardId,
			@nCount,
			@nAcquiredSoulPowder,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardLuckyShopPickLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardLuckyShopPickLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nType				int,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@lnRewardGold		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCardLuckyShopPickLog (
			logId, 
			heroId, 
			type, 
			usedOwnDia, 
			usedUnOwnDia, 
			rewardGold, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nType,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@lnRewardGold,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardShopFixedProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardShopFixedProductBuyLog]
	@shopId				uniqueidentifier,
	@nProductId			int,
	@nItemId			int,
	@bItemOwned			bit,
	@nUsedSoulPowder	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroCreatureCardShopFixedProductBuyLog (
			shopId, 
			productId, 
			itemId, 
			itemOwned, 
			usedSoulPowder, 
			regTime)
		 VALUES (
			@shopId,
			@nProductId,
			@nItemId,
			@bItemOwned,
			@nUsedSoulPowder,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardShopLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardShopLog]
	@shopId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nType				int,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCardShopLog (
			shopId, 
			heroId, 
			type, 
			usedOwnDia, 
			usedUnOwnDia, 
			regTime)
		 VALUES (
			@shopId,
			@heroId,
			@nType,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCardShopRandomProoductLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCardShopRandomProoductLog]
	@shopId				uniqueidentifier,
	@nProductId			int,
	@nCreatureCardId	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCardShopRandomProductLog (
			shopId, 
			productId, 
			creatureCardId, 
			purchased, 
			usedSoulPowder, 
			regTime, 
			purchasedTime)
		 VALUES (
			@shopId,
			@nProductId,
			@nCreatureCardId,
			0,
			0,
			@regTime,
			NULL)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCompositionDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCompositionDetailLog]
	@detailLogId			uniqueidentifier,
	@logId					uniqueidentifier,
	@nRetrievalItemId		int,
	@bRetrievalItemOwned	bit,
	@nRetrievalItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCompositionDetailLog (
			detailLogId,
			logId,
			retrievalItemId,
			retrievalItemOwned,
			retrievalItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRetrievalItemId,
			@bRetrievalItemOwned,
			@nRetrievalItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCompositionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCompositionLog]
	@logId									uniqueidentifier,
	@heroCreatureId							uniqueidentifier,
	@heroId									uniqueidentifier,
	@materialHeroCreatureId					uniqueidentifier,
	@nMaterialHeroCreatureLevel				int,
	@nMaterialHeroCreatureExp				int,
	@nMaterialHeroCreatureInjectionLevel	int,
	@nMaterialHeroCreatureInjectionExp		int,
	@nSkillProtectionItemId					int,
	@nSkillProtectionItemOwnCount			int,
	@nSkillProtectionItemUnOwnCount			int,
	@regTime								datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCompositionLog(
			logId,
			heroCreatureId,
			heroId,
			materialHeroCreatureId,
			materialHeroCreatureLevel,
			materialHeroCreatureExp,
			materialHeroCreatureInjectionLevel,
			materialHeroCreatureInjectionExp,
			skillProtectionItemId,
			skillProtectionItemOwnCount,
			skillProtectionitemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@materialHeroCreatureId,
			@nMaterialHeroCreatureLevel,
			@nMaterialHeroCreatureExp,
			@nMaterialHeroCreatureInjectionLevel,
			@nMaterialHeroCreatureInjectionExp,
			@nSkillProtectionItemId,
			@nSkillProtectionItemOwnCount,
			@nSkillProtectionItemUnOwnCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCompositionSkillLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCompositionSkillLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nSlotIndex			int,
	@nOldSkillId		int,
	@nOldSkillGrade		int,
	@nSkillId			int,
	@nSkillGrade		int,
	@bProtected			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCompositionSkillLog (
			detailLogId,
			logId,
			slotIndex,
			oldSkillId,
			oldSkillGrade,
			skillId,
			skillGrade,
			protected)
		 VALUES (
			@detailLogId,
			@logId,
			@nSlotIndex,
			@nOldSkillId,
			@nOldSkillGrade,
			@nSkillId,
			@nSkillGrade,
			@bProtected)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationAdditionalAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationAdditionalAttrLog]
	@heroCreatureId		uniqueidentifier,
	@nAttrId			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCreationAdditionalAttrLog(heroCreatureId, attrId)
		 VALUES (@heroCreatureId, @nAttrId)
		 
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationBaseAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationBaseAttrLog]
	@heroCreatureId		uniqueidentifier,
	@nAttrId			int,
	@nValue				int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCreationBaseAttrLog (heroCreatureId, attrId, value)
		 VALUES (@heroCreatureId, @nAttrId, @nValue)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationLog]
	@heroCreatureId		uniqueidentifier,
	@heroId				uniqueidentifier,
	@nCreatureId		int,
	@nQuality			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCreationLog (
			heroCreatureId,
			heroId,
			creatureId,
			quality,
			regTime)
		 VALUES (
			@heroCreatureId,
			@heroId,
			@nCreatureId,
			@nQuality,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureCreationSkillLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureCreationSkillLog]
	@heroCreatureId		uniqueidentifier,
	@nSlotIndex			int,
	@nSkillId			int,
	@nSkillGrade		int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureCreationSkillLog (
			heroCreatureId,
			slotIndex,
			skillId,
			skillGrade)
		 VALUES (
			@heroCreatureId,
			@nSlotIndex,
			@nSkillId,
			@nSkillGrade)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureFarmQuestMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureFarmQuestMissionRewardLog]
	@logId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@heroId				uniqueidentifier,
	@nMissionNo			int,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureFarmQuestMissionRewardLog(
			logId,
			questInstanceId,
			heroId,
			missionNo,
			rewardExp,
			regTime)
		 VALUES (
			@logId,
			@questInstanceId,
			@heroId,
			@nMissionNo,
			@lnRewardExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureFarmQuestRewardDetailLog (
			detailLogId,
			questInstanceId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@questInstanceId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureFarmQuestRewardLog]
	@questInstanceId	uniqueidentifier,
	@heroId				uniqueidentifier,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroCreatureFarmQuestRewardLog (
			questInstanceId,
			heroId,
			rewardExp,
			regTime)
		 VALUES (
			@questInstanceId,
			@heroId,
			@lnRewardExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureInjectionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureInjectionLog]
	@logId						uniqueidentifier,
	@heroCreatureId				uniqueidentifier,
	@heroId						uniqueidentifier,
	@nUsedItemId				int,
	@nUsedItemOwnCount			int,
	@nUsedItemUnOwnCount		int,
	@lnUsedGold					bigint,
	@nOldInjectionLevel			int,
	@nInjectionLevel			int,
	@nOldInjectionExp			int,
	@nInjectionExp				int,
	@nAcquisitionInjectionExp	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureInjectionLog(
			logId,
			heroCreatureId,
			heroId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			usedGold,
			oldInjectionLevel,
			injectionLevel,
			oldInjectionExp,
			injectionExp,
			acquisitionInjectionExp,
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@lnUsedGold,
			@nOldInjectionLevel,
			@nInjectionLevel,
			@nOldInjectionExp,
			@nInjectionExp,
			@nAcquisitionInjectionExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureInjectionRetrievalLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureInjectionRetrievalLog]
	@logId					uniqueidentifier,
	@heroCreatureId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@nInjectionLevel		int,
	@nInjectionExp			int,
	@nRetrievalItemId		int,
	@bRetrievalItemOwned	bit,
	@nRetrievalItemCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureInjectionRetrievalLog(
			logId,
			heroCreatureId,
			heroId,
			injectionLevel,
			injectionExp,
			retrievalItemId,
			retrievalItemOwned,
			retrievalItemCount,
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@nInjectionLevel,
			@nInjectionExp,
			@nRetrievalItemId,
			@bRetrievalItemOwned,
			@nRetrievalItemCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureRearingLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureRearingLog]
	@logId					uniqueidentifier,
	@heroCreatureId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@nOldLevel				int,
	@nLevel					int,
	@nOldExp				int,
	@nExp					int,
	@nAcquisitionExp		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroCreatureRearingLog (
			logId,
			heroCreatureId,
			heroId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			oldLevel,
			level,
			oldExp,
			exp,
			acquisitionExp,
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@nOldLevel,
			@nLevel,
			@nOldExp,
			@nExp,
			@nAcquisitionExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureReleaseDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureReleaseDetailLog]
	@detailLogId			uniqueidentifier,
	@heroCreatureId			uniqueidentifier,
	@nRetrievalItemId		int,
	@bRetrievalItemOwned	bit,
	@nRetrievalItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_heroCreatureReleaseDetailLog (
			detailLogId,
			heroCreatureId,
			retrievalItemId,
			retrievalItemOwned,
			retrievalItemCount)
		 VALUES (
			@detailLogId,
			@heroCreatureId,
			@nRetrievalItemId,
			@bRetrievalItemOwned,
			@nRetrievalItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureReleaseLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureReleaseLog]
	@heroCreatureId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@nLevel					int,
	@nExp					int,
	@nInjectionLevel		int,
	@nInjectionExp			int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureReleaseLog (
			heroCreatureId, 
			heroId, 
			level,
			exp,
			injectionLevel,
			injectionExp,
			regTime)
		 VALUES (
			@heroCreatureId,
			@heroId,
			@nLevel,
			@nExp,
			@nInjectionLevel,
			@nInjectionExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureSkillSlotOpenLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureSkillSlotOpenLog]
	@logId					uniqueidentifier,
	@heroCreatureId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@nOldSlotCount			int,
	@nSlotCount				int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_heroCreatureSkillSlotOpenLog (
			logId,
			heroCreatureId,
			heroId,
			oldSlotCount,
			slotCount,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@nOldSlotCount,
			@nSlotCount,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureStatusUpdateLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureStatusUpdateLog]
	@logId				uniqueidentifier,
	@heroCreatureId		uniqueidentifier,
	@heroId				uniqueidentifier,
	@bOldParticipated	bit,
	@bParticipated		bit,
	@bOldCheered		bit,
	@bCheered			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureStatusUpdateLog(
			logId,
			heroCreatureId, 
			heroId,
			oldParticipated, 
			participated, 
			oldCheered, 
			cheered, 
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@bOldParticipated,
			@bParticipated,
			@bOldCheered,
			@bCheered,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureVariationDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureVariationDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nAttrId			int,
	@nOldValue			int,
	@nValue				int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureVariationDetailLog(
			detailLogId,
			logId,
			attrId,
			oldValue,
			value)
		 VALUES (
			@detailLogId,
			@logId,
			@nAttrId,
			@nOldValue,
			@nValue)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreatureVariationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreatureVariationLog]
	@logId					uniqueidentifier,
	@heroCreatureId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@nOldQuality			int,
	@nQuality				int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroCreatureVariationLog(
			logId,
			heroCreatureId,
			heroId,
			oldQuality,
			quality,
			usedItemId,
			usedItemOwnCount,
			useditemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroCreatureId,
			@heroId,
			@nOldQuality,
			@nQuality,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroCreauteCardLuckyShopPickDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroCreauteCardLuckyShopPickDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nCreatureCardId	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroCreatureCardLuckyShopPickDetailLog (detailLogid, logId, creatureCardId)
	VALUES (@detailLogId, @logId, @nCreatureCardId)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyChargeEventMissionRewardDetailLog (
			DetailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyChargeEventMissionRewardLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@heroId		uniqueidentifier,
	@date		date,
	@nMissionNo	int,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyChargeEventMissionRewardLog (
			logId,
			accountId,
			heroId,
			date,
			missionNo,
			regTime)
		VALUES (
			@logId,
			@accountId,
			@heroId,
			@date,
			@nMissionNo,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyConsumeEventMissionRewardDetailLog (
			DetailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyConsumeEventMissionRewardLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@heroId		uniqueidentifier,
	@date		date,
	@nMissionNo	int,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyConsumeEventMissionRewardLog (
			logId,
			accountId,
			heroId,
			date,
			missionNo,
			regTime)
		VALUES (
			@logId,
			@accountId,
			@heroId,
			@date,
			@nMissionNo,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestAbandonLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestAbandonLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@newQuestInstanceId	uniqueidentifier,
	@regTime			datetimeoffset	
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyQuestAbandonLog (
			logId, 
			heroId, 
			questInstanceId, 
			newQuestInstanceId,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@questInstanceId,
			@newQuestInstanceId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestCreationLog]
	@questInstanceId	uniqueidentifier,
	@heroId				uniqueidentifier,
	@nSlotIndex			int,
	@nMissionId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyQuestCreationLog (
			questInstanceId, 
			heroId, 
			slotIndex, 
			missionId, 
			regTime)
		 VALUES (
			@questInstanceId,
			@heroId,
			@nSlotIndex,
			@nMissionId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestImmediateCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestImmediateCompletionLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@nUsedGold			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyQuestImmediateCompletionLog(
			logId, 
			heroId, 
			questInstanceId, 
			usedGold, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@questInstanceId,
			@nUsedGold,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestRefreshDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestRefreshDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@questInstanceId	uniqueidentifier
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyQuestRefreshDetailLog (
			detailLogId, 
			logId, 
			questInstanceId)
		 VALUES (
			@detailLogId,
			@logId,
			@questInstanceId)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestRefreshLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestRefreshLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nUsedGold			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroDailyQuestRefreshLog(logId, heroId, usedGold, regTime)
		 VALUES (@logId, @heroId, @nUsedGold, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDailyQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDailyQuestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@nLevel				int,
	@nRewardVipPoint	int,
	@lnRewardExp		bigint,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@newQuestInstanceId	uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDailyQuestRewardLog(
			logId, 
			heroId, 
			questInstanceId, 
			level, 
			rewardVipPoint,
			rewardExp, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount, 
			newQuestInstanceId,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@questInstanceId,
			@nLevel,
			@nRewardVipPoint,
			@lnRewardExp,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@newQuestInstanceId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroDiaShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroDiaShopProductBuyLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nCategoryId			int,
	@nProductId				int,
	@nUsedOwnDia			int,
	@nUsedUnOwnDia			int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@nBuyItemId				int,
	@bBuyItemOwned			bit,
	@nBuyItemCount			int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroDiaShopProductBuyLog(
			logId,
			heroId,
			categoryId,
			productId,
			usedOwnDia,
			usedUnOwnDia,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			buyItemId,
			buyItemOwned,
			buyItemCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nCategoryId,
			@nProductId,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@nBuyItemId,
			@bBuyItemOwned,
			@nBuyItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFearAltarHalidomCollectionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroFearAltarHalidomCollectionRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardNo			int,
	@nCollectionCount	int,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroFearAltarHalidomCollectionRewardLog (
			logId,
			heroId,
			rewardNo,
			collectionCount,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nRewardNo,
			@nCollectionCount,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFearAltarHalidomElementalRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroFearAltarHalidomElementalRewardLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nHalidomElementalId	int,
	@nRewardItemId			int,
	@bRewardItemOwned		bit,
	@nRewardItemCount		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroFearAltarHalidomElementalRewardLog (
			logId,
			heroId,
			halidomElementalId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nHalidomElementalId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFirstChargeEventRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroFirstChargeEventRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroFirstChargeEventRewardDetailLog (
			DetailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroFirstChargeEventRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroFirstChargeEventRewardLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@heroId		uniqueidentifier,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroFirstChargeEventRewardLog (
			logId,
			accountId,
			heroId,
			regTime)
		VALUES (
			@logId,
			@accountId,
			@heroId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroGuildSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroGuildSkillLevelUpLog]
	@logId							uniqueidentifier,
	@heroId							uniqueidentifier,
	@guildId						uniqueidentifier,
	@nGuildSkillId					int,
	@nOldLevel						int,
	@nLevel							int,
	@nUsedGuildContributionPoint	int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroGuildSkillLevelUpLog (
			logId, 
			heroId, 
			guildId, 
			guildSkillId, 
			oldLevel, 
			level, 
			usedGuildContributionPoint,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@guildId,
			@nGuildSkillId,
			@nOldLevel,
			@nLevel,
			@nUsedGuildContributionPoint,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookActivationLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nIllustratedBookId		int,
	@nExplorationPoint		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroIllustratedBookActivationLog (
			logId,
			heroId,
			illustratedBookId,
			explorationPoint,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nIllustratedBookId,
			@nExplorationPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepActivationLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nStepNo			int,
	@nExplorationPoint	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroIllustratedBookExplorationStepActivationLog (
			logId,
			heroId,
			stepNo,
			explorationPoint,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nStepNo,
			@nExplorationPoint,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardDetailLog]
	@detailLogId uniqueidentifier,
	@logId uniqueidentifier,
	@nItemId int,
	@nItemCount int,
	@bItemOwned bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroIllustratedBookExplorationStepRewardDetailLog (
			detailLogId,
			logId,
			itemId,
			itemCount,
			itemOwned)
		VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroIllustratedBookExplorationStepRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nStepNo		int,
	@lnRewardGold	bigint,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroIllustratedBookExplorationStepRewardLog (
			logId,
			heroId,
			stepNo,
			rewardGold,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nStepNo,
			@lnRewardGold,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroItemLuckyShopPickDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroItemLuckyShopPickDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@bItemOwned			bit,
	@nItemCount			int
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroItemLuckyShopPickDetailLog (
			detailLogId,
			logId,
			itemId,
			itemOwned,
			itemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@bItemOwned,
			@nItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroItemLuckyShopPickLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroItemLuckyShopPickLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nType				int,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@lnRewardGold		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroItemLuckyShopPickLog (
			logId, 
			heroId, 
			type, 
			usedOwnDia, 
			usedUnOwnDia, 
			rewardGold, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nType,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@lnRewardGold,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroJobChangeLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroJobChangeLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nOldJobId				int,
	@nJobId					int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroJobChangeLog(
			logId,
			heroId,
			oldJobId,
			jobId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nOldJobId,
			@nJobId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)
		 
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroJobChangeQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroJobChangeQuestRewardLog]
	@questInstanceId	uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroJobChangeQuestRewardLog (
			questInstanceId,
			heroId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount,
			regTime)
		 VALUES (
			@questInstanceId,
			@heroId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroLimitationGiftReawrdDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroLimitationGiftReawrdDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroLimitationGiftRewardDetailLog (
			detailLogId, 
			logId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroLimitationGiftRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroLimitationGiftRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nScheduleId		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroLimitationGiftRewardLog(logId, heroId, scheduleId, regTime)
	VALUES (@logId, @heroId, @nScheduleId, @regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearDisassembleDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMainGearDisassembleDetailLog]
	@logId				uniqueidentifier,
	@nNo				int,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroMainGearDisassembleDetailLog(logId, no, itemId, itemCount, itemOwned)
	VALUES (@logId, @nNo, @nItemId, @nItemCount, @bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearDisassembleLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMainGearDisassembleLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@heroMainGearId		uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroMainGearDisassembleLog(logId, heroId, heroMainGearId, regTime)
	VALUES (@logId, @heroId, @heroMainGearId, @regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearEnchantLevelSetActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMainGearEnchantLevelSetActivationLog]
	@logId								uniqueidentifier,
	@heroId								uniqueidentifier,
	@nSetNo								int,
	@weaponHeroMainGearId				uniqueidentifier,
	@nWeaponHeroMainGearEnchantLevel	int,
	@armorHeroMainGearId				uniqueidentifier,
	@nArmorHeroMainGearEnchantLevel		int,
	@regTime							datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMainGearEnchantLevelSetActivationLog(
			logId,
			heroId,
			setNo,
			weaponHeroMainGearId,
			weaponHeroMainGearEnchantLevel,
			armorHeroMainGearId,
			armorHeroMainGearEnchantLevel,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nSetNo,
			@weaponHeroMainGearId,
			@nWeaponHeroMainGearEnchantLevel,
			@armorHeroMainGearId,
			@nArmorHeroMainGearEnchantLevel,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0		 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearRefinementApplicationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMainGearRefinementApplicationLog]
	@logId				uniqueidentifier,
	@nIndex				int,
	@heroId				uniqueidentifier,
	@heroMainGearId		uniqueidentifier,
	@nOldGrade			int,
	@nGrade				int,
	@nOldAttrId			int,
	@nAttrId			int,
	@lnOldAttrValueId	bigint,
	@lnAttrValueId		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMainGearRefinementApplicationLog(
			logId,
			[index],
			heroId,
			heroMainGearId,
			oldGrade,
			grade,
			oldAttrId,
			attrId,
			oldAttrValueId,
			attrValueId,
			regTime)
		 VALUES (
			@logId,
			@nIndex,
			@heroId,
			@heroMainGearId,
			@nOldGrade,
			@nGrade,
			@nOldAttrId,
			@nAttrId,
			@lnOldAttrValueId,
			@lnAttrValueId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearRefinementDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMainGearRefinementDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nTurn				int,
	@nIndex				int,
	@nGrade				int,
	@nAttrId			int,
	@lnAttrValueId		bigint,
	@bProtected			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMainGearRefinementDetailLog(
			detailLogId,
			logId,
			turn,
			[index],
			grade,
			attrId,
			attrValueId,
			protected)
		 VALUES (
			@detailLogId,
			@logId,
			@nTurn,
			@nIndex,
			@nGrade,
			@nAttrId,
			@lnAttrValueId,
			@bProtected)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMainGearRefinementLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMainGearRefinementLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@heroMainGearId				uniqueidentifier,
	@bOldOwned					bit,
	@bOwned						bit,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@nProtectionItemId			int,
	@nProtectionItemOwnCount	int,
	@nProtectionItemUnOwnCount	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMainGearRefinementLog(
			logId,
			heroId,
			heroMainGearId,
			oldOwned,
			owned,
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			protectionItemId,
			protectionItemOwnCount,
			protectionItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@heroMainGearId,
			@bOldOwned,
			@bOwned,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@nProtectionItemId,
			@nProtectionItemOwnCount,
			@nProtectionItemUnOwnCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0			
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMoneyBuffUsedLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMoneyBuffUsedLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nBuffId		int,
	@lnUsedGold		bigint,
	@nUsedOwnDia	int,
	@nUsedUnOwnDia	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMoneyBuffUsedLog (
			logId,
			heroId,
			buffId,
			usedGold,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nBuffId,
			@lnUsedGold,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountAwakeningLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMountAwakeningLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nMountId					int,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@nOldAwakeningLevel			int,
	@nAwakeningLevel			int,
	@nOldAwakeningExp			int,
	@nAwakeningExp				int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMountAwakeningLog (
			logId,
			heroId,
			mountId,
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			oldAwakeningLevel,
			awakeningLevel,
			oldAwakeningExp,
			awakeningExp,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nMountId,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@nOldAwakeningLevel,
			@nAwakeningLevel,
			@nOldAwakeningExp,
			@nAwakeningExp,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountGearPickBoxMakingLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMountGearPickBoxMakingLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@lnUsedGold					bigint,
	@nItemId					int,
	@nItemCount					int,
	@bItemOwned					bit,
	@nMaterialItem1Id			int,
	@nMaterialItem1OwnCount		int,
	@nMaterialItem1UnOwnCount	int,
	@nMaterialItem2Id			int,
	@nMaterialItem2OwnCount		int,
	@nMaterialItem2UnOwnCount	int,
	@nMaterialItem3Id			int,
	@nMaterialItem3OwnCount		int,
	@nMaterialItem3UnOwnCount	int,
	@nMaterialItem4Id			int,
	@nMaterialItem4OwnCount		int,
	@nMaterialItem4UnOwnCount	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMountGearPickBoxMakingLog(
			logId,
			heroId,
			usedGold,
			itemId,
			itemCount,
			itemOwned,
			materialItem1Id,
			materialItem1OwnCount,
			materialItem1UnOwnCount,
			materialItem2Id,
			materialItem2OwnCount,
			materialItem2UnOwnCount,
			materialItem3Id,
			materialItem3OwnCount,
			materialItem3UnOwnCount,
			materialItem4Id,
			materialItem4OwnCount,
			materialItem4UnOwnCount,
			regTime)
		 VALUES	(
			@logId,
			@heroId,
			@lnUsedGold,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@nMaterialItem1Id,
			@nMaterialItem1OwnCount,
			@nMaterialItem1UnOwnCount,
			@nMaterialItem2Id,
			@nMaterialItem2OwnCount,
			@nMaterialItem2UnOwnCount,
			@nMaterialItem3Id,
			@nMaterialItem3OwnCount,
			@nMaterialItem3UnOwnCount,
			@nMaterialItem4Id,
			@nMaterialItem4OwnCount,
			@nMaterialItem4UnOwnCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountGearRefinementLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMountGearRefinementLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@heroMountGearId			uniqueidentifier,
	@bOldOwned					bit,
	@bOwned						bit,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@nIndex						int,
	@nOldGrade					int,
	@nGrade						int,
	@nOldAttrId					int,
	@nAttrId					int,
	@lnOldAttrValueId			bigint,
	@lnAttrValueId				bigint,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroMountGearRefinementLog(
			logId,
			heroId,
			heroMountGearId,
			oldOwned,
			owned,
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			[index],
			oldGrade,
			grade,
			oldAttrId,
			attrId,
			oldAttrValueId,
			attrValueId,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@heroMountGearId,
			@bOldOwned,
			@bOwned,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@nIndex,
			@nOldGrade,
			@nGrade,
			@nOldAttrId,
			@nAttrId,
			@lnOldAttrValueId,
			@lnAttrValueId,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMountLevelUpLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nMountId					int,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@nOldLevel					int,
	@nLevel						int,
	@nOldSatiety				int,
	@nSatiety					int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMountLevelUpLog(
			logId,
			heroId,
			mountId,
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			oldLevel,
			level,
			oldSatiety,
			satiety,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nMountId,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@nOldLevel,
			@nLevel,
			@nOldSatiety,
			@nSatiety,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroMountPotionAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroMountPotionAttrLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nMountId				int,
	@nCount					int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroMountPotionAttrLog(
			logId,
			heroId,
			mountId,
			count,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nMountId,
			@nCount,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroNpcShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroNpcShopProductBuyLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nProductId				int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@nAcquiredItemId		int,
	@bAcquiredItemOwned		bit,
	@nAcquiredItemCount		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroNpcShopProductBuyLog(
			logId,
			heroId,
			productId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			acquiredItemId,
			acquiredItemOwned,
			acquiredItemCount,
			regTime)
		 VALUES(
			@logId,
			@heroId,
			@nProductId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@nAcquiredItemId,
			@bAcquiredItemOwned,
			@nAcquiredItemCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpen7DayEventBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOpen7DayEventBuyLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nProductId			int,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@nItemId			int,
	@bItemOwned			bit,
	@nItemCount			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroOpen7DayEventProductBuyLog (
			logId,
			heroId,
			productId,
			usedOwnDia,
			usedUnOwnDia,
			itemId,
			itemOwned,
			itemCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nProductId,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@nItemId,
			@bItemOwned,
			@nItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpen7DayEventRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOpen7DayEventRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroOpen7DayEventRewardDetailLog (
			detailLogId, 
			logId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpen7DayEventRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOpen7DayEventRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nMissionId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroOpen7DayEventRewardLog(logId, heroId, missionId, regTime)
	VALUES (@logId, @heroId, @nMissionId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpenGiftRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOpenGiftRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroOpenGiftRewardDetailLog (
			detailLogId, 
			logId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount)
		 VALUES (
			@detailLogId, 
			@logId, 
			@nRewardItemId, 
			@bRewardItemOwned, 
			@nRewardItemCount)
			
	IF @@ERROR <> 0
		RETURN 1

	RETURN 0	
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOpenGiftRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOpenGiftRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nDay				int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroOpenGiftRewardLog (logId, heroId, day, regTime)
		 VALUES (@logId, @heroId, @nDay, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOrdealQuestMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOrdealQuestMissionRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nQuestNo			int,
	@nSlotIndex			int,
	@nMissionNo			int,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroOrdealQuestMissionRewardLog (
			logId,
			heroId,
			questNo,
			slotIndex,
			missionNo,
			rewardExp,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nQuestNo,
			@nSlotIndex,
			@nMissionNo,
			@lnRewardExp,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOrdealQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOrdealQuestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nQuestNo			int,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	 SET NOCOUNT ON
	 
	 INSERT INTO t_HeroOrdealQuestRewardLog (
			logId,
			heroId,
			questNo,
			rewardExp,
			regTime)
		  VALUES (
			@logId,
			@heroId,
			@nQuestNo,
			@lnRewardExp,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroOsirisRoomRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroOsirisRoomRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nDifficulty	int,
	@nPlayTime		int,
	@lnRewardGold	bigint,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroOsirisRoomRewardLog (
			logId,
			heroId,
			difficulty,
			playTime,
			rewardGold,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nDifficulty,
			@nPlayTime,
			@lnRewardGold,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroPotionAttrLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroPotionAttrLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nPotionAttrId			int,
	@nCount					int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroPotionAttrLog (
			logId,
			heroId,
			potionAttrId,
			count,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nPotionAttrId,
			@nCount,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroPresentLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroPresentLog]
	@logId							uniqueidentifier,
	@heroId							uniqueidentifier,
	@targetHeroId					uniqueidentifier,
	@nPresentId						int,
	@nAddedPresentContributionPoint	int,
	@nAddedPresentPopularityPoint	int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroPresentLog (logId, heroId, targetHeroId, presentId, addedPresentContributionPoint, addedPresentPopularityPoint, regTime)
	  VALUES (@logId, @heroId, @targetHeroId, @nPresentId, @nAddedPresentContributionPoint, @nAddedPresentPopularityPoint, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProofOfValorRefreshLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroProofOfValorRefreshLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nType			int,
	@instanceId		uniqueidentifier,
	@nUsedOwnDia	int,
	@nUsedUnOwnDia	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroProofOfValorRefreshLog (
			logId,
			heroId,
			type,
			instanceId,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nType,
			@instanceId,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProofOfValorRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroProofOfValorRewardLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@instanceId					uniqueidentifier,
	@nStatus					int,
	@nCreatureCardId			int,
	@nRewardSoulPowder			int,
	@lnRewardExp				bigint,
	@nSpecialRewardSoulPowder	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroProofOfValorRewardLog (
			logId,
			heroId,
			instanceId,
			status,
			creatureCardId,
			rewardSoulPowder,
			rewardExp,
			specialRewardSoulPowder,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@instanceId,
			@nStatus,
			@nCreatureCardId,
			@nRewardSoulPowder,
			@lnRewardExp,
			@nSpecialRewardSoulPowder,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProspectQuestRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroProspectQuestRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroProspectQuestRewardDetailLog (detailLogId, logId, rewardItemId, rewardItemOwned, rewardItemCount)
	  VALUES (@detailLogId, @logId, @nRewardItemId, @bRewardItemOwned, @nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroProspectQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroProspectQuestRewardLog]
	@logId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@heroId				uniqueidentifier,
	@bIsOwner			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroProspectQuestRewardLog (logId, questInstanceId, heroId, isOwner, regTime)
	  VALUES (@logId, @questInstanceId, @heroId, @bIsOwner, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRankActiveSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRankActiveSkillLevelUpLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nSkillId				int,
	@nOldLevel				int,
	@nLevel					int,
	@lnUsedGold				bigint,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRankActiveSkillLevelUpLog (
			logId,
			heroId,
			skillId,
			oldLevel,
			level,
			usedGold,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nSkillId,
			@nOldLevel,
			@nLevel,
			@lnUsedGold,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRankPassiveSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRankPassiveSkillLevelUpLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nSkillId			int,
	@nOldLevel			int,
	@nLevel				int,
	@lnUsedGold			bigint,
	@nUsedSpritStone	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRankPassiveSkillLevelUpLog (
			logId,
			heroId,
			skillId,
			oldLevel,
			level,
			usedGold,
			usedSpritStone,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nSkillId,
			@nOldLevel,
			@nLevel,
			@lnUsedGold,
			@nUsedSpritStone,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRechargeEventRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRechargeEventRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRechargeEventRewardDetailLog (
			DetailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRechargeEventRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRechargeEventRewardLog]
	@logId		uniqueidentifier,
	@accountId	uniqueidentifier,
	@heroId		uniqueidentifier,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRechargeEventRewardLog (
			logId,
			accountId,
			heroId,
			regTime)
		VALUES (
			@logId,
			@accountId,
			@heroId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nLevel				int,
	@nRestTime			int,
	@lnRewardExp		bigint,
	@nType				int,
	@lnUsedGold			bigint,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRestRewardLog(
			logId, 
			heroId, 
			level,
			restTime,
			rewardExp,
			type,
			usedGold,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES	(
			@logId,
			@heroId,
			@nLevel,
			@nRestTime,
			@lnRewardExp,
			@nType,
			@lnUsedGold,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRetrievalDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRetrievalDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@lnRewardExp		bigint,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRetrievalDetailLog (
			detailLogId,
			logId,
			rewardExp,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@lnRewardExp,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRetrievalLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRetrievalLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRetrievalId		int,
	@nCount				int,
	@nLevel				int,
	@nVipLevel			int,
	@nType				int,
	@lnUsedGold			bigint,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroRetrievalLog (
			logId,
			heroId,
			retrievalId,
			count,
			level,
			vipLevel,
			type,
			usedGold,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nRetrievalId,
			@nCount,
			@nLevel,
			@nVipLevel,
			@nType,
			@lnUsedGold,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRetrievalLogs]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRetrievalLogs]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRetrievalId		int,
	@nCount				int,
	@nLevel				int,
	@nVipLevel			int,
	@nType				int,
	@lnUsedGold			bigint,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroRetrievalLog (
			logId,
			heroId,
			retrievalId,
			count,
			level,
			vipLevel,
			type,
			usedGold,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nRetrievalId,
			@nCount,
			@nLevel,
			@nVipLevel,
			@nType,
			@lnUsedGold,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRevivalLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRevivalLog]
	@logId		uniqueidentifier,
	@heroId		uniqueidentifier,
	@nType		int,
	@nOwnDia	int,
	@nUnOwnDia	int,
	@regTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRevivalLog (logId, heroId, type, ownDia, unOwnDia, regTime)
	  VALUES (@logId, @heroId, @nType, @nOwnDia, @nUnOwnDia, @regTime)
	  
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRookieGiftRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRookieGiftRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRookieGiftRewardDetailLog(
			detailLogId, 
			logId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroRookieGiftRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroRookieGiftRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nGiftNo			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroRookieGiftRewardLog (logId, heroId, giftNo, regTime)
		 VALUES (@logId, @heroId, @nGiftNo, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSkillLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroSkillLevelUpLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nSkillId					int,
	@nOldLevel					int,
	@nLevel						int,
	@lnUsedGold					bigint,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroSkillLevelUpLog(
			logId,
			heroId,
			skillId,
			oldLevel,
			level,
			usedGold,
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			regTime)
		 VALUES( 
			@logId,
			@heroId,
			@nSkillId,
			@nOldLevel,
			@nLevel,
			@lnUsedGold,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroStaminaRecoveryLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroStaminaRecoveryLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRecoveryStamina	int,
	@nOldStamina		int,
	@nStamina			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroStaminaRecoveryLog(
			logId,
			heroId,
			recoveryStamina,
			oldStamina,
			stamina,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nRecoveryStamina,
			@nOldStamina,
			@nStamina,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubGearSoulstoneLevelSetActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroSubGearSoulstoneLevelSetActivationLog]
	@logId							uniqueidentifier,
	@heroId							uniqueidentifier,
	@nSetNo							int,
	@nSubGearSoulstoneTotalLevel	int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroSubGearSoulstoneLevelSetActivationLog(
			logId,
			heroId,
			setNo,
			subGearSoulstoneTotalLevel,
			regTime)
		 VALUES(
			@logId,
			@heroId,
			@nSetNo,
			@nSubGearSoulstoneTotalLevel,
			@regTime)
			
	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestAbandonmentLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestAbandonmentLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nSubQuestId		int,
	@nProgressCount		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroSubQuestAbandonmentLog(logId, heroId, subQuestId, progressCount, regTime)
	VALUES (@logId, @heroId, @nSubQuestId, @nProgressCount, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestAcceptanceLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nSubQuestId		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroSubQuestAcceptanceLog(logId, heroId, subQuestId, regTime)
	VALUES (@logId, @heroId, @nSubQuestId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroSubQuestRewardDetailLog(
			detailLogId, 
			logId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroSubQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroSubQuestRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nSubQuestId		int,
	@lnRewardExp		bigint,
	@lnRewardGold		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroSubQuestRewardLog (
			logId, 
			heroId, 
			subQuestId, 
			rewardExp, 
			rewardGold, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nSubQuestId,
			@lnRewardExp,
			@lnRewardGold,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTaskConsignmentCompletionDetailLog(
			detailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTaskConsignmentCompletionLog]
	@logId							uniqueidentifier,
	@heroId							uniqueidentifier,
	@consignmentInstanceId			uniqueidentifier,
	@nRemainTime					int,
	@lnUsedGold						bigint,
	@lnRewardExp					bigint,
	@nRewardGuildContributionPoint	int,
	@nRewardGuildBuildingPoint		int,
	@nRewardGuildFund				int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTaskConsignmentCompletionLog(
			logId,
			heroId,
			consignmentInstanceId,
			remainTime,
			usedGold,
			rewardExp,
			rewardGuildContributionPoint,
			rewardGuildBuildingPoint,
			rewardGuildFund,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@consignmentInstanceId,
			@nRemainTime,
			@lnUsedGold,
			@lnRewardExp,
			@nRewardGuildContributionPoint,
			@nRewardGuildBuildingPoint,
			@nRewardGuildFund,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTaskConsignmentLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTaskConsignmentLog]
	@consignmentInstanceId	uniqueidentifier,
	@heroId					uniqueidentifier,
	@nConsignmentId			int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@nUsedExpItemId			int,
	@nUsedExpItemOwnCount	int,
	@nUsedExpItemUnOwnCount	int,
	@nAchievementPoint		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTaskConsignmentLog (
			consignmentInstanceId,
			heroId,
			consignmentId,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			usedExpItemId,
			usedExpItemOwnCount,
			usedExpItemUnOwnCount,
			achievementPoint,
			regTime)
		 VALUES (
			@consignmentInstanceId,
			@heroId,
			@nConsignmentId,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@nUsedExpItemId,
			@nUsedExpItemOwnCount,
			@nUsedExpItemUnOwnCount,
			@nAchievementPoint,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTitleAcquiredLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTitleAcquiredLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nTitleId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTitleAcquiredLog (
			logId,
			heroId,
			titleId,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nTitleId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTitleActivationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTitleActivationLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nTitleId			int,
	@nType				int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTitleActivationLog (
			logId,
			heroId,
			titleId,
			type,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nTitleId,
			@nType,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTrueHeroQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTrueHeroQuestRewardLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@questInstanceId		uniqueidentifier,
	@nRewardExploitPoint	int,
	@nAcquiredExploitPoint	int,
	@lnRewardExp			bigint,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTrueHeroQuestRewardLog(
			logId,
			heroId,
			questInstanceId,
			rewardExploitPoint,
			acquiredExploitPoint,
			rewardExp,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@questInstanceId,
			@nRewardExploitPoint,
			@nAcquiredExploitPoint,
			@lnRewardExp,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTrueHeroQuestStartLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTrueHeroQuestStartLog]
	@questInstanceId	uniqueidentifier,
	@heroId				uniqueidentifier,
	@nVipLevel			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_HeroTrueHeroQuestStartLog(questInstanceId, heroId, vipLevel, regTime)
	VALUES (@questInstanceId, @heroId, @nVipLevel, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroTrueHeroQuestStepRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroTrueHeroQuestStepRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@questInstanceId	uniqueidentifier,
	@nStep				int,
	@nTargetNationId	int,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroTrueHeroQuestStepRewardLog (
			logId, 
			heroId, 
			questInstanceId, 
			step, 
			targetNationId, 
			rewardItemId, 
			rewardItemOwned, 
			rewardItemCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@questInstanceId,
			@nStep,
			@nTargetNationId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeekendRewardItemRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeekendRewardItemRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeekendRewardItemRewardLog (
			logId,
			heroId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeekendRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeekendRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@weekStartDate		date,
	@nSelection1		int,
	@nSelection2		int,
	@nSelection3		int,
	@nRewardOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeekendRewardLog (
			logId,
			heroId,
			weekStartDate,
			selection1,
			selection2,
			selection3,
			rewardOwnDia,
			regTime)
		 VALUES (	
			@logId,
			@heroId,
			@weekStartDate,
			@nSelection1,
			@nSelection2,
			@nSelection3,
			@nRewardOwnDia,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyPresentContributionPointRankingRewardDetailLog (detailLogId, logId, rewardItemId, rewardItemOwned, rewardItemCount)
	  VALUES (@detailLogId, @logId, @nRewardItemId, @bRewardItemOwned, @nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentContributionPointRankingRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nRankingNo		int,
	@nRanking		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyPresentContributionPointRankingRewardLog (logId, heroId, rankingNo, ranking, regTime)
	  VALUES (@logId, @heroId, @nRankingNo, @nRanking, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyPresentPopularityPointRankingRewardDetailLog (detailLogId, logId, rewardItemId, rewardItemOwned, rewardItemCount)
	  VALUES (@detailLogId, @logId, @nRewardItemId, @bRewardItemOwned, @nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyPresentPopularityPointRankingRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nRankingNo		int,
	@nRanking		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyPresentPopularityPointRankingRewardLog (logId, heroId, rankingNo, ranking, regTime)
	  VALUES (@logId, @heroId, @nRankingNo, @nRanking, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestImmediateCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestImmediateCompletionLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@roundId				uniqueidentifier,
	@nCompletionRoundCount	int,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@lnRewardGold			bigint,
	@lnRewardExp			bigint,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyQuestImmediateCompletionLog(
			logId, 
			heroId, 
			roundId, 
			completionRoundCount,
			usedItemId, 
			usedItemOwnCount, 
			usedItemUnOwnCount, 
			rewardGold, 
			rewardExp, 
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@roundId,
			@nCompletionRoundCount,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@lnRewardGold,
			@lnRewardExp,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestRoundAcceptanceLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestRoundAcceptanceLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@roundId			uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyQuestRoundAcceptanceLog (
			logId,
			heroId,
			roundId,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@roundId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestRoundCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestRoundCreationLog]
	@roundId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@weekStartDate		date,
	@nRoundNo			int,
	@nMissionId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyQuestRoundCreationLog (
			roundId,
			heroId,
			weekStartDate,
			roundNo,
			missionId,
			regTime)
		 VALUES (
			@roundId,
			@heroId,
			@weekStartDate,
			@nRoundNo,
			@nMissionId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestRoundRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestRoundRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@roundId			uniqueidentifier,
	@lnRewardGold		bigint,
	@lnRewardExp		bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyQuestRoundRewardLog (
			logId,
			heroId,
			roundId,
			rewardGold,
			rewardExp,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@roundId,
			@lnRewardGold,
			@lnRewardExp,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyQuestTenRoundRewardDetailLog (
			detailLogId,
			logId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		 VALUES (
			@detailLogId,
			@logId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWeeklyQuestTenRoundRewardLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@weekStartDate			date,
	@nCompletionRoundCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWeeklyQuestTenRoundRewardLog(
			logId,
			heroId,
			weekStartDate,
			completionRoundCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@weekStartDate,
			@nCompletionRoundCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingEnchantLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWingEnchantLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nPartId					int,
	@nPickEnchantCount			int,
	@nEnchantCount				int,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@nOldStep					int,
	@nOldLevel					int,
	@nOldExp					int,
	@nStep						int,
	@nLevel						int,
	@nExp						int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_HeroWingEnchantLog(
			logId,
			heroId,
			partId,
			pickEnchantCount,
			enchantCount,
			materialItemId,
			materialItemOwnCount,
			materialItemUnOwnCount,
			oldStep,
			oldLevel,
			oldExp,
			step,
			level,
			exp,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nPartId,
			@nPickEnchantCount,
			@nEnchantCount,
			@nMaterialItemId,
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@nOldStep,
			@nOldLevel,
			@nOldExp,
			@nStep,
			@nLevel,
			@nExp,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nSlotIndex			int,
	@nOldAttrValue		int,
	@nAttrValue			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWingMemoryPieceInstallationDetailLog (
			detailLogId,
			logId,
			slotIndex,
			oldAttrValue,
			attrValue)
		 VALUES (
			@detailLogId,
			@logId,
			@nSlotIndex,
			@nOldAttrValue,
			@nAttrValue)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWingMemoryPieceInstallationLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nWingId				int,
	@nMemoryPieceStep		int,
	@nType					int,
	@bSucceeded				bit,
	@bCriticalSucceeded		bit,
	@nUsedItemId			int,
	@nUsedItemOwnCount		int,
	@nUsedItemUnOwnCount	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWingMemoryPieceInstallationLog (
			logId,
			heroId,
			wingId,
			memoryPieceStep,
			type,
			succeeded,
			criticalSucceeded,
			usedItemId,
			usedItemOwnCount,
			usedItemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nWingId,
			@nMemoryPieceStep,
			@nType,
			@bSucceeded,
			@bCriticalSucceeded,
			@nUsedItemId,
			@nUsedItemOwnCount,
			@nUsedItemUnOwnCount,
			@regTime)

	IF @@ERROR <> 0
		RETURN 1

	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWingOpenLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWingOpenLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nRewardWingId	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWingOpenLog (logId, heroId, rewardWingId, regTime)
	  VALUES (@logId, @heroId, @nRewardWingId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWisdomTempleRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWisdomTempleRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nStep				int,
	@lnRewardExp		bigint,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWisdomTempleRewardDetailLog (
			detailLogId,
			logId,
			step,
			rewardExp,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@logId,
			@nStep,
			@lnRewardExp,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHeroWisdomTempleRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHeroWisdomTempleRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HeroWisdomTempleRewardLog (logId, heroId, instanceId, regTime)
		VALUES (@logId, @heroId, @instanceId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHolyWarQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHolyWarQuestRewardLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@instanceId					uniqueidentifier,
	@nKillCount					int,
	@nRewardExploitPoint		int,
	@nAcquiredExploitPoint		int,
	@lnRewardExp				bigint,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HolyWarQuestRewardLog (logId, heroId, instanceId, killCount, rewardExploitPoint, acquiredExploitPoint, rewardExp, regTime)
	  VALUES (@logId, @heroId, @instanceId, @nKillCount, @nRewardExploitPoint, @nAcquiredExploitPoint, @lnRewardExp, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddHonorShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddHonorShopProductBuyLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nProductId			int,
	@nBuyCount			int,
	@nUsedHonorPoint	int,
	@nItemId			int,
	@bItemOwned			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_HonorShopProductBuyLog (logId, heroId, productId, buyCount, usedHonorPoint, itemId, itemOwned, regTime)
	  VALUES (@logId, @heroId, @nProductId, @nBuyCount, @nUsedHonorPoint, @nItemId, @bItemOwned, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCompletionLog]
	@instanceId		uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InfiniteWarCompletionLog (instanceId, regTime)
		VALUES (@instanceId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCompletionMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nPoint			int,
	@lastKillTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InfiniteWarCompletionMemberLog (instanceId, heroId, point, lastKillTime)
		VALUES (@instanceId, @heroId, @nPoint, @lastKillTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCompletionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCompletionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InfiniteWarCompletionRewardDetailLog (
			detailLogId,
			instanceId,
			heroId,
			rewardItemId,
			rewardItemOwned,
			rewardItemcount)
		VALUES (
			@detailLogId,
			@instanceId,
			@heroId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInfiniteWarCreationLog]
	@instanceId		uniqueidentifier,
	@nScheduleId	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InfiniteWarCreationLog (instanceId, scheduleId, regTime)
		VALUES (@instanceId, @nScheduleId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInfiniteWarDisqualificationLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InfiniteWarDisqualificationLog(instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInfiniteWarMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInfiniteWarMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nLevel			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InfiniteWarMemberLog (instanceId, heroId, level)
		VALUES (@instanceId, @heroId, @nLevel)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddInventorySlotExtendLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddInventorySlotExtendLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nOldPaidInventorySlotCount	int,
	@nPaidInventorySlotCount	int,
	@nUsedOwnDia				int,
	@nUsedUnOwnDia				int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_InventorySlotExtendLog(
			logId,
			heroId,
			oldPaidInventorySlotCount,
			paidInventorySlotCount,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES(
			@logId,
			@heroId,
			@nOldPaidInventorySlotCount,
			@nPaidInventorySlotCount,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddItemCompositionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddItemCompositionLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nItemId					int,
	@nItemCount					int,
	@bItemOwned					bit,
	@nMaterialItemId			int,
	@nMaterialItemOwnCount		int,
	@nMaterialItemUnOwnCount	int,
	@lnUsedGold					bigInt,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ItemCompositionLog(
			logId, 
			heroId,
			itemId, 
			itemCount, 
			itemOwned, 
			materialItemId, 
			materialItemOwnCount, 
			materialItemUnOwnCount,
			usedGold,
			regTime)
		 VALUES (
			@logId, 
			@heroId, 
			@nItemId, 
			@nItemCount, 
			@bItemOwned, 
			@nMaterialItemId, 
			@nMaterialItemOwnCount,
			@nMaterialItemUnOwnCount,
			@lnUsedGold,
			@regTime)
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddItemUseLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddItemUseLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nItemId			int,
	@nItemOwnCount		int,
	@nItemUnOwnCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_ItemUseLog(
			logId,
			heroId,
			itemId,
			itemOwnCount,
			itemUnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nItemId,
			@nItemOwnCount,
			@nItemUnOwnCount,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddLevelRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddLevelRankingRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRankingNo			int,
	@nRanking			int,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_LevelRankingRewardLog(logId, heroId, rankingNo, ranking, itemId, itemCount, itemOwned, regTime)
	VALUES (@logId, @heroId, @nRankingNo, @nRanking, @nItemId, @nItemCount, @bItemOwned, @regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddLevelUpRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddLevelUpRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON

	INSERT
	  INTO t_LevelUpRewardDetailLog (detailLogId, logId, itemId, itemCount, itemOwned)
	VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddLevelUpRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddLevelUpRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nLevel				int,
	@nEntryId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON

	INSERT 
	  INTO t_LevelUpRewardLog (logId, heroId, level, entryId, regTime)
	VALUES (@logId, @heroId, @nLevel, @nEntryId, @regTime)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddMainGearBoxItemUseDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddMainGearBoxItemUseDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO t_MainGearBoxItemUseDetailLog(
			detailLogId,
			logId,
			itemId,
			itemCount,
			itemOwned)
		 VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0	
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddMysteryBoxQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddMysteryBoxQuestRewardLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@instanceId					uniqueidentifier,
	@nRewardExploitPoint		int,
	@nAcquiredExploitPoint		int,
	@lnRewardExp				bigint,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_MysteryBoxQuestRewardLog (logId, heroId, instanceId, rewardExploitPoint, acquiredExploitPoint, rewardExp, regTime)
	  VALUES (@logId, @heroId, @instanceId, @nRewardExploitPoint, @nAcquiredExploitPoint, @lnRewardExp, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationAllianceBrokenLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationAllianceBrokenLog]
	@allianceId				uniqueidentifier,
	@nNationId			int,
	@nTargetNationId	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationAllianceBrokenLog (
			allianceId,
			nationId,
			targetNationId,
			regTime)
		VALUES (
			@allianceId,
			@nNationId,
			@nTargetNationId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationAllianceLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationAllianceLog]
	@applicationId		uniqueidentifier,
	@nNationId			int,
	@lnUsedFund			bigint,
	@nTargetNationId	int,
	@lnTargetUsedFund	bigint,
	@allianceId			uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationAllianceLog (
			applicationId,
			nationId,
			usedFund,
			targetNationId,
			targetUsedFund,
			allianceId,
			regTime)
		VALUES (
			@applicationId,
			@nNationId,
			@lnUsedFund,
			@nTargetNationId,
			@lnTargetUsedFund,
			@allianceId,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationConnectionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationConnectionLog]
	@logId			uniqueidentifier,
	@nNationId		int,
	@nHeroCount		int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationConnectionLog (logId, nationId, heroCount)
	  VALUES (@logId, @nNationId, @nHeroCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationDonationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationDonationLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@nEntryId				int,
	@lnUsedGold				bigint,
	@nUsedOwnDia			int,
	@nUsedUnOwnDia			int,
	@nRewardExploitPoint	int,
	@nAcquiredExploitPoint	int,
	@nRewardNationFund		int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationDonationLog(
			logId,
			heroId,
			entryId,
			usedGold,
			usedOwnDia,
			usedUnOwnDia,
			rewardExploitPoint,
			acquiredExploitPoint,
			rewardNationFund)
		 VALUES (
			@logId,
			@heroId,
			@nEntryId,
			@lnUsedGold,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@nRewardExploitPoint,
			@nAcquiredExploitPoint,
			@nRewardNationFund)

	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationNoblesseAppointmentLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationNoblesseAppointmentLog]
	@logId				uniqueidentifier,
	@nNationId			int,
	@heroId				uniqueidentifier,
	@nNoblesseId		int,
	@targetHeroId		uniqueidentifier,
	@nTargetNoblesseId	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationNoblesseAppointmentLog (
			logId,
			nationId,
			heroId,
			noblesseId,
			targetHeroId,
			targetNoblesseId,
			regTime)
		VALUES (
			@logId,
			@nNationId,
			@heroId,
			@nNoblesseId,
			@targetHeroId,
			@nTargetNoblesseId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarAllianceRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarAllianceRewardLog]
	@logId				uniqueidentifier,
	@declarationId		uniqueidentifier,
	@heroId				uniqueidentifier,
	@bIsWin				bit,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarAllianceRewardLog (
			logId,
			declarationId,
			heroId,
			isWin,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@heroId,
			@bIsWin,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarCallLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarCallLog]
	@logId				uniqueidentifier,
	@declarationId		uniqueidentifier,
	@heroId				uniqueidentifier,
	@nContinentId		int,
	@fXPosition			float,
	@fYPosition			float,
	@fZPosition			float,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarCallLog (
			logId,
			declarationId,
			heroId,
			continentId,
			xPosition,
			yPosition,
			zPosition,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@heroId,
			@nContinentId,
			@fXPosition,
			@fYPosition,
			@fZPosition,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarConvergingAttackLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarConvergingAttackLog]
	@logId				uniqueidentifier,
	@declarationId		uniqueidentifier,
	@heroId				uniqueidentifier,
	@nTargetArrangeId	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarConvergingAttackLog (
			logId,
			declarationId,
			heroId,
			targetArrangeId,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@heroId,
			@nTargetArrangeId,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarDeclarationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarDeclarationLog]
	@logId				uniqueidentifier,
	@nType				int,
	@declarationId		uniqueidentifier,
	@nNationId			int,
	@heroId				uniqueidentifier,
	@nTargetNationId	int,
	@nUsedNationFund	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarDeclarationLog (
			logId,
			type,
			declarationId,
			nationId,
			heroId,
			targetNationId,
			usedNationFund,
			regTime)
		VALUES (
			@logId,
			@nType,
			@declarationId,
			@nNationId,
			@heroId,
			@nTargetNationId,
			@nUsedNationFund,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarHeroObjectiveRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarHeroObjectiveRewardLog]
	@logId						uniqueidentifier,
	@declarationId				uniqueidentifier,
	@heroId						uniqueidentifier,
	@bIsWin						bit,
	@nKillCount					int,
	@nImmediateRevivalCount		int,
	@nRewardOwnDia				int,
	@nRewardExploitPoint		int,
	@nAcquiredExploitPoint		int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarHeroObjectiveRewardLog (
			logId,
			declarationId,
			heroId,
			isWin,
			killCount,
			immediateRevivalCount,
			rewardOwnDia,
			rewardExploitPoint,
			acquiredExploitPoint,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@heroId,
			@bIsWin,
			@nKillCount,
			@nImmediateRevivalCount,
			@nRewardOwnDia,
			@nRewardExploitPoint,
			@nAcquiredExploitPoint,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarHeroTransmissionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarHeroTransmissionLog]
	@logId				uniqueidentifier,
	@declarationId		uniqueidentifier,
	@heroId				uniqueidentifier,
	@nType				int,
	@nCount				int,
	@nTargetArrangeId	int,
	@nUsedUnOwnDia		int,
	@nUsedOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarHeroTransmissionLog (
			logId,
			declarationId,
			heroId,
			type,
			count,
			targetArrangeId,
			usedUnOwnDia,
			usedOwnDia,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@heroId,
			@nType,
			@nCount,
			@nTargetArrangeId,
			@nUsedUnOwnDia,
			@nUsedOwnDia,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarNationPowerReward]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarNationPowerReward]
	@logId					uniqueidentifier,
	@declarationId			uniqueidentifier,
	@nNationId				int,
	@bIsWin					bit,
	@nAcquiredNationPower	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarNationPowerReward (
			logId,
			declarationId,
			nationId,
			isWin,
			acquiredNationPower,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@nNationId,
			@bIsWin,
			@nAcquiredNationPower,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarRankingRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarRankingRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nType			int,
	@nRanking		int,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarRankingRewardLog (
			logId,
			heroId,
			type,
			ranking,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@nType,
			@nRanking,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarRerwardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarRerwardLog]
	@logId					uniqueidentifier,
	@declarationId			uniqueidentifier,
	@heroId					uniqueidentifier,
	@bIsWin					bit,
	@nRewardExploitPoint	int,
	@nAcquiredExploitPoint	int,
	@lnRewardExp			bigint,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarrewardLog (
			logId,
			declarationId,
			heroId,
			isWin,
			rewardExploitPoint,
			acquiredExploitPoint,
			rewardExp,
			regTime)
		VALUES (
			@logId,
			@declarationId,
			@heroId,
			@bIsWin,
			@nRewardExploitPoint,
			@nAcquiredExploitPoint,
			@lnRewardExp,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddNationWarRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddNationWarRewardDetailLog]
	@detailLogId	uniqueidentifier,
	@logId			uniqueidentifier,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_NationWarRewardDetailLog (
			detailLogId,
			logId,
			itemId,
			itemCount,
			itemOwned)
		VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddPickBoxItemUseDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddPickBoxItemUseDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nType				int,
	@heroMainGearId		uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@heroMountGearId	uniqueidentifier,
	@nCreatureCardId	int,
	@nCreatureId		int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_PickBoxItemUseDetailLog(
			detailLogId,
			logId,
			type,
			heroMainGearId,
			itemId,
			itemCount,
			itemOwned,
			heroMountGearId,
			creatureCardId,
			creatureId)
		 VALUES (
			@detailLogId,
			@logId,
			@nType,
			@heroMainGearId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@heroMountGearId,
			@nCreatureCardId,
			@nCreatureId)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddPurchaseProvideCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddPurchaseProvideCompletionLog]
	@logId							uniqueidentifier,
	@purchaseId						uniqueidentifier,
	@nProductId						int,
	@heroId							uniqueidentifier,
	@nUnOwnDia						int,
	@nItemId						int,
	@bItemOwned						bit,
	@nItemCount						int,
	@nFirstPurchaseBonusUnOwnDia	int,
	@nVipPoint						int,
	@regTime						datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_PurchaseProvideCompletionLog (
			logId,
			purchaseId,
			productId,
			heroId,
			unOwnDia,
			itemId,
			itemOwned,
			itemCount,
			firstPurchaseBonusUnOwnDia,
			vipPoint,
			regTime)
		VALUES (
			@logId,
			@purchaseId,
			@nProductId,
			@heroId,
			@nUnOwnDia,
			@nItemId,
			@bItemOwned,
			@nItemCount,
			@nFirstPurchaseBonusUnOwnDia,
			@nVipPoint,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRankRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRankRewardDetailLog]
	@detailLogId	uniqueidentifier,
	@logId			uniqueidentifier,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RankRewardDetailLog (detailLogId, logId, itemId, itemCount, itemOwned)
	  VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRankRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRankRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@nRankNo		int,
	@lnRewardGold	bigint,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RankRewardLog (logId, heroId, rankNo, rewardGold, regTime)
	  VALUES (@logId, @heroId, @nRankNo, @lnRewardGold, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCompletionLog]
	@instanceId		uniqueidentifier,
	@nStatus		int,
	@nPlayTime		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimCompletionLog (instanceId, status, playTime, regTime)
		VALUES (@instanceId, @nStatus, @nPlayTime, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberLog]
	@instanceId				uniqueidentifier,
	@heroId					uniqueidentifier,
	@nBossMonsterDamage		int,
	@nSummonMonsterDamage	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimCompletionMemberLog (instanceId, heroId, bossMonsterDamage, summonMonsterDamage)
		VALUES (@instanceId, @heroId, @nBossMonsterDamage, @nSummonMonsterDamage)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCompletionMemberRewardLog]
	@rewardLogId		uniqueidentifier,
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nType				int,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimCompletionMemberRewardLog (
			rewardLogId,
			instanceId,
			heroId,
			type,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@rewardLogId,
			@instanceId,
			@heroId,
			@nType,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimCreationLog]
	@instanceId		uniqueidentifier,
	@nScheduleId	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimCreationLog (instanceId, scheduleId, regTime)
		VALUES (@instanceId, @nScheduleId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimDisqualificationLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimDisqualificationLog (instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nType			int,
	@nLevel			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimMemberLog (instanceId, heroId, type, level)
		VALUES (@instanceId, @heroId, @nType, @nLevel)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimObjectRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimObjectRewardLog]
	@logId				uniqueidentifier,
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nStep				int,
	@lnRewardGold		bigint,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimObjectRewardLog (
			logId,
			instanceId,
			heroId,
			step,
			rewardGold,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount,
			regTime)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nStep,
			@lnRewardGold,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimStepCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimStepCompletionLog]
	@instanceId		uniqueidentifier,
	@nStep			int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimStepCompletionLog (instanceId, step, regTime)
		VALUES (@instanceId, @nStep, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddRuinsReclaimStepCompletionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddRuinsReclaimStepCompletionRewardLog]
	@rewardLogId		uniqueidentifier,
	@instanceId			uniqueidentifier,
	@nStep				int,
	@heroId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_RuinsReclaimStepCompletionRewardLog (
			rewardLogId,
			instanceId,
			step,
			heroId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@rewardLogId,
			@instanceId,
			@nStep,
			@heroId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSecretLetterQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSecretLetterQuestRewardLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@instanceId					uniqueidentifier,
	@nRewardExploitPoint		int,
	@nAcquiredExploitPoint		int,
	@lnRewardExp				bigint,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SecretLetterQuestRewardLog (logId, heroId, instanceId, rewardExploitPoint, acquiredExploitPoint, rewardExp, regTime)
	  VALUES (@logId, @heroId, @instanceId, @nRewardExploitPoint, @nAcquiredExploitPoint, @lnRewardExp, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSeriesMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSeriesMissionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SeriesMissionRewardDetailLog(
			detailLogId,
			logId,
			itemId,
			itemCount,
			itemOwned)
		 VALUES	(
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSeriesMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSeriesMissionRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nMissionId			int,
	@nStep				int,
	@nProgressCount		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SeriesMissionRewardLog(
			logId,
			heroId,
			missionId,
			step,
			progressCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nMissionId,
			@nStep,
			@nProgressCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSimpleShopProductBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSimpleShopProductBuyLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nProductId			int,
	@nBuyCount			int,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit,
	@lnUsedGold			bigint,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SimpleShopProductBuyLog(
			logId,
			heroId,
			productId,
			buyCount,
			itemId,
			itemCount,
			itemOwned,
			usedGold,
			regTime)
		 VALUES(
			@logId,
			@heroId,
			@nProductId,
			@nBuyCount,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@lnUsedGold,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0	
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSimpleShopSellDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSimpleShopSellDetailLog]
	@detailLogId			uniqueidentifier,
	@logId					uniqueidentifier,
	@nSellSlotIndex			int,
	@nInventorySlotIndex	int,
	@nType					int,
	@heroMainGearId			uniqueidentifier,
	@nItemId				int,
	@nItemCount				int,
	@bItemOwned				bit,
	@heroMountGearId		uniqueidentifier,
	@lnGainedGold			bigint
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SimpleShopSellDetailLog(
			detailLogId,
			logId,
			sellSlotIndex,
			inventorySlotIndex,
			type,
			heroMainGearId,
			itemId,
			itemCount,
			itemOwned,
			heroMountGearId,
			gainedGold)
		 VALUES (
			@detailLogId,
			@logId,
			@nSellSlotIndex,
			@nInventorySlotIndex,
			@nType,
			@heroMainGearId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@heroMountGearId,
			@lnGainedGold)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSimpleShopSellLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSimpleShopSellLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT
	  INTO t_SimpleShopSellLog(logId, heroId, regTime)
	VALUES (@logId, @heroId, @regTime)

	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSoulCoveterRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSoulCoveterRewardDetailLog]
	@detailLogId	uniqueidentifier,
	@logId			uniqueidentifier,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SoulCoveterRewardDetailLog (
			detailLogId,
			logId,
			itemId,
			itemCount,
			itemOwned)
		VALUES (
			@detailLogId,
			@logId,
			@nItemId,
			@nItemCount,
			@bItemOwned)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSoulCoveterRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSoulCoveterRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@nDifficulty	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SoulCoveterRewardLog (
			logId,
			heroId,
			instanceId,
			difficulty,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@instanceId,
			@nDifficulty,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddStaminaBuyLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddStaminaBuyLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nOldStamina		int,
	@nStamina			int,
	@nBuyCount			int,
	@nUsedOwnDia		int,
	@nUsedUnOwnDia		int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_StaminaBuyLog(
			logId,
			heroId,
			oldStamina,
			stamina,
			buyCount,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nOldStamina,
			@nStamina,
			@nBuyCount,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddStoryDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddStoryDungeonPlayLog]
	@logId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nDungeonNo		int,
	@nDifficulty	int,
	@nStatus		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_StoryDungeonPlayLog (
			logId,
			instanceId,
			heroId,
			dungeonNo,
			difficulty,
			status,
			regTime)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nDungeonNo,
			@nDifficulty,
			@nStatus,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddStoryDungeonPlayRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddStoryDungeonPlayRewardLog]
	@logId			uniqueidentifier,
	@nNo			int,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit
	
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_StoryDungeonPlayRewardLog (logId, no, itemId, itemCount, itemOwned)
		VALUES (@logId, @nNo, @nItemId, @nItemCount, @bItemOwned)
		
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSubGearGradeUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSubGearGradeUpLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nSubGearId					int,
	@nOldLevel					int,
	@nLevel						int,
	@nOldGrade					int,
	@nGrade						int,
	@nMaterialItem1Id			int,
	@nMaterialItem1OwnCount		int,
	@nMaterialItem1UnOwnCount	int,
	@nMaterialItem2Id			int,
	@nMaterialItem2OwnCount		int,
	@nMaterialItem2UnOwnCount	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SubGearGradeUpLog(
			logId,
			heroId,
			subGearId,
			oldLevel,
			level,
			oldGrade,
			grade,
			materialItem1Id,
			materialItem1OwnCount,
			materialItem1UnOwnCount,
			materialItem2Id,
			materialItem2OwnCount,
			materialItem2UnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nSubGearId,
			@nOldLevel,
			@nLevel,
			@nOldGrade,
			@nGrade,
			@nMaterialItem1Id,
			@nMaterialItem1OwnCount,
			@nMaterialItem1UnOwnCount,
			@nMaterialItem2Id,
			@nMaterialItem2OwnCount,
			@nMaterialItem2UnOwnCount,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSubGearLevelUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSubGearLevelUpLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nSubGearId					int,
	@nOldLevel					int,
	@nLevel						int,
	@lnUsedGold					bigint,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_SubGearLevelUpLog(logId, heroId, subGearId, oldLevel, level, usedGold, regTime)
	VALUES (@logId, @heroId, @nSubGearId, @nOldLevel, @nLevel, @lnUsedGold, @regTime)

	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSubGearQualityUpLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSubGearQualityUpLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nSubGearId					int,
	@nLevel						int,
	@nOldQuality				int,
	@nQuality					int,
	@nMaterialItem1Id			int,
	@nMaterialItem1OwnCount		int,
	@nMaterialItem1UnOwnCount	int,
	@nMaterialItem2Id			int,
	@nMaterialItem2OwnCount		int,
	@nMaterialItem2UnOwnCount	int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SubGearQualityUpLog(
			logId,
			heroId,
			subGearId,
			level,
			oldQuality,
			quality,
			materialItem1Id,
			materialItem1OwnCount,
			materialItem1UnOwnCount,
			materialItem2Id,
			materialItem2OwnCount,
			materialItem2UnOwnCount,
			regTime)
		 VALUES (
			@logId,
			@heroId,
			@nSubGearId,
			@nLevel,
			@nOldQuality,
			@nQuality,
			@nMaterialItem1Id,
			@nMaterialItem1OwnCount,
			@nMaterialItem1UnOwnCount,
			@nMaterialItem2Id,
			@nMaterialItem2OwnCount,
			@nMaterialItem2UnOwnCount,
			@regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSupplySupportQuestCartDestructionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSupplySupportQuestCartDestructionRewardLog]
	@logId			uniqueidentifier,
	@heroId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@nCartId		int,
	@nItemId		int,
	@nItemCount		int,
	@bItemOwned		bit,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SupplySupportQuestCartDestructionRewardLog (
			logId,
			heroId,
			instanceId,
			cartId,
			itemId,
			itemCount,
			itemOwned,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@instanceId,
			@nCartId,
			@nItemId,
			@nItemCount,
			@bItemOwned,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSupplySupportQuestRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSupplySupportQuestRewardLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@instanceId				uniqueidentifier,
	@nStatus				int,
	@nCartId				int,
	@lnRewardExp			bigint,
	@lnRewardGold			bigint,
	@nRewardExploitPoint	int,
	@nAcquiredExploitPoint	int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SupplySupportQuestRewardLog (
			logId,
			heroId,
			instanceId,
			status,
			cartId,
			rewardExp,
			rewardGold,
			rewardExploitPoint,
			acquiredExploitPoint,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@instanceId,
			@nStatus,
			@nCartId,
			@lnRewardExp,
			@lnRewardGold,
			@nRewardExploitPoint,
			@nAcquiredExploitPoint,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddSupplySupportQuestStartLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddSupplySupportQuestStartLog]
	@logId					uniqueidentifier,
	@heroId					uniqueidentifier,
	@instanceId				uniqueidentifier,
	@nOrderItemId			int,
	@nOrderItemCount		int,
	@bOrderItemOwned		bit,
	@nUsedGuaranteeGold		int,
	@regTime				datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_SupplySupportQuestStartLog (
			logId,
			heroId,
			instanceId,
			orderItemId,
			orderItemCount,
			orderItemOwned,
			usedGuaranteeGold,
			regTime)
		VALUES (
			@logId,
			@heroId,
			@instanceId,
			@nOrderItemId,
			@nOrderItemCount,
			@bOrderItemOwned,
			@nUsedGuaranteeGold,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTodayMissionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTodayMissionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_TodayMissionRewardDetailLog(detailLogId, logId, itemId, itemCount, itemOwned)
	VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTodayMissionRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTodayMissionRewardLog]
	@logId				uniqueidentifier,
	@heroId				uniqueidentifier,
	@nMissionId			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_TodayMissionRewardLog(logId, heroId, missionId, regTime)
	VALUES (@logId, @heroId, @nMissionId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTradeShipCompletionLog]
	@instanceId		uniqueidentifier,
	@nStatus		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_TradeShipCompletionLog (instanceId, status, regTime)
		VALUES (@instanceId, @nStatus, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCompletionMemberAdditionalRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTradeShipCompletionMemberAdditionalRewardLog]
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardExpType		int,
	@lnRewardExp		bigint,
	@nUsedUnOwnDia		int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_TradeShipCompletionMemberAdditionalRewardLog (
			instanceId,
			heroId,
			rewardExpType,
			rewardExp,
			usedUnOwnDia)
		VALUES (
			@instanceId,
			@heroId,
			@nRewardExpType,
			@lnRewardExp,
			@nUsedUnOwnDia)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCompletionMemberRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTradeShipCompletionMemberRewardLog]
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@lnRewardGold		bigint,
	@lnRewardExp		bigint,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_TradeShipCompletionMemberRewardLog (
			instanceId,
			heroId,
			rewardGold,
			rewardExp,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@instanceId,
			@heroId,
			@lnRewardGold,
			@lnRewardExp,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTradeShipCreationLog]
	@instanceId		uniqueidentifier,
	@nDifficulty	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_TradeShipCreationLog (instanceId, difficulty, regTime)
		VALUES (@instanceId, @nDifficulty, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipMemberDisqualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTradeShipMemberDisqualificationLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_TradeShipMemberDisqualificationLog (instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddTradeShipMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddTradeShipMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nLevel			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_TradeShipMemberLog (instanceId, heroId, level)
		VALUES (@instanceId, @heroId, @nLevel)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddUndergroundMazePlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddUndergroundMazePlayLog]
	@logId			uniqueidentifier,
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nPlayTime		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_UndergroundMazePlayLog (
			logId,
			instanceId,
			heroId,
			playTime,
			regTime)
		VALUES (
			@logId,
			@instanceId,
			@heroId,
			@nPlayTime,
			@regTime)
			
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddVipLevelRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddVipLevelRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@logId				uniqueidentifier,
	@nItemId			int,
	@nItemCount			int,
	@bItemOwned			bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT
	  INTO t_VipLevelRewardDetailLog(detailLogId, logId, itemId, itemCount, itemOwned)
	VALUES (@detailLogId, @logId, @nItemId, @nItemCount, @bItemOwned)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddVipLevelRewardLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddVipLevelRewardLog]
	@logId				uniqueidentifier,
	@accountId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nVipLevel			int,
	@regTime			datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT 
	  INTO t_VipLevelRewardLog(logId, accountId, heroId, vipLevel, regTime)
	VALUES (@logId, @accountId, @heroId, @nVipLevel, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarehouseSlotExtendLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarehouseSlotExtendLog]
	@logId						uniqueidentifier,
	@heroId						uniqueidentifier,
	@nOldPaidWarehouseSlotCount	int,
	@nPaidWarehouseSlotCount	int,
	@nUsedOwnDia				int,
	@nUsedUnOwnDia				int,
	@regTime					datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarehouseSlotExtendLog (
			logId,
			heroId,
			oldPaidWarehouseSlotCount,
			paidWarehouseSlotCount,
			usedOwnDia,
			usedUnOwnDia,
			regTime)
		 VALUES (
		 	@logId,
			@heroId,
			@nOldPaidWarehouseSlotCount,
			@nPaidWarehouseSlotCount,
			@nUsedOwnDia,
			@nUsedUnOwnDia,
			@regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCompletionLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarMemoryCompletionLog]
	@instanceId		uniqueidentifier,
	@nStatus		int,
	@nPlayTime		int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarMemoryCompletionLog (instanceId, status, playTime, regTime)
		VALUES (@instanceId, @nStatus, @nPlayTime, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCompletionMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarMemoryCompletionMemberLog]
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@lnRewardExp		bigint,
	@nPoint				int,
	@pointUpdateTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarMemoryCompletionMemberLog (
			instanceId,
			heroId,
			rewardExp,
			point,
			pointUpdateTime)
		VALUES (
			@instanceId,
			@heroId,
			@lnRewardExp,
			@nPoint,
			@pointUpdateTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCompletionRewardDetailLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarMemoryCompletionRewardDetailLog]
	@detailLogId		uniqueidentifier,
	@instanceId			uniqueidentifier,
	@heroId				uniqueidentifier,
	@nRewardItemId		int,
	@bRewardItemOwned	bit,
	@nRewardItemCount	int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarMemoryCompletionRewardDetailLog (
			detailLogId,
			instanceId,
			heroId,
			rewardItemId,
			rewardItemOwned,
			rewardItemCount)
		VALUES (
			@detailLogId,
			@instanceId,
			@heroId,
			@nRewardItemId,
			@bRewardItemOwned,
			@nRewardItemCount)
		
	IF @@ERROR <> 0	
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryCreationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarMemoryCreationLog]
	@instanceId		uniqueidentifier,
	@nScheduleId	int,
	@regTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarMemoryCreationLog (instanceId, scheduleId, regTime)
		VALUES (@instanceId, @nScheduleId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryDisQualificationLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarMemoryDisQualificationLog]
	@instanceId uniqueidentifier,
	@heroId uniqueidentifier,
	@regTime datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarMemoryDisqualificationLog (instanceId, heroId, regTime)
		VALUES (@instanceId, @heroId, @regTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWarMemoryMemberLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWarMemoryMemberLog]
	@instanceId		uniqueidentifier,
	@heroId			uniqueidentifier,
	@nType			int,
	@nLevel			int
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WarMemoryMemberLog (instanceId, heroId, type, level)
		VALUES (@instanceId, @heroId, @nType, @nLevel)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWorkLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWorkLog]
	@logId		uniqueidentifier,
	@logTime	datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WorkLog (logId, logTime)
	  VALUES (@logId, @logTime)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWorkLogEntry]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWorkLogEntry]
	@entryId		uniqueidentifier,
	@logId			uniqueidentifier,
	@sTypeName		nvarchar(max),
	@lnRequestCount	bigint
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WorkLogEntry (entryId, logId, typeName, requestCount)
	  VALUES (@entryId, @logId, @sTypeName, @lnRequestCount)
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0 
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_AddWorkQueueLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_AddWorkQueueLog]
	@logId			uniqueidentifier,
	@nWorkCount		int,
	@logTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO t_WorkQueueLog (logId, workCount, logTime)
		VALUES (@logId, @nWorkCount, @logTime)
		
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateExpDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_UpdateExpDungeonPlayLog]
	@logId			uniqueidentifier,
	@nStatus		int,
	@lnRewardExp	bigint
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE t_ExpDungeonPlayLog
	   SET status = @nStatus, rewardExp = @lnRewardExp
	 WHERE logId = @logId
	
	IF @@ERROR <> 0 or @@ROWCOUNT <> 1
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateGoldDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_UpdateGoldDungeonPlayLog]
	@logId			uniqueidentifier,
	@nStatus		int,
	@lnRewardGold	bigint
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE t_GoldDungeonPlayLog
	SET status = @nStatus, rewardGold = @lnRewardGold
	WHERE logId = @logId
	
	IF @@ERROR <> 0 or @@ROWCOUNT <> 1
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateHeroCreatureCardShopRandomProoductLog_Purchase]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_UpdateHeroCreatureCardShopRandomProoductLog_Purchase]
	@shopId				uniqueidentifier,
	@nProductId			int,
	@nUsedSoulPowder	int,
	@purchasedTime		datetimeoffset
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE t_HeroCreatureCardShopRandomProductLog
	   SET purchased = 1,
		   usedSoulPowder = @nUsedSoulPowder,
		   purchasedTime = @purchasedTime
	 WHERE shopId = @shopId
	   AND productId = @nProductId
	
	IF @@ERROR <> 0
		RETURN 1
	
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateStoryDungeonPlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_UpdateStoryDungeonPlayLog]
	@logId		uniqueidentifier,
	@nStatus	int
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE t_StoryDungeonPlayLog
	   SET status = @nStatus
	 WHERE logId = @logId
	
	IF @@ERROR <> 0 OR @@ROWCOUNT <> 1
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspPGApi_UpdateUndergroundMazePlayLog]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspPGApi_UpdateUndergroundMazePlayLog]
	@logId		uniqueidentifier,
	@nPlayTime	int
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE t_UndergroundMazePlayLog 
	   SET playTime = @nPlayTime
	 WHERE logId = @logId
	
	IF @@ERROR <> 0 or @@ROWCOUNT <> 1
		RETURN 1
		
	RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[uspSchedule_TruncateSystemLogs]    Script Date: 2023/4/7 11:49:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
CREATE   PROCEDURE [dbo].[uspSchedule_TruncateSystemLogs]
AS
BEGIN

	SET NOCOUNT ON
	
	TRUNCATE TABLE t_ConnectionLog
	TRUNCATE TABLE t_NationConnectionLog
	TRUNCATE TABLE t_WorkLog
	TRUNCATE TABLE t_WorkLogEntry
	TRUNCATE TABLE t_WorkQueueLog
	  
END
GO
