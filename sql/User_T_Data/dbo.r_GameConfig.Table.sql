USE [Rappelz_User]
GO
INSERT [dbo].[r_GameConfig] ([maxHeroCount], [startContinentId], [startXPosition], [startYPosition], [startZPosition], [startRadius], [startYRotationType], [floatstartYRotation], [mainGearOptionAttrMinCount], [mainGearOptionAttrMaxCount], [mailRetentionDay], [mainGearRefinementItemId], [battleModeDuration], [specialSkillId], [specialSkillMaxLak], [freeImmediateRevivalDailyCount], [autoSaftyRevivalWatingTime], [startContinentSaftyRevivalXPosition], [startContinentSaftyRevivalYPosition], [startContinentSaftyRevivalZPosition], [startContinentSaftyRevivalRadius], [startContinentSaftyRevivalYRotationType], [startContinentSaftyRevivalYRotation], [saftyRevivalContinentId], [saftyRevivalXPosition], [saftyRevivalYPosition], [saftyRevivalZPosition], [saftyRevivalRadius], [saftyRevivalYRotationType], [saftyRevivalYRotation], [simpleShopSellSlotCount], [mainGearDisassembleSlotCount], [restRewardGoldReceiveExpRate], [restRewardDiaReceiveExpRate], [partyMemberMaxCount], [partyMemberLogOutDuration], [partyInvitationLifetime], [partyApplicationLifetime], [partyCallCoolTime], [chattingMaxLength], [chattingMinInterval], [worldChattingDisplayDuration], [chattingSendHistoryMaxCount], [worldChattingItemId], [weekendAttendItemRewardId], [mountQualityUpRequiredLevelUpCount], [equippedMountAttrFactor], [unequippedMountAttrFactor], [mountGearOptionAttrCount], [mountGearRefinementItemId], [mountLevelUpItemId], [chattingBubbleDisplayDuration], [dungeonFreeSweepDailyCount], [dungeonSweepItemId], [chattingDisplayMaxCount], [wingEnchantItemId], [wingEnchantExp], [maxStamina], [staminaRecoveryTime], [defaultToastDisplayDuration], [defaultToastDisplayCount], [itemToastDisplayDuration], [battlePowerToastDisplayDuration], [contentOpenToastDisplayDuration], [locationAreaToastDisplayDuration], [wingVisibleMinVipLevel], [hpPotionAutoUseHpRate], [standingBattleRange], [shortDistanceBattleRange], [optimizationModeWaitingTime], [deadWarningDisplayHpRate], [pvpMinHeroLevel], [cartNormalSpeed], [cartHighSpeed], [cartAccelSuccessRate], [cartHighSpeedDuration], [cartHighSpeedDurationExtension], [cartAccelCoolTime], [worldLevelExpBuffMinHeroLevel], [nationTransmissionExitXPosition], [nationTransmissionExitYPosition], [nationTransmissionExitZPosition], [nationTransmissionExitRadius], [nationTransmissionExitYRotationType], [nationTransmissionExitYRotation], [guideToastDisplayDuration], [nationTransmissionRequiredHeroLevel], [bountyHunterQuestMaxCount], [todayMissionCount], [fieldOfHonorDisplayMaxRanking], [fieldOfHonorDisplayHistoryCount], [rankingDisplayMaxCount], [guildRequiredHeroLevel], [guildCreationRequiredVipLevel], [guildCreationRequiredDia], [guildRejoinIntervalTime], [guildDailyApplicationMaxCount], [guildDailyBanishmentMaxCount], [guildInvitationLifetime], [guildNoticeMaxLength], [guildApplicationReceptionMaxCount], [guildViceMasterCount], [guildLordCount], [guildRankingDisplayMaxCount], [rankOpenRequiredMainQuestNo], [wingOpenRequiredHeroLevel], [wingOpenProvideWingId], [guildCallLifetime], [guildCallRadius], [nationCallLifeTime], [nationCallRadius], [guildDailyObjectiveNoticeTextKey], [guildDailyObjectiveNoticeCoolTime], [guildHuntingDonationMaxCount], [guildHuntingDonationItemId], [guildHuntingDonationItemRewardId], [guildHuntingDonationCompletionItemRewardId], [defaultGuildWeeklyObjectiveId], [nationWarMonsterBattleModeDuration], [signBoardDisplayDuration], [noticeBoardDisplayDuration], [creatureCardShopRandomProductCount], [creatureCardShopPaidRefreshDia], [restRewardRequiredHeroLevel], [guideActivationRequiredHeroLevel], [accelerationRequiredMoveDuration], [accelerationMoveSpeed], [sceneryQuestRequiredMainQuestNo], [menuContentOpenPreviewRequiredHeroLevel], [monsterGroggyDuration], [monsterStealDuration], [rookieGiftScratchOpenDuration], [openGiftRequiredHeroLevel], [bountyHunterQuestRequiredHeroLevel], [open7DayEventRequiredMainQuestNo], [taskConsignmentRequiredVipLevel], [eliteMonsterKillApplicationRequiredHeroLevel], [nationAllianceUnavailableStartTime], [nationAllianceUnavailableEndTime], [nationAllianceRequiredFund], [nationAllianceRenounceUnavailableDuration], [nationBasePower], [costumeEnchantItemId], [costumeCollectionActivationItemId], [costumeCollectionShuffleItemId], [costumeCollectionShuffleItemCount], [mountAwakeningRequiredHeroLevel], [mountAwakeningItemId], [mountPotionAttrItemId], [artifactRequiredConditionType], [artifactRequiredConditionValue], [artifactMaxLevel], [chargeEventRequiredHeroLevel], [consumeEventRequiredHeroLevel], [jobChangeRequiredHeroLevel], [jobChangeRequiredItemId], [jobChangeQuestCompletionClientTutorialId], [warehouseRequiredVipLevel], [freeWarehouseSlotCount], [startYRotation], [wingMemoryPieceInstallationRequiredHeroLevel], [ordealQuestSlotCount], [friendMaxCount], [tempFriendMaxCount], [tempFriendKeepDay], [deadRecordMaxCount], [blacklistEntryMaxCount], [blessingQuestListMaxCount], [blessingQuestLimitTime], [blessingQuestRequiredHeroLevel], [blessingListMaxCount], [blessingLimitTime], [presentPopularityPointRankingDisplayMaxCount], [presentContributionPointRankingDisplayMaxCount], [ownerProspectQuestListMaxCount], [targetProspectQuestListMaxCount], [creatureRequiredHeroLevel], [creatureMaxCount], [creatureCheerMaxCount], [creatureCheerAttrFactor], [creatureEvaluationFactor], [creatureAdditionalAttrCount], [creatureSkillSlotMaxCount], [creatureSkillSlotBaseOpenCount], [creatureCompositionExpRetrievalRate], [creatureCompositionExpRetrievalResultItemId], [creatureCompositionSkillProtectionItemId], [creatureInjectionExpRetrievalRate], [creatureInjectionExpRetrievalResultItemId], [creatureAdditionalAttrSwitchRequiredItemId], [creatureReleaseExpRetrievalRate], [creatureReleaseExpRetrievalResultItemId], [creatureVariationRequiredItemId], [guildBlessingGuildTerritoryNpcId], [open7DayEventCostumeItemRewardId], [open7DayEventCostumeRewardRequiredItemId], [open7DayEventCostumeRewardRequiredItemCount], [participationCreatureDisplayRequiredVipLevel]) VALUES (1, 1, 26.55, 23.95, 44.95, 0.5, 1, 210, 1, 5, 15, 12301, 7, 5, 20000, 3, 300, 73.62, 22.248, 29.92, 4, 2, 0, 2, 384.18, 58.2, 315.28, 3, 2, 0, 10, 10, 12000, 15000, 5, 6000, 10, 10, 60, 100, 2, 20, 5, 501, 90000000100, 1, 0.5, 3, 12601, 12501, 3, 3, 1001, 30, 1201, 10, 160, 600, 2, 3, 5, 5, 2, 1.5, 1.5, 1, 1, 8, 15, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, N'1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
