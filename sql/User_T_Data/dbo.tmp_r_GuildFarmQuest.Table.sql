USE [Rappelz_User]
GO
INSERT [dbo].[tmp_r_GuildFarmQuest] ([_name], [nameKey], [_description], [descriptionKey], [startTime], [endTime], [limitCount], [questGuildTerritoryNpcId], [targetGuildTerritoryNpcId], [interactionDuration], [interactionTextKey], [completionItemRewardId], [questStartDialogueKey], [questCompletionDialogueKey], [targetTitleKey], [targetContentKey], [targetCompletionKey], [completionGuildContributionPointRewardId], [completionGuildBuildingPointRewardId]) VALUES (N'길드 농장', N'GUILDFARM_TITLE_1', N'우물에서 물 긷기', N'GUILDFARM_CONTENT_1', 75600, 76500, 10, 2, 6, 3, N'GUILDFARM_INTER_1', 260000000001, N'GUILDFARM_SD_1', N'GUILDFARM_CD_1', N'GUILDFARM_TTITLE_1', N'GUILDFARM_TCONTENT_1', N'GUILDFARM_TCOMPLE_1', 20000000001, 20000000001)
GO
