USE [Rappelz_User]
GO
INSERT [dbo].[r_WeeklyQuest] ([_title], [titleKey], [roundCount], [requiredHeroLevel], [roundRefreshRequiredGold], [roundImmediateCompletionRequiredItemId], [tenRoundCompletionRequiredVipLevel], [tenRoundCompletionRewardFactor]) VALUES (N'주간 퀘스트', N'WQUEST_TITLE_1', 200, 50, 5000, 1002, 9, 1.2)
GO
