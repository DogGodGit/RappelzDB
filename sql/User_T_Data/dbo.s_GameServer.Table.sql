USE [Rappelz_User]
GO
INSERT [dbo].[s_GameServer] ([serverId], [name], [groupId], [apiUrl], [proxyServer], [proxyServerPort], [gameDBConnection], [currentUserCount], [status], [isNew], [isMaintenance], [sortNo], [deleted], [delTime], [regTime], [openTime], [gameLogDBConnection], [recommendable], [isPublic]) VALUES (1, N'Origin', 1, N'http://127.0.0.1:8090/Api.ashx', N'127.0.0.1', 30001, N'Data Source=127.0.0.1,1433; Initial Catalog=Rappelz_Game1; User ID=RappelzAdmin; Password=4851044', 0, 1, 1, 0, 1, 0, NULL, CAST(N'2017-05-22T19:55:10.6389193+09:00' AS DateTimeOffset), CAST(N'2019-10-21T11:52:12.2935276+08:00' AS DateTimeOffset), N'Data Source=127.0.0.1,1433; Initial Catalog=Rappelz_Logs; User ID=RappelzAdmin; Password=4851044', 1, 1)
GO
