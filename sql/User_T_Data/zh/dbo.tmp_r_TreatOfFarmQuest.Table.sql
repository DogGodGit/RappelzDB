USE [Rappelz_User]
GO
INSERT [dbo].[tmp_r_TreatOfFarmQuest] ([requiredHeroLevel], [_title], [titleKey], [_targetMovingText], [targetMovingTextKey], [_targetKillText], [targetKillTextKey], [limitCount], [questNpcId], [monsterKillLimitTime], [_targetMovingDescription], [targetMovingDescriptionKey], [_targetKillDescription], [targetKillDescriptionKey], [startDialogueKey], [completionDialogueKey], [completionTextKey]) VALUES (40, N'농장의 위협', N'THREAT_TITLE_1', N'{0} 로 이동', N'THREAT_MOVE_1', N'{0} 처치하기', N'THREAT_KILL_1', 5, 2006, 300, N'.', N'THREAT_MOVED_1', N'.', N'THREAT_KILLD_1', N'THREAT_START_1', N'THREAT_COMPLETE_1', N'THREAT_CT_1')
GO
