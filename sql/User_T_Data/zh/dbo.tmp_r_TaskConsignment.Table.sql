USE [Rappelz_User]
GO
INSERT [dbo].[tmp_r_TaskConsignment] ([consignmentId], [_name], [nameKey], [_description], [descriptionKey], [requiredItemId], [requiredItemCount], [completionRequiredTime], [immediateCompletionRequiredGold], [immediateCompletionRequiredGoldReduceInterval], [todayTaskId], [rewardGuildContributionPointRewardId], [rewardGuildBuildingPointRewardId], [rewardGuildFundRewardId]) VALUES (1, N'지하 미로', N'CONSIGN_NAME_1', N'.', N'CONSIGN_DESC_1', 101, 1, 3600, 300000, 60, 8, 0, 0, 0)
INSERT [dbo].[tmp_r_TaskConsignment] ([consignmentId], [_name], [nameKey], [_description], [descriptionKey], [requiredItemId], [requiredItemCount], [completionRequiredTime], [immediateCompletionRequiredGold], [immediateCompletionRequiredGoldReduceInterval], [todayTaskId], [rewardGuildContributionPointRewardId], [rewardGuildBuildingPointRewardId], [rewardGuildFundRewardId]) VALUES (3, N'길드 현상금', N'CONSIGN_NAME_3', N'.', N'CONSIGN_DESC_3', 101, 1, 1800, 150000, 60, 25, 1, 1, 1)
INSERT [dbo].[tmp_r_TaskConsignment] ([consignmentId], [_name], [nameKey], [_description], [descriptionKey], [requiredItemId], [requiredItemCount], [completionRequiredTime], [immediateCompletionRequiredGold], [immediateCompletionRequiredGoldReduceInterval], [todayTaskId], [rewardGuildContributionPointRewardId], [rewardGuildBuildingPointRewardId], [rewardGuildFundRewardId]) VALUES (4, N'길드 미션', N'CONSIGN_NAME_4', N'.', N'CONSIGN_DESC_4', 101, 3, 1800, 150000, 60, 20, 0, 0, 0)
GO
