USE [Rappelz_User]
GO
INSERT [dbo].[s_SystemGameConfig] ([nameRegex], [defaultLanguageId], [partyNameRegex]) VALUES (N'^[a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣]{2,8}$', 23, N'^[a-zA-Z0-9ㄱ-ㅎㅏ-ㅣ가-힣]{2,8}$')
GO
