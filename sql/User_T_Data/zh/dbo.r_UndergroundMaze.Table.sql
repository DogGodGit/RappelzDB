USE [Rappelz_User]
GO
INSERT [dbo].[r_UndergroundMaze] ([_name], [nameKey], [_description], [descriptionKey], [sceneName], [requiredHeroLevel], [limitTime], [startXPosition], [startYPosition], [startZPosition], [startRadius], [startYRotationType], [startYRotation], [locationId], [x], [y], [z], [xSize], [ySize], [zSize], [targetTitleKey], [targetContentKey], [_targetTitle], [_targetContent], [requiredMainQuestNo], [requiredConditionType]) VALUES (N'지하 미로', N'MAZE_NAME_1', N'어쩌고저쩌고', N'MAZE_DESC_1', N'Dun10_Hunting', 37, 3600, 29.08, 20.26, 55.03, 3, 1, 90, 110, 0, 0, 0, 500, 500, 500, N'MAZE_TITLE_1', N'MAZE_CONTENT_1', N'.', N'.', 0, 0)
GO
