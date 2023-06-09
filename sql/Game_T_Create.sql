USE [Rappelz_Game1]
GO
/****** Object:  Table [dbo].[r_Blessing]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Blessing](
	[blessingId] [int] IDENTITY(1,1) NOT NULL,
	[_name] [nvarchar](20) NULL,
	[nameKey] [varchar](20) NULL,
	[_description] [nvarchar](100) NULL,
	[descriptionKey] [varchar](20) NULL,
	[moneyType] [int] NULL,
	[moneyAmount] [int] NULL,
	[senderItemRewardId] [bigint] NULL,
	[receiverGoldRewardId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[blessingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[s_System]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_System](
	[serverOpenDate] [date] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_Account]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Account](
	[accountId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[lastLoginTime] [datetimeoffset](7) NULL,
	[lastLoginIp] [varchar](15) NULL,
	[lastHeroId] [uniqueidentifier] NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[firstChargeEventRewarded] [bit] NOT NULL,
	[rechargeEventAccUnOwnDia] [int] NOT NULL,
	[rechargeEventRewarded] [bit] NOT NULL,
	[firstChargeEventObjectiveCompleted] [bit] NOT NULL,
	[virtualGameServerId] [int] NULL,
	[baseUnOwnDia] [int] NULL,
	[bonusUnOwnDia] [int] NULL,
	[vipPoint] [int] NULL,
 CONSTRAINT [pk_t_Account] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountChargeEvent]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountChargeEvent](
	[accountId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[accUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountChargeEvent] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountChargeEventMissionReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountChargeEventMissionReward](
	[accountId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountChargeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[eventId] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountConsumeEvent]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountConsumeEvent](
	[accountId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[accDia] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountConsumeEvent] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountConsumeEventMissionReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountConsumeEventMissionReward](
	[accountId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountConsumeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[eventId] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountDailyChargeEvent]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountDailyChargeEvent](
	[accountId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[accUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountDailyChargeEvent] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountDailyChargeEventMissionReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountDailyChargeEventMissionReward](
	[accountId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[missionNo] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountDailyChargeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[date] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountDailyConsumeEvent]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountDailyConsumeEvent](
	[accountId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[accDia] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountDailyConsumeEvent] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AccountDailyConsumeEventMissionReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountDailyConsumeEventMissionReward](
	[accountId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[missionNo] [int] NOT NULL,
 CONSTRAINT [pk_t_AccountDailyConsumeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[date] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_Alliance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Alliance](
	[allianceId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_Alliance] PRIMARY KEY NONCLUSTERED 
(
	[allianceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AncientRelicInstance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AncientRelicInstance](
	[instanceId] [uniqueidentifier] NULL,
	[averageLevel] [int] NULL,
	[status] [int] NULL,
	[playTime] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AncientRelicInstanceMember]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AncientRelicInstanceMember](
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[level] [int] NULL,
	[status] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AttainmentEntryReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AttainmentEntryReward](
	[heroId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_AttainmentEntryReward] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_BattlePowerRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BattlePowerRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
	[battlePower] [bigint] NOT NULL,
	[battlePowerUpdateTime] [datetimeoffset](7) NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_BattlePowerRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_BlacklistEntry]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BlacklistEntry](
	[heroId] [uniqueidentifier] NOT NULL,
	[targetHeroId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_BlacklistEntry] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[targetHeroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_BlockHero]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BlockHero](
	[heroId] [uniqueidentifier] NOT NULL,
	[targetHeroId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_BlockHero] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[targetHeroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_BountyHunterQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BountyHunterQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[questId] [int] NOT NULL,
	[questItemGrade] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[status] [int] NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
	[progressCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_CashProductPurchaseCount]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_CashProductPurchaseCount](
	[accountId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
	[purchaseCount] [int] NOT NULL,
 CONSTRAINT [pk_t_CashProductPurchaseCount] PRIMARY KEY NONCLUSTERED 
(
	[accountId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ChattingBlock]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ChattingBlock](
	[heroId] [uniqueidentifier] NOT NULL,
	[targetHeroId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_ChattingBlock] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[targetHeroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ChattingFilteringEntry]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ChattingFilteringEntry](
	[heroId] [int] NOT NULL,
	[chattingType] [int] NOT NULL,
 CONSTRAINT [pk_t_ChattingFilteringEntry] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[chattingType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ChattingLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ChattingLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[chattingType] [int] NOT NULL,
	[senderId] [int] NOT NULL,
	[receiverId] [int] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[logTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ChattingLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ChattingMacro]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ChattingMacro](
	[heroId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[content] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_t_ChattingMacro] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ConnectionLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ConnectionLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[clientCount] [int] NOT NULL,
	[heroCount] [int] NOT NULL,
	[heroCountOfNation1] [int] NOT NULL,
	[heroCountOfNation2] [int] NOT NULL,
	[logTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ConnectionLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ContinentRevivalLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ContinentRevivalLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[revivalType] [int] NOT NULL,
	[ownDia] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[paidRevivalCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ContinentRevivalLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DailyFieldOfHonorRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DailyFieldOfHonorRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DailyFieldOfHonorRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DailyFieldOfHonorRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DailyServerLevelRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DailyServerLevelRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[nationid] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[exp] [bigint] NULL,
	[levelUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DailyServerLevelRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DailyServerLevelRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DeadRecord]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DeadRecord](
	[recordId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[killerId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_DeadRecord] PRIMARY KEY NONCLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DimensionRaidQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DimensionRaidQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[step] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[status] [int] NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Enemy]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Enemy](
	[heroId] [uniqueidentifier] NOT NULL,
	[enemyId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_Enemy] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[enemyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_EquippedHeroMountGearSlot]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EquippedHeroMountGearSlot](
	[heroId] [uniqueidentifier] NULL,
	[slotIndex] [int] NULL,
	[heroMountGearId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ExpDungeonClear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ExpDungeonClear](
	[heroId] [uniqueidentifier] NULL,
	[difficulty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ExpDungeonEnterCountChargeLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ExpDungeonEnterCountChargeLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[ownDia] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[chargedCount] [int] NOT NULL,
 CONSTRAINT [pk_t_ExpDungeonEnterCountChargeLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ExpDungeonPlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ExpDungeonPlay](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[status] [int] NOT NULL,
	[playTime] [int] NOT NULL,
	[updateTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[date] [date] NULL,
	[count] [int] NULL,
 CONSTRAINT [pk_t_ExpDungeonPlay] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHero]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHero](
	[heroId] [uniqueidentifier] NOT NULL,
	[jobId] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[battlePower] [bigint] NOT NULL,
	[rankId] [int] NOT NULL,
	[equippedWingId] [int] NOT NULL,
	[wingStep] [int] NOT NULL,
	[wingLevel] [int] NOT NULL,
	[displayTitleId] [int] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[guildName] [varchar](20) NOT NULL,
	[guildMemberGrade] [int] NOT NULL,
	[mainGearEnchantLevelSetNo] [int] NOT NULL,
	[subGearSoulstoneLevelSetNo] [int] NOT NULL,
	[customPresetHair] [int] NOT NULL,
	[customFaceJawHeight] [int] NOT NULL,
	[customFaceJawWidth] [int] NOT NULL,
	[customFaceJawEndHeight] [int] NOT NULL,
	[customFaceWidth] [int] NOT NULL,
	[customFaceEyebrowHeight] [int] NOT NULL,
	[customFaceEyebrowRotation] [int] NOT NULL,
	[customFaceEyesWidth] [int] NOT NULL,
	[customFaceNoseHeight] [int] NOT NULL,
	[customFaceNoseWidth] [int] NOT NULL,
	[customFaceMouthHeight] [int] NOT NULL,
	[customFaceMouthWidth] [int] NOT NULL,
	[customBodyHeadSize] [int] NOT NULL,
	[customBodyArmsLength] [int] NOT NULL,
	[customBodyArmsWidth] [int] NOT NULL,
	[customBodyChestSize] [int] NOT NULL,
	[customBodyWaistWidth] [int] NOT NULL,
	[customBodyHipsSize] [int] NOT NULL,
	[customBodyPelvisWidth] [int] NOT NULL,
	[customBodyLegsLength] [int] NOT NULL,
	[customBodyLegsWidth] [int] NOT NULL,
	[customColorSkin] [int] NOT NULL,
	[customColorEyes] [int] NOT NULL,
	[customColorBeardAndEyebrow] [int] NOT NULL,
	[customColorHair] [int] NOT NULL,
	[costumeId] [int] NOT NULL,
	[costumeEffectId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroEquippedMainGear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroEquippedMainGear](
	[heroMainGearId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[mainGearId] [int] NULL,
	[enchantLevel] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroEquippedSubGear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroEquippedSubGear](
	[heroId] [uniqueidentifier] NOT NULL,
	[SubGearId] [int] NULL,
	[Level] [int] NULL,
	[Quality] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroMainGearOptionAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroMainGearOptionAttr](
	[heroMainGearId] [uniqueidentifier] NULL,
	[index] [int] NULL,
	[Grade] [int] NULL,
	[AttrId] [int] NULL,
	[AttrValueId] [bigint] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroRealAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroRealAttr](
	[heroId] [uniqueidentifier] NOT NULL,
	[AttrId] [int] NULL,
	[Value] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroSkill]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroSkill](
	[heroId] [uniqueidentifier] NOT NULL,
	[skillId] [int] NULL,
	[level] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroSubGearRuneSocket]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroSubGearRuneSocket](
	[heroId] [uniqueidentifier] NOT NULL,
	[SubGearId] [int] NULL,
	[SocketIndex] [int] NULL,
	[ItemId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroSubGearSoulstoneSocket]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroSubGearSoulstoneSocket](
	[heroId] [uniqueidentifier] NOT NULL,
	[SubGearId] [int] NULL,
	[SocketIndex] [int] NULL,
	[ItemId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroWing]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroWing](
	[heroId] [uniqueidentifier] NOT NULL,
	[wingId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHeroWingEnchant]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHeroWingEnchant](
	[heroId] [uniqueidentifier] NOT NULL,
	[partId] [int] NULL,
	[Step] [int] NULL,
	[Level] [int] NULL,
	[EnchantCount] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorHistory]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorHistory](
	[heroId] [uniqueidentifier] NULL,
	[historyId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[targetHeroId] [uniqueidentifier] NULL,
	[oldRanking] [int] NULL,
	[ranking] [int] NULL,
	[isWin] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorPlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorPlay](
	[heroId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorTarget]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorTarget](
	[heroId] [uniqueidentifier] NULL,
	[ranking] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Friend]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Friend](
	[heroId] [uniqueidentifier] NOT NULL,
	[friendId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_Friend] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[friendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GearDisassembleDetailLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GearDisassembleDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_t_GearDisassembleDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GearDisassembleLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GearDisassembleLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_GearDisassembleLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GearSlot]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GearSlot](
	[heroId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_GearSlot] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GlobalNotice]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GlobalNotice](
	[noticeId] [uniqueidentifier] NOT NULL,
	[content] [nvarchar](1000) NULL,
	[displayTime] [datetime] NULL,
	[displayInterval] [int] NULL,
	[repetitionCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GoldDungeonClear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GoldDungeonClear](
	[heroId] [uniqueidentifier] NULL,
	[difficulty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GoldDungeonPlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GoldDungeonPlay](
	[heroId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_Guild]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Guild](
	[name] [varchar](100) NOT NULL,
	[nationId] [int] NOT NULL,
	[notice] [varchar](100) NOT NULL,
	[buildingPoint] [int] NOT NULL,
	[fund] [bigint] NOT NULL,
	[memberBanishmentCount] [int] NOT NULL,
	[foodWarehouseLevel] [int] NOT NULL,
	[foodWarehouseExp] [int] NOT NULL,
	[moralPoint] [int] NOT NULL,
	[huntingDonationCount] [int] NOT NULL,
	[dailyObjectiveContentId] [int] NOT NULL,
	[weeklyObjectiveId] [int] NOT NULL,
	[blessingBuffStartTime] [datetimeoffset](7) NULL,
	[blessingBuffId] [int] NOT NULL,
	[deleted] [bit] NULL,
	[guildContributionPoint] [int] NULL,
	[guildId] [uniqueidentifier] NULL,
	[dailyObjectiveDate] [date] NULL,
	[weeklyObjectiveDate] [date] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[moralPointDate] [date] NULL,
	[memberBanishmentDate] [date] NULL,
	[huntingDonationDate] [date] NULL,
	[foodWarehouseCollectionId] [uniqueidentifier] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildApplication]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildApplication](
	[applicationId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildBlessingBuffBuyLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildBlessingBuffBuyLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[memberGrade] [int] NULL,
	[buffId] [int] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildBuilding]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildBuilding](
	[guildId] [uniqueidentifier] NOT NULL,
	[BuildingId] [int] NULL,
	[Level] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildDailyObjectiveCompletion]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildDailyObjectiveCompletion](
	[guildId] [uniqueidentifier] NOT NULL,
	[date] [date] NULL,
	[heroId] [uniqueidentifier] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildSkillLevel]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildSkillLevel](
	[heroId] [uniqueidentifier] NOT NULL,
	[GuildSkillId] [int] NULL,
	[Level] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildSupplySupportQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildSupplySupportQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[CartId] [int] NULL,
	[CartHp] [int] NULL,
	[IsCartRiding] [bit] NULL,
	[CartContinentId] [int] NULL,
	[CartXPosition] [float] NULL,
	[CartYPosition] [float] NULL,
	[CartZPosition] [float] NULL,
	[CartYRotation] [float] NULL,
	[Status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_Hero]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Hero](
	[heroId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[jobId] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[name] [varchar](20) NULL,
	[level] [int] NOT NULL,
	[exp] [bigint] NOT NULL,
	[battlePower] [bigint] NOT NULL,
	[hp] [int] NOT NULL,
	[namingTutorialCompleted] [bit] NOT NULL,
	[created] [bit] NOT NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[lastXPosition] [float] NULL,
	[lastYPosition] [float] NULL,
	[lastZPosition] [float] NULL,
	[lastYRotation] [float] NULL,
	[baseUnOwnDia] [int] NOT NULL,
	[ownDia] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
	[inventorySlotCount] [int] NOT NULL,
	[bonusUnOwnDia] [int] NOT NULL,
	[jobPoint] [int] NOT NULL,
	[lastLoginTime] [datetimeoffset](7) NULL,
	[lastLogoutTime] [datetimeoffset](7) NULL,
	[lastLocationId] [int] NULL,
	[lastInstanceId] [uniqueidentifier] NULL,
	[previousContinentId] [int] NULL,
	[previousXPosition] [float] NULL,
	[previousYPosition] [float] NULL,
	[previousZPosition] [float] NULL,
	[previousYRotation] [float] NULL,
	[chattingBubbleDisplayed] [bit] NOT NULL,
	[weeklyQuestFeverStep] [int] NOT NULL,
	[weeklyQuestFeverStartTime] [datetimeoffset](7) NULL,
	[weeklyQuestFeverProgressCount] [int] NOT NULL,
	[equippedSkinId] [int] NOT NULL,
	[skinHelmetVisible] [bit] NOT NULL,
	[lastContinentDeadTime] [datetimeoffset](7) NULL,
	[accumulationLoginDayCount] [int] NOT NULL,
	[deadCount] [int] NOT NULL,
	[prevContinentDeadTime] [datetimeoffset](7) NULL,
	[levelUpdateTime] [datetimeoffset](7) NOT NULL,
	[battlePowerUpdateTime] [datetimeoffset](7) NOT NULL,
	[realMaxHp] [int] NOT NULL,
	[realPhysicalOffense] [int] NOT NULL,
	[realMagicalOffense] [int] NOT NULL,
	[realPhysicalDefense] [int] NOT NULL,
	[realMagicalDefense] [int] NOT NULL,
	[lak] [int] NOT NULL,
	[hpPotionAutoEnabled] [bit] NOT NULL,
	[autoCountattackEnabled] [bit] NOT NULL,
	[monsterBattleEvasionEnabled] [bit] NOT NULL,
	[battleAreaType] [int] NOT NULL,
	[lootingGearMinGrade] [int] NOT NULL,
	[lootingItemMinGrade] [int] NOT NULL,
	[lastLocationParam] [int] NOT NULL,
	[infiniteWarPlayDate] [date] NULL,
	[infiniteWarPlayCount] [int] NOT NULL,
	[ruinsReclaimFreePlayDate] [date] NULL,
	[ruinsReclaimFreePlayCount] [int] NOT NULL,
	[wisdomTempleCleared] [bit] NOT NULL,
	[paidWarehouseSlotCount] [int] NOT NULL,
	[fearAltarPlayDate] [date] NULL,
	[fearAltarPlayCount] [int] NOT NULL,
	[fearAltarHalidomCollectionRewardWeekStartDate] [date] NULL,
	[fearAltarHalidomCollectionRewardNo] [bigint] NOT NULL,
	[warMemoryFreePlayDate] [date] NULL,
	[warMemoryFreePlayCount] [int] NOT NULL,
	[osirisRoomPlayDate] [date] NULL,
	[osirisRoomPlayCount] [int] NOT NULL,
	[friendAutoAcceptable] [bit] NOT NULL,
	[itemLuckyShopPickDate] [date] NULL,
	[itemLuckyShopFreePickTime] [datetimeoffset](7) NULL,
	[itemLuckyShopFreePickCount] [int] NOT NULL,
	[itemLuckyShopPick1TimeCount] [int] NOT NULL,
	[itemLuckyShopPick5TimeCount] [int] NOT NULL,
	[creatureCardLuckyShopPickDate] [date] NULL,
	[creatureCardLuckyShopFreePickTime] [datetimeoffset](7) NULL,
	[creatureCardLuckyShopFreePickCount] [int] NOT NULL,
	[creatureCardLuckyShopPick1TimeCount] [int] NOT NULL,
	[creatureCardLuckyShopPick5TimeCount] [int] NOT NULL,
	[participationHeroCreatureId] [uniqueidentifier] NOT NULL,
	[creatureVariationDate] [date] NULL,
	[creatureVariationCount] [int] NOT NULL,
	[rewardedNationWeeklyPresentPopularityPointRankingNo] [bigint] NOT NULL,
	[rewardedNationWeeklyPresentContributionPointRankingNo] [bigint] NOT NULL,
	[open7DayEventRewarded] [bit] NOT NULL,
	[ankouTombPlayDate] [date] NULL,
	[ankouTombPlayCount] [int] NOT NULL,
	[baseJobId] [int] NOT NULL,
	[starEssense] [int] NOT NULL,
	[starEssenseItemUseDate] [date] NULL,
	[starEssenseItemUseCount] [int] NOT NULL,
	[tradeShipPlayDate] [date] NULL,
	[tradeShipPlayCount] [int] NOT NULL,
	[equippedArtifactNo] [int] NOT NULL,
	[artifactNo] [int] NOT NULL,
	[artifactLevel] [int] NOT NULL,
	[artifactExp] [int] NOT NULL,
	[equippedCostumeId] [int] NOT NULL,
	[costumeCollectionId] [int] NOT NULL,
	[costumeCollectionActivated] [bit] NOT NULL,
	[gmTargetMainQuestNo] [int] NOT NULL,
	[ruinsReclaimPlayDate] [date] NULL,
	[ruinsReclaimPlayCount] [int] NOT NULL,
	[fieldOfHonorRanking] [int] NOT NULL,
	[equippedHeroCostumeId] [uniqueidentifier] NOT NULL,
	[nationWarFreeTransmissionDate] [date] NULL,
	[nationWarPaidTransmissionDate] [date] NULL,
	[nationWarFreeTransmissionCount] [int] NULL,
	[nationWarPaidTransmissionCount] [int] NULL,
	[dailyObjectiveDate] [date] NULL,
	[weeklyObjectiveDate] [date] NULL,
	[wingStep] [int] NULL,
	[wingLevel] [int] NULL,
	[exploitPoint] [int] NULL,
	[exploitPointUpdateTime] [datetimeoffset](7) NULL,
	[rankNo] [int] NULL,
	[equippedMountId] [int] NULL,
	[vipPoint] [int] NULL,
	[stamina] [int] NULL,
	[paidInventorySlotCount] [int] NULL,
	[explorationPoint] [int] NULL,
	[explorationPointUpdateTime] [datetimeoffset](7) NULL,
	[guildMemberGrade] [int] NULL,
	[creatureCardCollectionFamePoint] [int] NULL,
	[creatureCardCollectionFamePointUpdateTime] [datetimeoffset](7) NULL,
	[guildId] [uniqueidentifier] NULL,
	[CustomPresetHair] [int] NULL,
	[CustomFaceJawHeight] [int] NULL,
	[CustomFaceJawWidth] [int] NULL,
	[CustomFaceJawEndHeight] [int] NULL,
	[CustomFaceWidth] [int] NULL,
	[CustomFaceEyebrowHeight] [int] NULL,
	[CustomFaceEyebrowRotation] [int] NULL,
	[CustomFaceEyesWidth] [int] NULL,
	[CustomFaceNoseHeight] [int] NULL,
	[CustomFaceNoseWidth] [int] NULL,
	[CustomFaceMouthHeight] [int] NULL,
	[CustomFaceMouthWidth] [int] NULL,
	[CustomBodyHeadSize] [int] NULL,
	[CustomBodyArmsLength] [int] NULL,
	[CustomBodyArmsWidth] [int] NULL,
	[CustomBodyChestSize] [int] NULL,
	[CustomBodyWaistWidth] [int] NULL,
	[CustomBodyHipsSize] [int] NULL,
	[CustomBodyPelvisWidth] [int] NULL,
	[CustomBodyLegsLength] [int] NULL,
	[CustomBodyLegsWidth] [int] NULL,
	[CustomColorSkin] [int] NULL,
	[CustomColorEyes] [int] NULL,
	[CustomColorBeardAndEyebrow] [int] NULL,
	[CustomColorHair] [int] NULL,
	[staminaUpdateTime] [datetimeoffset](7) NULL,
	[previousNationId] [int] NULL,
	[restTime] [int] NULL,
	[dailyAccessTimeUpdateTime] [datetimeoffset](7) NULL,
	[dailyAccessTime] [float] NULL,
	[isRiding] [bit] NULL,
	[undergroundMazeDate] [date] NULL,
	[undergroundMazePlayTime] [int] NULL,
	[artifactRoomSweepStartTime] [datetimeoffset](7) NULL,
	[guildContributionPoint] [int] NULL,
	[guildTotalContributionPoint] [int] NULL,
	[fishingQuestDate] [date] NULL,
	[FishingQuestCount] [int] NULL,
	[FishingQuestBaitItemId] [int] NULL,
	[FishingQuestCastingCount] [int] NULL,
	[expScrollUseDate] [date] NULL,
	[ExpScrollUseCount] [int] NULL,
	[expScrollStartTime] [datetimeoffset](7) NULL,
	[ExpScrollDuration] [int] NULL,
	[ExpScrollItemId] [int] NULL,
	[distortionScrollUseDate] [date] NULL,
	[DistortionScrollUseCount] [int] NULL,
	[distortionScrollStartTime] [datetimeoffset](7) NULL,
	[DistortionScrollDuration] [int] NULL,
	[todayMissionTutorialStarted] [int] NULL,
	[subGearSoulstoneLevelSetNo] [int] NULL,
	[staminaRecoveryDate] [date] NULL,
	[StaminaRecoveryScheduleId] [int] NULL,
	[staminaBuyDate] [date] NULL,
	[StaminaBuyCount] [int] NULL,
	[spiritStone] [int] NULL,
	[soulPowder] [int] NULL,
	[selectedRankActiveSkillId] [int] NULL,
	[RookieGiftNo] [int] NULL,
	[RookieGiftLoginDuration] [float] NULL,
	[rewardedDailyFieldOfHonorRankingNo] [int] NULL,
	[RankRewardReceivedRankNo] [int] NULL,
	[rankRewardReceivedDate] [date] NULL,
	[rankActiveSkillCastingTime] [datetimeoffset](7) NULL,
	[ProofOfValorPaidRefreshCount] [int] NULL,
	[proofOfValorFreeRefreshDate] [date] NULL,
	[ProofOfValorFreeRefreshCount] [int] NULL,
	[proofOfValorDailyPaidRefreshDate] [date] NULL,
	[ProofOfValorDailyPaidRefreshCount] [int] NULL,
	[proofOfValorAutoRefreshDate] [date] NULL,
	[ProofOfValorAutoRefreshScheduleId] [int] NULL,
	[paidImmediateRevivalDate] [datetime] NULL,
	[PaidImmediateRevivalCount] [int] NULL,
	[accNationWarWinCount] [int] NULL,
	[accNationWarKillCount] [int] NULL,
	[accNationWarImmediateRevivalCount] [int] NULL,
	[accNationWarCommanderKillCount] [int] NULL,
	[nationDonationDate] [date] NULL,
	[NationDonationCount] [int] NULL,
	[mountGearRefinementDate] [date] NULL,
	[MountGearRefinementCount] [int] NULL,
	[accMonsterKillCount] [int] NULL,
	[maxGold] [bigint] NULL,
	[maxEquippedMainGearEnchantLevel] [int] NULL,
	[maxBattlePower] [bigint] NULL,
	[maxAcquisitionMainGearGrade] [int] NULL,
	[mainGearRefinementDate] [date] NULL,
	[MainGearRefinementCount] [int] NULL,
	[mainGearEnchantLevelSetNo] [int] NULL,
	[mainGearEnchantDate] [date] NULL,
	[MainGearEnchantCount] [int] NULL,
	[weaponHeroMainGearId] [uniqueidentifier] NULL,
	[armorHeroMainGearId] [uniqueidentifier] NULL,
	[accLegendBaitItemUseCount] [int] NULL,
	[illustratedBookExplorationStepRewardReceivedDate] [date] NULL,
	[IllustratedBookExplorationStepRewardReceivedStepNo] [int] NULL,
	[illustratedBookExplorationStepNo] [int] NULL,
	[guildHuntingDonationDate] [date] NULL,
	[guildHuntingDonationCompletionRewardReceivedDate] [date] NULL,
	[honorPoint] [int] NULL,
	[guildMoralPointDate] [date] NULL,
	[GuildMoralPoint] [int] NULL,
	[guildFoodWarehouseStockDate] [date] NULL,
	[GuildFoodWarehouseStockCount] [int] NULL,
	[guildDonationDate] [date] NULL,
	[GuildDonationCount] [int] NULL,
	[guildDailyObjectiveRewardReceivedDate] [date] NULL,
	[GuildDailyObjectiveRewardReceivedNo] [int] NULL,
	[freeSweepDate] [datetime] NULL,
	[FreeSweepCount] [int] NULL,
	[freeImmediateRevivalDate] [datetime] NULL,
	[FreeImmediateRevivalCount] [int] NULL,
	[expPotionUseDate] [date] NULL,
	[ExpPotionUseCount] [int] NULL,
	[dailyExploitPointDate] [date] NULL,
	[DailyExploitPoint] [int] NULL,
	[guildWithdrawalTime] [datetimeoffset](7) NULL,
	[guildPoint] [int] NULL,
	[dailyQuestFreeRefreshDate] [date] NULL,
	[DailyQuestFreeRefreshCount] [int] NULL,
	[dailyAttendRewardDate] [date] NULL,
	[DailyAttendRewardDay] [int] NULL,
	[creatureCardShopRefreshDate] [date] NULL,
	[CreatureCardShopRefreshScheduleId] [int] NULL,
	[creatureCardShopPaidRefreshDate] [date] NULL,
	[CreatureCardShopPaidRefreshCount] [int] NULL,
	[artifactRoomInitDate] [date] NULL,
	[ArtifactRoomInitCount] [int] NULL,
	[achievementPointDate] [date] NULL,
	[AchievementPoint] [int] NULL,
	[AchievementRewardNo] [int] NULL,
	[guildWeeklyObjectiveRewardReceivedDate] [date] NULL,
	[receivedGuildFoodWarehouseCollectionId] [uniqueidentifier] NULL,
	[guildDailyRewardReceivedDate] [date] NULL,
	[guildAltarRewardReceivedDate] [date] NULL,
	[guildAltarDefenseStartTime] [datetimeoffset](7) NULL,
	[fieldOfHonorSuccessiveCount] [int] NULL,
	[equippedWingId] [int] NULL,
	[accEpicBaitItemUseCount] [int] NULL,
	[wingExp] [int] NULL,
	[displayTitleId] [int] NULL,
	[rewardedDailyServerLevelRankingNo] [int] NULL,
	[creatureCardShopId] [uniqueidentifier] NULL,
	[rewardedAttainmentEntryNo] [int] NULL,
	[artifactRoomCurrentFloor] [int] NULL,
	[artifactRoomBestFloor] [int] NULL,
	[activationTitleId] [int] NULL,
 CONSTRAINT [pk_t_Hero] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroAccessReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroAccessReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[entryId] [int] NOT NULL,
	[date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroAccomplishmentReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroAccomplishmentReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[AccomplishmentId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroAnkouTombBestRecord]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroAnkouTombBestRecord](
	[heroId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[point] [int] NOT NULL,
	[updateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroAnkouTombBestRecord] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBiography]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBiography](
	[heroId] [uniqueidentifier] NOT NULL,
	[biographyId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroBiography] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[biographyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBiographyQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBiographyQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[biographyId] [int] NOT NULL,
	[questNo] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroBiographyQuest] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[biographyId] ASC,
	[questNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroConstellationStep]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroConstellationStep](
	[heroId] [uniqueidentifier] NOT NULL,
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[failPoint] [int] NOT NULL,
	[activated] [bit] NOT NULL,
 CONSTRAINT [pk_t_HeroConstellationStep] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[constellationId] ASC,
	[step] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroConstellationStepCycleEntry]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroConstellationStepCycleEntry](
	[heroId] [uniqueidentifier] NOT NULL,
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryId] [int] NOT NULL,
	[failPoint] [int] NOT NULL,
	[activated] [bit] NOT NULL,
 CONSTRAINT [pk_t_HeroConstellationStepCycleEntry] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[constellationId] ASC,
	[step] ASC,
	[cycle] ASC,
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCostume]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCostume](
	[heroId] [uniqueidentifier] NOT NULL,
	[costumeId] [int] NOT NULL,
	[costumeEffectId] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[luckyValue] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCostume] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[costumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreature]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreature](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[creatureId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[additionalOpenSkillSlotCount] [int] NOT NULL,
	[exp] [int] NOT NULL,
	[injectionLevel] [int] NOT NULL,
	[injectionExp] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[cheered] [bit] NOT NULL,
	[injectionItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreature] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureAdditionalAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureAdditionalAttr](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrNo] [int] NULL,
 CONSTRAINT [pk_t_HeroCreatureAdditionalAttr] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureBaseAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureBaseAttr](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[attrId] [int] NOT NULL,
	[baseValue] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureBaseAttr] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCard]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCard](
	[heroId] [uniqueidentifier] NOT NULL,
	[CreatureCardId] [int] NULL,
	[Count] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardCollection]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardCollection](
	[heroId] [uniqueidentifier] NOT NULL,
	[CollectionId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardShopFixedProductBuy]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardShopFixedProductBuy](
	[heroId] [uniqueidentifier] NOT NULL,
	[ProductId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardShopRandomProduct]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardShopRandomProduct](
	[heroId] [uniqueidentifier] NOT NULL,
	[ProductId] [int] NULL,
	[purchased] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardShopRandomProductLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardShopRandomProductLog](
	[shopId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[purchased] [int] NULL,
	[usedSoulPowder] [int] NULL,
	[purchasedTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureFarmQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureFarmQuest](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[missionNo] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[missionStartTime] [datetimeoffset](7) NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroCreatureFarmQuest] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureSkill]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureSkill](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[skillGrade] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureSkill] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuest](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[missionId] [int] NULL,
	[progressCount] [int] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[startTime] [datetimeoffset](7) NULL,
	[completionTime] [datetimeoffset](7) NULL,
	[abandonTime] [datetimeoffset](7) NULL,
	[missionImmediateCompleted] [bit] NULL,
	[missionImmediateCompletionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroDailyQuest] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestExtraRewardLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestExtraRewardLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[completionCount] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroDailyQuestExtraRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestRenewalLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestRenewalLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[slotCount] [int] NOT NULL,
	[gold] [int] NOT NULL,
	[ownDia] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroDailyQuestRenewalLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDiaShopProduct]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDiaShopProduct](
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[productId] [int] NOT NULL,
	[buyCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroDiaShopProduct] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[date] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroEliteDungeonPlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroEliteDungeonPlay](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[EliteMonsterId] [int] NULL,
	[Status] [int] NULL,
	[PlayTime] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroEliteMonsterKill]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroEliteMonsterKill](
	[heroId] [uniqueidentifier] NOT NULL,
	[EliteMonsterId] [int] NULL,
	[KillCount] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroEpisodeAdditionalRewardLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroEpisodeAdditionalRewardLog](
	[heroId] [int] NOT NULL,
	[chapterNo] [int] NOT NULL,
	[episodeNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroEpisodeAdditionalRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[chapterNo] ASC,
	[episodeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroFearAltarHalidom]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroFearAltarHalidom](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[halidomId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroFearAltarHalidom] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[weekStartDate] ASC,
	[halidomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroFearAltarHalidomElementalReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroFearAltarHalidomElementalReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[halidomElementalId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroFearAltarHalidomElementalReward] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[weekStartDate] ASC,
	[halidomElementalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGear](
	[heroGearId] [uniqueidentifier] NOT NULL,
	[heroId] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[owned] [bit] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[level] [int] NOT NULL,
	[royalType] [int] NOT NULL,
	[compositionType] [int] NOT NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroGear] PRIMARY KEY NONCLUSTERED 
(
	[heroGearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearCompositionLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearCompositionLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
	[materialHeroGearId] [uniqueidentifier] NOT NULL,
	[oldGearId] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[oldOwned] [bit] NOT NULL,
	[Owned] [bit] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[type] [int] NOT NULL,
	[oldCompositionType] [int] NOT NULL,
	[compositionType] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroGearCompositionLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearEnchantLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearEnchantLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
	[oldEnchantLevel] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[oldOwned] [bit] NOT NULL,
	[owned] [bit] NOT NULL,
	[type] [int] NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemOwnCount] [int] NOT NULL,
	[materialItemUnOwnCount] [int] NOT NULL,
	[penaltyPreventionItemId] [int] NOT NULL,
	[penaltyPreventionItemOwnCount] [int] NOT NULL,
	[penaltyPreventionItemUnOwnCount] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroGearEnchantLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearOptionAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearOptionAttr](
	[heroGearId] [uniqueidentifier] NOT NULL,
	[optionIndex] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroGearOptionAttr] PRIMARY KEY NONCLUSTERED 
(
	[heroGearId] ASC,
	[optionIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearOptionAttrInheritLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearOptionAttrInheritLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
	[oldOwned] [bit] NOT NULL,
	[owned] [bit] NOT NULL,
	[materialHeroGearId] [uniqueidentifier] NOT NULL,
	[oldOptionAttrId] [int] NOT NULL,
	[oldOptionAttrValue] [int] NOT NULL,
	[optionAttrId] [int] NOT NULL,
	[optionAttrValue] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[optionIndex] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroGearOptionAttrInheritLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearRefinementDetailLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearRefinementDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwnCount] [int] NOT NULL,
	[itemUnOwnCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroGearRefinementDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearRefinementLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearRefinementLog](
	[logId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[heroId] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
	[oldOwned] [bit] NOT NULL,
	[owned] [bit] NOT NULL,
	[oldLevel] [int] NOT NULL,
	[level] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroGearRefinementLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGearWorkmanshipLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGearWorkmanshipLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[heroGearId] [uniqueidentifier] NOT NULL,
	[oldOwned] [bit] NOT NULL,
	[owned] [bit] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[oldItemOwned] [bit] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroGearWorkmanshipLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGuildFarmQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGuildFarmQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NULL,
	[objectiveCompleted] [int] NULL,
	[status] [int] NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [PK__t_HeroGuildFarmQuest] PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroGuildHuntingQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGuildHuntingQuest](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[ObjectiveId] [int] NULL,
	[progressCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NULL,
	[status] [int] NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGuildMissionQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGuildMissionQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGuildMissionQuestMission]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGuildMissionQuestMission](
	[missionInstanceId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[MissionId] [int] NULL,
	[progressCount] [int] NOT NULL,
	[SpawnedMonsterContinentId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[status] [int] NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroIllustratedBook]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroIllustratedBook](
	[heroId] [uniqueidentifier] NOT NULL,
	[IllustratedBookId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroJobChangeQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroJobChangeQuest](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[questNo] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[progressCount] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[status] [int] NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroJobChangeQuest] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroLevelUpReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroLevelUpReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[entryId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroLimitationGiftReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroLimitationGiftReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[scheduleId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroLimitationGiftReward] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[date] ASC,
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMainGear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGear](
	[heroMainGearId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[mainGearId] [int] NULL,
	[enchantLevel] [bigint] NULL,
	[owned] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[deleted] [int] NULL,
	[delTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearOptionAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearOptionAttr](
	[index] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
	[heroMainGearId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_t_HeroMainGearOptionAttr] PRIMARY KEY CLUSTERED 
(
	[index] ASC,
	[heroMainGearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearRefinementAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearRefinementAttr](
	[index] [int] NOT NULL,
	[heroMainGearId] [uniqueidentifier] NOT NULL,
	[grade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
	[turn] [int] NOT NULL,
 CONSTRAINT [PK_t_HeroMainGearRefinementAttr] PRIMARY KEY CLUSTERED 
(
	[index] ASC,
	[heroMainGearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
	[isCartRiding] [bit] NOT NULL,
	[cartContinentId] [int] NOT NULL,
	[cartXPosition] [float] NOT NULL,
	[cartYPosition] [float] NOT NULL,
	[cartZPosition] [float] NOT NULL,
	[cartYRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMainQuestDungeonReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainQuestDungeonReward](
	[heroId] [uniqueidentifier] NULL,
	[dungeonId] [int] NULL,
	[step] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainQuestObjectInteractionLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainQuestObjectInteractionLog](
	[heroId] [int] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroMainQuestObjectInteractionLog] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[mainQuestNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMount]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMount](
	[mountId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[satiety] [int] NOT NULL,
	[awakeningLevel] [int] NOT NULL,
	[awakeningExp] [int] NOT NULL,
	[potionAttrCount] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMountGear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountGear](
	[heroMountGearId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[mountGearId] [int] NULL,
	[owned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[deleted] [int] NULL,
	[delTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMountGearOptionAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountGearOptionAttr](
	[heroMountGearId] [uniqueidentifier] NULL,
	[index] [int] NULL,
	[grade] [int] NULL,
	[attrId] [int] NULL,
	[attrValueId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroNpcShopProduct]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroNpcShopProduct](
	[heroId] [uniqueidentifier] NULL,
	[productId] [int] NULL,
	[buyCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventCostumeRewardLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventCostumeRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[rewardItemCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventMission]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventMission](
	[heroId] [uniqueidentifier] NOT NULL,
	[missionId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventMission] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[missionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventProduct]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventProduct](
	[heroId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventProduct] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventProgressCount]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventProgressCount](
	[heroId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[accProgressCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventProgressCount] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpenGiftReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpenGiftReward](
	[heroId] [uniqueidentifier] NULL,
	[day] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroOrdealQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOrdealQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[questNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroOrdealQuest] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[questNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOrdealQuestMission]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOrdealQuestMission](
	[heroId] [uniqueidentifier] NOT NULL,
	[questNo] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroOrdealQuestMission] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[questNo] ASC,
	[slotIndex] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroPotionAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroPotionAttr](
	[heroId] [uniqueidentifier] NOT NULL,
	[potionAttrId] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroPotionAttr] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[potionAttrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroProofOfValorInstance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroProofOfValorInstance](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[ProofOfValorBossMonsterArrangeId] [int] NULL,
	[CreatureCardId] [int] NULL,
	[Status] [int] NULL,
	[Level] [int] NULL,
	[PlayTime] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [PK__t_HeroProofOfValorInstance] PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroProspectQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroProspectQuest](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[ownerId] [uniqueidentifier] NOT NULL,
	[targetId] [uniqueidentifier] NOT NULL,
	[targetLevelId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
	[ownerRewarded] [bit] NOT NULL,
	[targetRewarded] [bit] NOT NULL,
 CONSTRAINT [pk_t_HeroProspectQuest] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRankActiveSkill]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRankActiveSkill](
	[heroId] [uniqueidentifier] NULL,
	[skillId] [int] NULL,
	[level] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRankPassiveSkill]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRankPassiveSkill](
	[heroId] [uniqueidentifier] NULL,
	[skillId] [int] NULL,
	[level] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRealAttrValue]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRealAttrValue](
	[heroId] [uniqueidentifier] NULL,
	[attrId] [int] NULL,
	[value] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRetrieval]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRetrieval](
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[retrievalId] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroRetrieval] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[date] ASC,
	[retrievalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRetrievalProgressCount]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRetrievalProgressCount](
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[retrievalId] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroRetrievalProgressCount] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[date] ASC,
	[retrievalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSceneryQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSceneryQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[QuestId] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSeriesMission]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSeriesMission](
	[heroId] [uniqueidentifier] NULL,
	[missionId] [int] NULL,
	[progressCount] [int] NULL,
	[currentStep] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSkill]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSkill](
	[heroId] [uniqueidentifier] NOT NULL,
	[skillId] [int] NOT NULL,
	[selectedRuneNo] [int] NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroSkill] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[skillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSkillRune]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSkillRune](
	[heroId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroSkillRune] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[skillId] ASC,
	[runeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSkin]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSkin](
	[heroId] [int] NOT NULL,
	[skinId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroSkin] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[skinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSubGear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubGear](
	[heroId] [uniqueidentifier] NOT NULL,
	[subGearId] [int] NOT NULL,
	[level] [int] NULL,
	[quality] [int] NULL,
	[equipped] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSubGearRuneSocket]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubGearRuneSocket](
	[heroId] [uniqueidentifier] NOT NULL,
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSubGearSoulstoneSocket]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubGearSoulstoneSocket](
	[heroId] [uniqueidentifier] NOT NULL,
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSubQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[subQuestId] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[status] [int] NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroSubQuest] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[subQuestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTaskConsignment]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTaskConsignment](
	[consignmentInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[consignmentId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[usedExpItemId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HeroTaskConsignment] PRIMARY KEY NONCLUSTERED 
(
	[consignmentInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTimeDesignationEventReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTimeDesignationEventReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroTimeDesignationEventReward] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTitle]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTitle](
	[heroId] [uniqueidentifier] NOT NULL,
	[TitleId] [int] NULL,
	[startTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTodayMission]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTodayMission](
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NULL,
	[missionId] [int] NULL,
	[progressCount] [int] NULL,
	[rewardReceived] [int] NULL,
	[rewardReceivedTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroTodayTask]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTodayTask](
	[heroId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[taskId] [int] NULL,
	[progressCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroTradeShipBestRecord]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTradeShipBestRecord](
	[heroId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[point] [int] NOT NULL,
	[updateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroTradeShipBestRecord] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTrueHeroQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTrueHeroQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[stepNo] [int] NOT NULL,
	[vipLevel] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [bit] NOT NULL,
 CONSTRAINT [pk_t_HeroTrueHeroQuest] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeekendReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeekendReward](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[selection1] [int] NOT NULL,
	[selection2] [int] NOT NULL,
	[selection3] [int] NOT NULL,
	[rewarded] [bit] NOT NULL,
 CONSTRAINT [pk_t_HeroWeekendReward] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyContributionPoint]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyContributionPoint](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[point] [int] NOT NULL,
	[pointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyContributionPoint] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[weekStartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPopularityPoint]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPopularityPoint](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[point] [int] NOT NULL,
	[pointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPopularityPoint] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[weekStartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPresentContributionPoint]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPresentContributionPoint](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[point] [int] NOT NULL,
	[pointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPresentContributionPoint] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[weekStartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPresentPopularityPoint]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPresentPopularityPoint](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[point] [int] NOT NULL,
	[pointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPresentPopularityPoint] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[weekStartDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuest](
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[roundNo] [int] NOT NULL,
	[roundId] [uniqueidentifier] NOT NULL,
	[roundMissionId] [int] NOT NULL,
	[roundProgressCount] [int] NOT NULL,
	[roundStatus] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuest] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestExtraRewardLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestExtraRewardLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[completionCount] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestExtraRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestFeverRewardLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestFeverRewardLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[feverStep] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestFeverRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWing]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWing](
	[heroId] [uniqueidentifier] NOT NULL,
	[wingId] [int] NOT NULL,
	[memoryPieceStep] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWingEnchant]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWingEnchant](
	[heroId] [uniqueidentifier] NULL,
	[partId] [int] NULL,
	[step] [int] NULL,
	[level] [int] NULL,
	[enchantCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroWingMemoryPieceSlot]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWingMemoryPieceSlot](
	[heroId] [uniqueidentifier] NOT NULL,
	[wingId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[accAttrValue] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWingMemoryPieceSlot] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[wingId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWisdomTemplePlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWisdomTemplePlay](
	[heroId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HideoutEnterCountChargeLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HideoutEnterCountChargeLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[ownDia] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[chargedCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HideoutEnterCountChargeLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HideoutInstance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HideoutInstance](
	[instanceId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[status] [int] NOT NULL,
	[playTime] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[updateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HideoutInstance] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HideoutInstanceMember]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HideoutInstanceMember](
	[instanceId] [uniqueidentifier] NOT NULL,
	[enterNo] [int] NOT NULL,
	[heroId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[point] [int] NOT NULL,
	[rank] [int] NOT NULL,
	[endTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HideoutInstanceMember] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[enterNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HolyWarQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HolyWarQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [int] NULL,
	[completionTime] [datetimeoffset](7) NULL,
	[killCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HuntingDungeonQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HuntingDungeonQuest](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[completed] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_HuntingDungeonQuest] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InventorySlot]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InventorySlot](
	[heroId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[slotType] [int] NULL,
	[heroMainGearId] [uniqueidentifier] NOT NULL,
	[subGearId] [int] NULL,
	[type] [int] NULL,
	[heroGearId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[heroMountGearId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_InventorySlot] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ItemCompositionLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ItemCompositionLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwnCount] [int] NOT NULL,
	[itemUnOwnCount] [int] NOT NULL,
	[compositedItemId] [int] NOT NULL,
	[compositedItemCount] [int] NOT NULL,
	[compositedItemOwned] [bit] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ItemCompositionLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_LevelRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_LevelRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
	[levelUpdateTime] [datetimeoffset](7) NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_LevelRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_LoginLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_LoginLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[ip] [varchar](15) NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_LoginLog] PRIMARY KEY CLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_INDEX]
GO
/****** Object:  Table [dbo].[t_Mail]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Mail](
	[mailId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[titleType] [int] NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[contentType] [int] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[delivered] [bit] NOT NULL,
	[received] [bit] NOT NULL,
	[receiveTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[expireTime] [datetimeoffset](7) NOT NULL,
	[attachmentType] [int] NOT NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[gearId] [int] NULL,
	[gearGrade] [int] NULL,
	[gearOwned] [bit] NULL,
	[gearEnchantLevel] [int] NULL,
	[gearLevel] [int] NULL,
	[gearRoyalType] [int] NULL,
	[deleted] [bit] NULL,
	[delTime] [date] NULL,
	[deliveryTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_Mail] PRIMARY KEY NONCLUSTERED 
(
	[mailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_MailAttachment]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MailAttachment](
	[mailId] [uniqueidentifier] NOT NULL,
	[attachmentNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_MailAttachmentGearOptionAttr]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MailAttachmentGearOptionAttr](
	[mailId] [uniqueidentifier] NOT NULL,
	[optionIndex] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_t_MailAttachmentGearOptionAttr] PRIMARY KEY NONCLUSTERED 
(
	[mailId] ASC,
	[optionIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_MailTextArgument]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MailTextArgument](
	[mailId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[index] [int] NOT NULL,
	[valueType] [int] NOT NULL,
	[value] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_t_MailTextArgument] PRIMARY KEY NONCLUSTERED 
(
	[mailId] ASC,
	[type] ASC,
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_MainQuestDungeonPlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MainQuestDungeonPlay](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [int] NOT NULL,
	[dungeonId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[playTime] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[updateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_MainQuestDungeonPlay] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_MysteryBoxQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MysteryBoxQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[count] [int] NULL,
	[grade] [int] NULL,
	[completed] [int] NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [PK__t_MysteryBoxQuest] PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationAllianceApplication]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationAllianceApplication](
	[applicationId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[targetNationId] [int] NOT NULL,
	[fund] [bigint] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_NationAllianceApplication] PRIMARY KEY NONCLUSTERED 
(
	[applicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationBattlePowerRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationBattlePowerRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[nationid] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[battlePower] [bigint] NULL,
	[battlePowerUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationBattlePowerRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationBattlePowerRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationExploitPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationExploitPointRanking](
	[rankingNo] [int] NOT NULL,
	[nationId] [int] NULL,
	[ranking] [bigint] NULL,
	[heroId] [uniqueidentifier] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[exploitPoint] [int] NULL,
	[exploitPointUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationExploitPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationExploitPointRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationGuildRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationGuildRanking](
	[rankingNo] [int] NULL,
	[nationId] [int] NULL,
	[ranking] [int] NULL,
	[guildId] [uniqueidentifier] NULL,
	[guildName] [nvarchar](20) NULL,
	[guildMasterId] [uniqueidentifier] NULL,
	[guildMasterName] [nvarchar](20) NULL,
	[might] [float] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationGuildRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationGuildRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationIncumbentNoblesse]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationIncumbentNoblesse](
	[nationId] [int] NOT NULL,
	[noblesseId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationInstance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationInstance](
	[nationId] [int] NOT NULL,
	[nationWarPoint] [int] NOT NULL,
	[allianceId] [uniqueidentifier] NOT NULL,
	[fund] [bigint] NOT NULL,
	[nationWarCallDate] [date] NOT NULL,
	[nationWarCallCount] [int] NOT NULL,
	[convergingAttackDate] [date] NOT NULL,
	[convergingAttackCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationNoblesseAppointment]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationNoblesseAppointment](
	[nationId] [int] NOT NULL,
	[noblesseId] [int] NOT NULL,
	[appointmentTime] [datetimeoffset](7) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWarDeclaration]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarDeclaration](
	[declarationId] [uniqueidentifier] NULL,
	[nationId] [int] NULL,
	[targetNationId] [int] NULL,
	[status] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWarMember]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarMember](
	[declarationId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[killCount] [int] NULL,
	[assistCount] [int] NULL,
	[deadCount] [int] NULL,
	[immediateRevivalCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[rewarded] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWeeklyContributionPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyContributionPointRanking](
	[rankingNo] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[contributionPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyContributionPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[nationId] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyContributionPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyContributionPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyContributionPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyPopularityPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyPopularityPointRanking](
	[rankingNo] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[popularityPoint] [int] NOT NULL,
	[popularityPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyPopularityPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[nationId] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyPopularityPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyPopularityPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyPopularityPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyPresentContributionPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyPresentContributionPointRanking](
	[rankingNo] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[contributionPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyPresentContributionPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[nationId] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyPresentContributionPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyPresentContributionPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyPresentContributionPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyPresentPopularityPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyPresentPopularityPointRanking](
	[rankingNo] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[popularityPoint] [int] NOT NULL,
	[popularityPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyPresentPopularityPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[nationId] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWeeklyPresentPopularityPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWeeklyPresentPopularityPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWeeklyPresentPopularityPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_SecretLetterQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SecretLetterQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[targetNationId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [int] NULL,
	[completionTime] [datetimeoffset](7) NULL,
	[count] [int] NULL,
	[grade] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ServerBattlePowerRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerBattlePowerRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[nationid] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[battlePower] [bigint] NULL,
	[battlePowerUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ServerBattlePowerRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerBattlePowerRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerContributionPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerContributionPointRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[contributionPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerContributionPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerContributionPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerContributionPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerContributionPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerCreatureCardRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerCreatureCardRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[collectionFamePoint] [int] NULL,
	[collectionFamePointUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerCreatureCardRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerCreatureCardRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerGuildRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerGuildRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[nationId] [int] NULL,
	[guildId] [uniqueidentifier] NULL,
	[guildName] [nvarchar](20) NULL,
	[guildMasterId] [uniqueidentifier] NULL,
	[guildMasterName] [nvarchar](20) NULL,
	[might] [float] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerGuildRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerGuildRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerIllustratedBookRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerIllustratedBookRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[explorationPoint] [int] NULL,
	[explorationPointUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerIllustratedBookRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerIllustratedBookRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerJobbattlePowerRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerJobbattlePowerRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[nationid] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[battlePower] [bigint] NULL,
	[battlePowerUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ServerJobBattlePowerRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerJobBattlePowerRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerLevelRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerLevelRanking](
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[nationid] [int] NULL,
	[jobId] [int] NULL,
	[name] [nvarchar](20) NULL,
	[level] [int] NULL,
	[exp] [bigint] NULL,
	[levelUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ServerLevelRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerLevelRankingNo](
	[rankingNo] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerNationPowerRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerNationPowerRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[nationId] [int] NOT NULL,
	[nationPower] [int] NOT NULL,
	[nationWarPoint] [int] NOT NULL,
	[battlePower] [bigint] NOT NULL,
	[battlePowerUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerNationPowerRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerNationPowerRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerNationPowerRankingNo](
	[rankingNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerNationPowerRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerNotice]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerNotice](
	[noticeId] [uniqueidentifier] NOT NULL,
	[Content] [nvarchar](1000) NULL,
	[displayTime] [datetime] NULL,
	[displayInterval] [int] NULL,
	[repetitionCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerPopularityPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerPopularityPointRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[popularityPoint] [int] NOT NULL,
	[popularityPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerPopularityPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerPopularityPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerPopularityPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerPopularityPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerPresentContributionPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerPresentContributionPointRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[contributionPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerPresentContributionPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerPresentContributionPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerPresentContributionPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerPresentContributionPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerPresentPopularityPointRanking]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerPresentPopularityPointRanking](
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[level] [int] NOT NULL,
	[popularityPoint] [int] NOT NULL,
	[popularityPointUpdateTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerPresentPopularityPointRanking] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC,
	[ranking] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ServerPresentPopularityPointRankingNo]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ServerPresentPopularityPointRankingNo](
	[rankingNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ServerPresentPopularityPointRankingNo] PRIMARY KEY NONCLUSTERED 
(
	[rankingNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_Socket]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Socket](
	[heroGearId] [uniqueidentifier] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_t_Socket] PRIMARY KEY NONCLUSTERED 
(
	[heroGearId] ASC,
	[socketIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_SoulCoveterInstance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SoulCoveterInstance](
	[instanceId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NULL,
	[status] [int] NULL,
	[playTime] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [PK__t_SoulCoveterInstance] PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SoulCoveterInstanceMember]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SoulCoveterInstanceMember](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[status] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_StoryDungeonClear]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_StoryDungeonClear](
	[heroId] [uniqueidentifier] NULL,
	[dungeonNo] [int] NULL,
	[maxDifficulty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_StoryDungeonPlay]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_StoryDungeonPlay](
	[heroId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[dungeonNo] [int] NULL,
	[count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SupplySupportQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SupplySupportQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[CartId] [int] NULL,
	[CartHp] [int] NULL,
	[IsCartRiding] [bit] NULL,
	[CartContinentId] [int] NULL,
	[CartXPosition] [float] NULL,
	[CartYPosition] [float] NULL,
	[CartZPosition] [float] NULL,
	[CartYRotation] [float] NULL,
	[OrderId] [int] NULL,
	[Status] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_SupplySupportQuestVisitedWayPoint]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SupplySupportQuestVisitedWayPoint](
	[instanceId] [uniqueidentifier] NOT NULL,
	[WayPoint] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TempFriend]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TempFriend](
	[heroId] [uniqueidentifier] NOT NULL,
	[friendId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_TempFriend] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[friendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ThievesDenEnterCountChargeLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ThievesDenEnterCountChargeLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[heroId] [int] NOT NULL,
	[ownDia] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[chargedCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_ThievesDenEnterCountChargeLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ThievesDenInstance]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ThievesDenInstance](
	[instanceId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[status] [int] NOT NULL,
	[point] [int] NOT NULL,
	[playTime] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[updateTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_ThievesDenInstance] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ThievesDenInstanceMember]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ThievesDenInstanceMember](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [int] NOT NULL,
	[status] [int] NOT NULL,
	[point] [int] NOT NULL,
	[deadCount] [int] NOT NULL,
	[endTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_ThievesDenInstanceMember] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TreatOfFarmQuest]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TreatOfFarmQuest](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completed] [int] NULL,
	[completionTime] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_TreatOfFarmQuestMission]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TreatOfFarmQuestMission](
	[missionInstanceId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[MissionId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
	[monsterSpawnTime] [datetimeoffset](7) NULL,
	[status] [int] NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_VipLevelReward]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_VipLevelReward](
	[accountId] [uniqueidentifier] NOT NULL,
	[vipLevel] [int] NULL,
	[heroId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_VisitedContinent]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_VisitedContinent](
	[heroId] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_VisitedContinent] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[continentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_WarehouseSlot]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarehouseSlot](
	[heroId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[slotType] [int] NOT NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[subGearId] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[heroMountGearId] [uniqueidentifier] NULL,
 CONSTRAINT [pk_t_WarehouseSlot] PRIMARY KEY NONCLUSTERED 
(
	[heroId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_WorkLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WorkLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[logTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_WorkLog] PRIMARY KEY CLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_INDEX]
GO
/****** Object:  Table [dbo].[t_WorkLogEntry]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WorkLogEntry](
	[entryId] [bigint] IDENTITY(1,1) NOT NULL,
	[logNo] [bigint] NOT NULL,
	[typeName] [nvarchar](500) NOT NULL,
	[requestCount] [bigint] NOT NULL,
 CONSTRAINT [pk_t_WorkLogEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_WorkQueueLog]    Script Date: 2023/4/7 16:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WorkQueueLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[workCount] [int] NOT NULL,
	[logTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_WorkQueueLog] PRIMARY KEY CLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_INDEX]
GO
ALTER TABLE [dbo].[t_Account] ADD  CONSTRAINT [df_t_Account__deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[t_Account] ADD  CONSTRAINT [df_t_Account__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_Account] ADD  CONSTRAINT [df_t_Account__firstChargeEventRewarded]  DEFAULT ((0)) FOR [firstChargeEventRewarded]
GO
ALTER TABLE [dbo].[t_Account] ADD  CONSTRAINT [df_t_Account__rechargeEventAccUnOwnDia]  DEFAULT ((0)) FOR [rechargeEventAccUnOwnDia]
GO
ALTER TABLE [dbo].[t_Account] ADD  CONSTRAINT [df_t_Account__rechargeEventRewarded]  DEFAULT ((0)) FOR [rechargeEventRewarded]
GO
ALTER TABLE [dbo].[t_Account] ADD  CONSTRAINT [df_t_Account__firstChargeEventObjectiveCompleted]  DEFAULT ((0)) FOR [firstChargeEventObjectiveCompleted]
GO
ALTER TABLE [dbo].[t_Alliance] ADD  CONSTRAINT [df_t_Alliance__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_AttainmentEntryReward] ADD  CONSTRAINT [df_t_AttainmentEntryReward__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_BountyHunterQuest] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_BountyHunterQuest] ADD  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_ChattingLog] ADD  CONSTRAINT [df_t_ChattingLog__logTime]  DEFAULT (sysdatetimeoffset()) FOR [logTime]
GO
ALTER TABLE [dbo].[t_ConnectionLog] ADD  CONSTRAINT [df_t_ConnectionLog__logTime]  DEFAULT (sysdatetimeoffset()) FOR [logTime]
GO
ALTER TABLE [dbo].[t_ContinentRevivalLog] ADD  CONSTRAINT [df_t_ContinentRevivalLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_DeadRecord] ADD  CONSTRAINT [df_t_DeadRecord__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_DimensionRaidQuest] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_Enemy] ADD  CONSTRAINT [df_t_Enemy__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ExpDungeonEnterCountChargeLog] ADD  CONSTRAINT [df_t_ExpDungeonEnterCountChargeLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ExpDungeonPlay] ADD  CONSTRAINT [df_t_ExpDungeonPlay__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_GearDisassembleLog] ADD  CONSTRAINT [df_t_GearDisassembleLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_Guild] ADD  CONSTRAINT [df_t_Guild__blessingBuffId]  DEFAULT ((0)) FOR [blessingBuffId]
GO
ALTER TABLE [dbo].[t_Guild] ADD  CONSTRAINT [DF__t_Guild__deleted__754FD53F]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[t_GuildApplication] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_GuildSupplySupportQuest] ADD  CONSTRAINT [DF__t_GuildSu__Statu__0CF3EB54]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__jobId]  DEFAULT ((0)) FOR [jobId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__nationId]  DEFAULT ((0)) FOR [nationId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__level]  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__exp]  DEFAULT ((0)) FOR [exp]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__battlePower]  DEFAULT ((0)) FOR [battlePower]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__hp]  DEFAULT ((0)) FOR [hp]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__namingTutorialCompleted]  DEFAULT ((0)) FOR [namingTutorialCompleted]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__created]  DEFAULT ((0)) FOR [created]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__unOwnDia]  DEFAULT ((0)) FOR [baseUnOwnDia]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__ownDia]  DEFAULT ((0)) FOR [ownDia]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__gold]  DEFAULT ((0)) FOR [gold]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__inventorySlotCount]  DEFAULT ((80)) FOR [inventorySlotCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__bonusUnOwnDia]  DEFAULT ((0)) FOR [bonusUnOwnDia]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__jobPoint]  DEFAULT ((0)) FOR [jobPoint]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__chattingBubbleDisplayed]  DEFAULT ((1)) FOR [chattingBubbleDisplayed]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__weeklyQuestFeverStep]  DEFAULT ((0)) FOR [weeklyQuestFeverStep]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__weeklyQuestFeverProgressCount]  DEFAULT ((0)) FOR [weeklyQuestFeverProgressCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__equippedSkinId]  DEFAULT ((0)) FOR [equippedSkinId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__skinHelmetVisible]  DEFAULT ((1)) FOR [skinHelmetVisible]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__accumulationLoginDayCount]  DEFAULT ((0)) FOR [accumulationLoginDayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__deadCount]  DEFAULT ((0)) FOR [deadCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__levelUpdateTime]  DEFAULT (sysdatetimeoffset()) FOR [levelUpdateTime]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__battlePowerUpdateTime]  DEFAULT (sysdatetimeoffset()) FOR [battlePowerUpdateTime]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__realMaxHp]  DEFAULT ((0)) FOR [realMaxHp]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__realPhysicalOffense]  DEFAULT ((0)) FOR [realPhysicalOffense]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__realMagicalOffense]  DEFAULT ((0)) FOR [realMagicalOffense]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__realPhysicalDefense]  DEFAULT ((0)) FOR [realPhysicalDefense]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__realMagicalDefense]  DEFAULT ((0)) FOR [realMagicalDefense]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__lak]  DEFAULT ((0)) FOR [lak]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__hpPotionAutoEnabled]  DEFAULT ((1)) FOR [hpPotionAutoEnabled]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__autoCountattackEnabled]  DEFAULT ((1)) FOR [autoCountattackEnabled]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__monsterBattleEvasionEnabled]  DEFAULT ((0)) FOR [monsterBattleEvasionEnabled]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__battleAreaType]  DEFAULT ((2)) FOR [battleAreaType]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__lootingGearMinGrade]  DEFAULT ((1)) FOR [lootingGearMinGrade]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__lootingItemMinGrade]  DEFAULT ((1)) FOR [lootingItemMinGrade]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__lastLocationParam]  DEFAULT ((0)) FOR [lastLocationParam]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__infiniteWarPlayCount]  DEFAULT ((0)) FOR [infiniteWarPlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__ruinsReclaimFreePlayCount]  DEFAULT ((0)) FOR [ruinsReclaimFreePlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__wisdomTempleCleared]  DEFAULT ((0)) FOR [wisdomTempleCleared]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__paidWarehouseSlotCount]  DEFAULT ((0)) FOR [paidWarehouseSlotCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__fearAltarPlayCount]  DEFAULT ((0)) FOR [fearAltarPlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__fearAltarHalidomCollectionRewardNo]  DEFAULT ((0)) FOR [fearAltarHalidomCollectionRewardNo]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__warMemoryFreePlayCount]  DEFAULT ((0)) FOR [warMemoryFreePlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__osirisRoomPlayCount]  DEFAULT ((0)) FOR [osirisRoomPlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__friendAutoAcceptable]  DEFAULT ((0)) FOR [friendAutoAcceptable]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__itemLuckyShopFreePickCount]  DEFAULT ((0)) FOR [itemLuckyShopFreePickCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__itemLuckyShopPick1TimeCount]  DEFAULT ((0)) FOR [itemLuckyShopPick1TimeCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__itemLuckyShopPick5TimeCount]  DEFAULT ((0)) FOR [itemLuckyShopPick5TimeCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__creatureCardLuckyShopFreePickCount]  DEFAULT ((0)) FOR [creatureCardLuckyShopFreePickCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__creatureCardLuckyShopPick1TimeCount]  DEFAULT ((0)) FOR [creatureCardLuckyShopPick1TimeCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__creatureCardLuckyShopPick5TimeCount]  DEFAULT ((0)) FOR [creatureCardLuckyShopPick5TimeCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__participationHeroCreatureId]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [participationHeroCreatureId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__creatureVariationCount]  DEFAULT ((0)) FOR [creatureVariationCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__rewardedNationWeeklyPresentPopularityPointRankingNo]  DEFAULT ((0)) FOR [rewardedNationWeeklyPresentPopularityPointRankingNo]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__rewardedNationWeeklyPresentContributionPointRankingNo]  DEFAULT ((0)) FOR [rewardedNationWeeklyPresentContributionPointRankingNo]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__open7DayEventRewarded]  DEFAULT ((0)) FOR [open7DayEventRewarded]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__ankouTombPlayCount]  DEFAULT ((0)) FOR [ankouTombPlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__baseJobId]  DEFAULT ((0)) FOR [baseJobId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__starEssense]  DEFAULT ((0)) FOR [starEssense]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__starEssenseItemUseCount]  DEFAULT ((0)) FOR [starEssenseItemUseCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__tradeShipPlayCount]  DEFAULT ((0)) FOR [tradeShipPlayCount]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__equippedArtifactNo]  DEFAULT ((0)) FOR [equippedArtifactNo]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__artifactNo]  DEFAULT ((0)) FOR [artifactNo]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__artifactLevel]  DEFAULT ((0)) FOR [artifactLevel]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__artifactExp]  DEFAULT ((0)) FOR [artifactExp]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__equippedCostumeId]  DEFAULT ((0)) FOR [equippedCostumeId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__costumeCollectionId]  DEFAULT ((0)) FOR [costumeCollectionId]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__costumeCollectionActivated]  DEFAULT ((0)) FOR [costumeCollectionActivated]
GO
ALTER TABLE [dbo].[t_Hero] ADD  CONSTRAINT [df_t_Hero__gmTargetMainQuestNo]  DEFAULT ((0)) FOR [gmTargetMainQuestNo]
GO
ALTER TABLE [dbo].[t_HeroBiography] ADD  CONSTRAINT [df_t_HeroBiography__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBiography] ADD  CONSTRAINT [df_t_HeroBiography__completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HeroBiographyQuest] ADD  CONSTRAINT [df_t_HeroBiographyQuest__progressCount]  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroBiographyQuest] ADD  CONSTRAINT [df_t_HeroBiographyQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBiographyQuest] ADD  CONSTRAINT [df_t_HeroBiographyQuest__completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HeroCostume] ADD  CONSTRAINT [df_t_HeroCostume__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureCardShopRandomProduct] ADD  DEFAULT ((0)) FOR [purchased]
GO
ALTER TABLE [dbo].[t_HeroCreatureFarmQuest] ADD  CONSTRAINT [df_t_HeroCreatureFarmQuest__progressCount]  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroCreatureFarmQuest] ADD  CONSTRAINT [df_t_HeroCreatureFarmQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureFarmQuest] ADD  CONSTRAINT [df_t_HeroCreatureFarmQuest__completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HeroDailyQuest] ADD  DEFAULT ((0)) FOR [missionImmediateCompleted]
GO
ALTER TABLE [dbo].[t_HeroDailyQuestExtraRewardLog] ADD  CONSTRAINT [df_t_HeroDailyQuestExtraRewardLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroDailyQuestRenewalLog] ADD  CONSTRAINT [df_t_HeroDailyQuestRenewalLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroEpisodeAdditionalRewardLog] ADD  CONSTRAINT [df_t_HeroEpisodeAdditionalRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__gearId]  DEFAULT ((0)) FOR [gearId]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__grade]  DEFAULT ((0)) FOR [grade]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__owned]  DEFAULT ((0)) FOR [owned]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__enchantLevel]  DEFAULT ((0)) FOR [enchantLevel]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__level]  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__royalType]  DEFAULT ((0)) FOR [royalType]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__compositionType]  DEFAULT ((0)) FOR [compositionType]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[t_HeroGear] ADD  CONSTRAINT [df_t_HeroGear__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGearCompositionLog] ADD  CONSTRAINT [df_t_HeroGearCompositionLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGearEnchantLog] ADD  CONSTRAINT [df_t_HeroGearEnchantLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGearOptionAttr] ADD  CONSTRAINT [df_t_HeroGearOptionAttr__attrId]  DEFAULT ((0)) FOR [attrId]
GO
ALTER TABLE [dbo].[t_HeroGearOptionAttr] ADD  CONSTRAINT [df_t_HeroGearOptionAttr__value]  DEFAULT ((0)) FOR [value]
GO
ALTER TABLE [dbo].[t_HeroGearOptionAttrInheritLog] ADD  CONSTRAINT [df_t_HeroGearOptionAttrInheritLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementDetailLog] ADD  CONSTRAINT [df_t_HeroGearRefinementDetailLog__itemId]  DEFAULT ((0)) FOR [itemId]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementDetailLog] ADD  CONSTRAINT [df_t_HeroGearRefinementDetailLog__itemOwnCount]  DEFAULT ((0)) FOR [itemOwnCount]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementDetailLog] ADD  CONSTRAINT [df_t_HeroGearRefinementDetailLog__itemUnOwnCount]  DEFAULT ((0)) FOR [itemUnOwnCount]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__type]  DEFAULT ((1)) FOR [type]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__oldOwned]  DEFAULT ((0)) FOR [oldOwned]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__newOwned]  DEFAULT ((0)) FOR [owned]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__oldLevel]  DEFAULT ((1)) FOR [oldLevel]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__newLevel]  DEFAULT ((1)) FOR [level]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__gold]  DEFAULT ((0)) FOR [usedGold]
GO
ALTER TABLE [dbo].[t_HeroGearRefinementLog] ADD  CONSTRAINT [df_t_HeroGearRefinementLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGearWorkmanshipLog] ADD  CONSTRAINT [df_t_HeroGearWorkmanshipLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroGuildHuntingQuest] ADD  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroGuildHuntingQuest] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_HeroGuildMissionQuest] ADD  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HeroGuildMissionQuestMission] ADD  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroGuildMissionQuestMission] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_HeroJobChangeQuest] ADD  CONSTRAINT [df_t_HeroJobChangeQuest__progressCount]  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroJobChangeQuest] ADD  CONSTRAINT [df_t_HeroJobChangeQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroJobChangeQuest] ADD  CONSTRAINT [df_t_HeroJobChangeQuest__status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_HeroMainGearOptionAttr] ADD  DEFAULT ((0)) FOR [grade]
GO
ALTER TABLE [dbo].[t_HeroMainGearOptionAttr] ADD  DEFAULT ((0)) FOR [attrId]
GO
ALTER TABLE [dbo].[t_HeroMainGearOptionAttr] ADD  DEFAULT ((0)) FOR [attrValueId]
GO
ALTER TABLE [dbo].[t_HeroMainGearOptionAttr] ADD  DEFAULT (newid()) FOR [heroMainGearId]
GO
ALTER TABLE [dbo].[t_HeroMainGearRefinementAttr] ADD  DEFAULT (newid()) FOR [heroMainGearId]
GO
ALTER TABLE [dbo].[t_HeroMainGearRefinementAttr] ADD  DEFAULT ((0)) FOR [grade]
GO
ALTER TABLE [dbo].[t_HeroMainGearRefinementAttr] ADD  DEFAULT ((0)) FOR [attrId]
GO
ALTER TABLE [dbo].[t_HeroMainGearRefinementAttr] ADD  DEFAULT ((0)) FOR [attrValueId]
GO
ALTER TABLE [dbo].[t_HeroMainGearRefinementAttr] ADD  DEFAULT ((0)) FOR [turn]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [mainQuestNo]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [isCartRiding]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [cartContinentId]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [cartXPosition]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [cartYPosition]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [cartZPosition]
GO
ALTER TABLE [dbo].[t_HeroMainQuest] ADD  DEFAULT ((0)) FOR [cartYRotation]
GO
ALTER TABLE [dbo].[t_HeroMainQuestObjectInteractionLog] ADD  CONSTRAINT [df_t_HeroMainQuestObjectInteractionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroMount] ADD  CONSTRAINT [df_tmp1]  DEFAULT ((0)) FOR [awakeningLevel]
GO
ALTER TABLE [dbo].[t_HeroMount] ADD  CONSTRAINT [df_tmp2]  DEFAULT ((0)) FOR [awakeningExp]
GO
ALTER TABLE [dbo].[t_HeroMount] ADD  CONSTRAINT [df_tmp3]  DEFAULT ((0)) FOR [potionAttrCount]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuest] ADD  CONSTRAINT [df_t_HeroOrdealQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuest] ADD  CONSTRAINT [df_t_HeroOrdealQuest__completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuestMission] ADD  CONSTRAINT [df_t_HeroOrdealQuestMission__progressCount]  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuestMission] ADD  CONSTRAINT [df_t_HeroOrdealQuestMission__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuestMission] ADD  CONSTRAINT [df_t_HeroOrdealQuestMission__completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HeroProspectQuest] ADD  CONSTRAINT [df_t_HeroProspectQuest__status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_HeroProspectQuest] ADD  CONSTRAINT [df_t_HeroProspectQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroProspectQuest] ADD  CONSTRAINT [df_t_HeroProspectQuest__ownerRewarded]  DEFAULT ((0)) FOR [ownerRewarded]
GO
ALTER TABLE [dbo].[t_HeroProspectQuest] ADD  CONSTRAINT [df_t_HeroProspectQuest__targetRewarded]  DEFAULT ((0)) FOR [targetRewarded]
GO
ALTER TABLE [dbo].[t_HeroSkill] ADD  CONSTRAINT [df_t_HeroSkill__selectedRuneNo]  DEFAULT ((0)) FOR [selectedRuneNo]
GO
ALTER TABLE [dbo].[t_HeroSkill] ADD  CONSTRAINT [df_t_HeroSkill__level]  DEFAULT ((1)) FOR [level]
GO
ALTER TABLE [dbo].[t_HeroSkin] ADD  CONSTRAINT [df_t_HeroSkin__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroSubGear] ADD  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[t_HeroSubGear] ADD  DEFAULT ((0)) FOR [quality]
GO
ALTER TABLE [dbo].[t_HeroSubGear] ADD  DEFAULT ((0)) FOR [equipped]
GO
ALTER TABLE [dbo].[t_HeroSubGearRuneSocket] ADD  DEFAULT (newid()) FOR [heroId]
GO
ALTER TABLE [dbo].[t_HeroSubGearRuneSocket] ADD  DEFAULT ((0)) FOR [subGearId]
GO
ALTER TABLE [dbo].[t_HeroSubGearRuneSocket] ADD  DEFAULT ((0)) FOR [socketIndex]
GO
ALTER TABLE [dbo].[t_HeroSubGearRuneSocket] ADD  DEFAULT ((0)) FOR [itemId]
GO
ALTER TABLE [dbo].[t_HeroSubGearSoulstoneSocket] ADD  DEFAULT (newid()) FOR [heroId]
GO
ALTER TABLE [dbo].[t_HeroSubGearSoulstoneSocket] ADD  DEFAULT ((0)) FOR [subGearId]
GO
ALTER TABLE [dbo].[t_HeroSubGearSoulstoneSocket] ADD  DEFAULT ((0)) FOR [socketIndex]
GO
ALTER TABLE [dbo].[t_HeroSubGearSoulstoneSocket] ADD  DEFAULT ((0)) FOR [itemId]
GO
ALTER TABLE [dbo].[t_HeroSubQuest] ADD  CONSTRAINT [df_t_HeroSubQuest__progressCount]  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HeroSubQuest] ADD  CONSTRAINT [df_t_HeroSubQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroSubQuest] ADD  CONSTRAINT [df_t_HeroSubQuest__status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_HeroTaskConsignment] ADD  CONSTRAINT [df_t_HeroTaskConsignment__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroTrueHeroQuest] ADD  CONSTRAINT [df_t_HeroTrueHeroQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestExtraRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestExtraRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestFeverRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestFeverRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HideoutEnterCountChargeLog] ADD  CONSTRAINT [df_t_HideoutEnterCountChargeLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HideoutInstance] ADD  CONSTRAINT [df_t_HideoutInstance__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HolyWarQuest] ADD  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HolyWarQuest] ADD  DEFAULT ((0)) FOR [killCount]
GO
ALTER TABLE [dbo].[t_HuntingDungeonQuest] ADD  CONSTRAINT [df_t_HuntingDungeonQuest__progressCount]  DEFAULT ((0)) FOR [progressCount]
GO
ALTER TABLE [dbo].[t_HuntingDungeonQuest] ADD  CONSTRAINT [df_t_HuntingDungeonQuest__completed]  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_HuntingDungeonQuest] ADD  CONSTRAINT [df_t_HuntingDungeonQuest__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ItemCompositionLog] ADD  CONSTRAINT [df_t_ItemCompositionLog__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_LoginLog] ADD  CONSTRAINT [df_t_LoginLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_Mail] ADD  CONSTRAINT [df_t_Mail__titleType]  DEFAULT ((1)) FOR [titleType]
GO
ALTER TABLE [dbo].[t_Mail] ADD  CONSTRAINT [df_t_Mail__contentType]  DEFAULT ((1)) FOR [contentType]
GO
ALTER TABLE [dbo].[t_Mail] ADD  CONSTRAINT [df_t_Mail__delivered]  DEFAULT ((0)) FOR [delivered]
GO
ALTER TABLE [dbo].[t_Mail] ADD  CONSTRAINT [df_t_Mail__received]  DEFAULT ((0)) FOR [received]
GO
ALTER TABLE [dbo].[t_Mail] ADD  CONSTRAINT [df_t_Mail__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_Mail] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[t_MailAttachmentGearOptionAttr] ADD  CONSTRAINT [df_t_MailAttachmentGearOptionAttr__attrId]  DEFAULT ((0)) FOR [attrId]
GO
ALTER TABLE [dbo].[t_MailAttachmentGearOptionAttr] ADD  CONSTRAINT [df_t_MailAttachmentGearOptionAttr__value]  DEFAULT ((0)) FOR [value]
GO
ALTER TABLE [dbo].[t_MailTextArgument] ADD  CONSTRAINT [df_t_MailTextArgument__valueType]  DEFAULT ((1)) FOR [valueType]
GO
ALTER TABLE [dbo].[t_MainQuestDungeonPlay] ADD  CONSTRAINT [df_t_MainQuestDungeonPlay__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationAllianceApplication] ADD  CONSTRAINT [df_t_NationAllianceApplication__status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[t_NationAllianceApplication] ADD  CONSTRAINT [df_t_NationAllianceApplication__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationInstance] ADD  CONSTRAINT [df_t_NationInstance__nationWarPoint]  DEFAULT ((0)) FOR [nationWarPoint]
GO
ALTER TABLE [dbo].[t_NationInstance] ADD  CONSTRAINT [df_t_NationInstance__allianceId]  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [allianceId]
GO
ALTER TABLE [dbo].[t_NationWeeklyContributionPointRankingNo] ADD  CONSTRAINT [df_t_NationWeeklyContributionPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationWeeklyPopularityPointRankingNo] ADD  CONSTRAINT [df_t_NationWeeklyPopularityPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationWeeklyPresentContributionPointRankingNo] ADD  CONSTRAINT [df_t_NationWeeklyPresentContributionPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationWeeklyPresentPopularityPointRankingNo] ADD  CONSTRAINT [df_t_NationWeeklyPresentPopularityPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_SecretLetterQuest] ADD  DEFAULT ((0)) FOR [completed]
GO
ALTER TABLE [dbo].[t_SecretLetterQuest] ADD  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[t_SecretLetterQuest] ADD  DEFAULT ((0)) FOR [grade]
GO
ALTER TABLE [dbo].[t_ServerContributionPointRankingNo] ADD  CONSTRAINT [df_t_ServerContributionPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ServerNationPowerRankingNo] ADD  CONSTRAINT [df_t_ServerNationPowerRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ServerPopularityPointRankingNo] ADD  CONSTRAINT [df_t_ServerPopularityPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ServerPresentContributionPointRankingNo] ADD  CONSTRAINT [df_t_ServerPresentContributionPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ServerPresentPopularityPointRankingNo] ADD  CONSTRAINT [df_t_ServerPresentPopularityPointRankingNo__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_TempFriend] ADD  CONSTRAINT [df_t_TempFriend__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ThievesDenEnterCountChargeLog] ADD  CONSTRAINT [df_t_ThievesDenEnterCountChargeLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_ThievesDenInstance] ADD  CONSTRAINT [df_t_ThievesDenInstance__regTIme]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_VisitedContinent] ADD  CONSTRAINT [df_t_VisitedContinent__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_WorkQueueLog] ADD  CONSTRAINT [df_t_WorkQueueLog__logTime]  DEFAULT (sysdatetimeoffset()) FOR [logTime]
GO
