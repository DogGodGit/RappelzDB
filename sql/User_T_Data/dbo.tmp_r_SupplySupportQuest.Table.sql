USE [Rappelz_User]
GO
INSERT [dbo].[tmp_r_SupplySupportQuest] ([_targetTitle], [targetTitleKey], [_targetContent], [targetContentKey], [requiredHeroLevel], [startNpcId], [completionNpcId], [limitCount], [guaranteeGold], [limitTime], [startDialogueKey], [completionDialogueKey], [completionTextKey], [failGuideImageName], [failGuideTitleKey], [failGuideContentKey]) VALUES (N'보급 지원', N'SUPPLY_TTITLE_1', N'세리우 사막에 보급하기', N'SUPPLY_TCONTENT_1', 30, 2105, 4001, 2, 20000, 1800, N'SUPPLY_SD_1', N'SUPPLY_CD_1', N'SUPPLY_CT_1', N'frm_guide_npc01', N'SUPPLY_FGT_1', N'SUPPLY_FGC_1')
GO
