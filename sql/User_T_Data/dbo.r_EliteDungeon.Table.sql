USE [Rappelz_User]
GO
INSERT [dbo].[r_EliteDungeon] ([_name], [nameKey], [_description], [descriptionKey], [_targetTitle], [targetTitleKey], [_targetContent], [targetContentKey], [baseEnterCount], [enterCountAddInterval], [requiredStamina], [sceneName], [startDelayTime], [limitTime], [exitDelayTime], [startxPosition], [startyPosition], [startzPosition], [startyRotation], [monsterxPosition], [monsteryPosition], [monsterzPosition], [monsteryRotation], [locationId], [x], [y], [z], [xSize], [ySize], [zSize], [safeRevivalWaitingTime]) VALUES (N'정예 던전', N'DUN_ELITE_NAME', 123, N'DUN_ELITE_DESC', N'정예 던전', N'ELITE_TTITLE_1', N'소환된 정예 몬스터 처치', N'ELITE_TCONTENT_1', 1, 3600, 5, N'Dun19_Rondo', 5, 300, 10, 39.38, 21.07, 30.58, 315, 30.56, 21.07, 39.4, 135, 117, 0, 0, 0, 70, 500, 70, 10)
GO
