USE [Rappelz_Gate]
GO
INSERT [dbo].[s_Platform] ([platformId], [name], [downloadUrl]) VALUES (1, N'android', N'www.google.com')
INSERT [dbo].[s_Platform] ([platformId], [name], [downloadUrl]) VALUES (2, N'ios', N'')
GO
INSERT [dbo].[s_StageFarm] ([farmId], [name], [serverUrl]) VALUES (1, N'DEV', N'http://127.0.0.1:8090/Api.ashx')
GO
INSERT [dbo].[s_StageFarmVersion] ([platformId], [versionName], [buildNo], [farmId], [enabled], [internalFarmId]) VALUES (1, N'1.0.0', 1, 1, 1, 1)
GO
