USE [Rappelz_User]
GO
INSERT [dbo].[r_SoulCoveter] ([_name], [nameKey], [_description], [descriptionKey], [requiredHeroLevel], [requiredStamina], [memberCount], [enterWaitingTime], [startDelayTime], [limitTime], [exitDelayTime], [waveIntervalTime], [startXPosition], [startYPosition], [startZPosition], [startRadius], [startYRotationType], [startYRotation], [safeRevivalWaitingTime], [locationId], [x], [y], [z], [xSize], [ySize], [zSize], [sceneName], [requiredMainQuestNo], [requiredConditionType], [enterMinMemberCount], [enterMaxMemberCount], [matchingWaitingTime]) VALUES (N'영혼을 탐하는 자', N'SOULSEEKER_NAME_1', N'123', N'SOULSEEKER_DESC_1', 45, 10, 5, 10, 10, 1800, 30, 3, 44.1, 44.69, 86.41, 5, 1, 180, 30, 116, 0, 0, 0, 100, 200, 100, N'Dun13_Soulseeker', 0, 0, 0, 0, 0)
GO
