USE [Rappelz_User]
GO
INSERT [dbo].[r_NationDonationEntry] ([entryId], [_name], [nameKey], [moneyType], [moneyAmount], [exploitPointRewardId], [nationFundRewardId]) VALUES (1, N'띠끌모아', N'NATION_FUND_1', 1, 10000, 70000000001, 10000000001)
INSERT [dbo].[r_NationDonationEntry] ([entryId], [_name], [nameKey], [moneyType], [moneyAmount], [exploitPointRewardId], [nationFundRewardId]) VALUES (2, N'거액기부', N'NATION_FUND_2', 1, 100000, 70000000002, 10000000002)
INSERT [dbo].[r_NationDonationEntry] ([entryId], [_name], [nameKey], [moneyType], [moneyAmount], [exploitPointRewardId], [nationFundRewardId]) VALUES (3, N'기부천사', N'NATION_FUND_3', 2, 200, 70000000003, 10000000003)
GO
