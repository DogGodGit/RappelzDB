USE [Rappelz_User]
GO
INSERT [dbo].[tmp_r_GuildDonationEntry] ([entryId], [_name], [nameKey], [moneyType], [moneyAmount], [guildContributionPointRewardId], [guildFundRewardId]) VALUES (1, N'띠끌모아', N'GUILD_FUND_1', 1, 10000, 10000000001, 10000000001)
INSERT [dbo].[tmp_r_GuildDonationEntry] ([entryId], [_name], [nameKey], [moneyType], [moneyAmount], [guildContributionPointRewardId], [guildFundRewardId]) VALUES (2, N'거액기부', N'GUILD_FUND_2', 1, 100000, 10000000002, 10000000002)
INSERT [dbo].[tmp_r_GuildDonationEntry] ([entryId], [_name], [nameKey], [moneyType], [moneyAmount], [guildContributionPointRewardId], [guildFundRewardId]) VALUES (3, N'기부천사', N'GUILD_FUND_3', 2, 100, 10000000003, 10000000003)
GO
