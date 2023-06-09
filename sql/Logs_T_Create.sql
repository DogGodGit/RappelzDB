USE [Rappelz_Logs]
GO
/****** Object:  Table [dbo].[l_ClientLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[l_ClientLog](
	[logNo] [bigint] IDENTITY(1,1) NOT NULL,
	[serviceId] [int] NULL,
	[appId] [varchar](50) NULL,
	[udid] [varchar](50) NULL,
	[brand] [nvarchar](20) NULL,
	[model] [nvarchar](20) NULL,
	[osName] [nvarchar](20) NULL,
	[osVersion] [nvarchar](20) NULL,
	[version] [nvarchar](20) NULL,
	[versionCode] [nvarchar](20) NULL,
	[language] [nvarchar](20) NULL,
	[country] [nvarchar](20) NULL,
	[cpuUsage] [nvarchar](500) NULL,
	[freeMemory] [nvarchar](500) NULL,
	[content] [nvarchar](max) NULL,
	[ipAddress] [varchar](20) NULL,
	[logTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_l_ClientLog] PRIMARY KEY NONCLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AccessRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccessRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AccessRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccessRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[accessTime] [float] NULL,
	[entryId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AccountLoginLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AccountLoginLog](
	[logId] [uniqueidentifier] NULL,
	[accountId] [uniqueidentifier] NULL,
	[Ip] [varchar](200) NOT NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AchievementRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AchievementRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AchievementRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AchievementRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[achievementPoint] [int] NULL,
	[rewardNo] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AncientRelicRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AncientRelicRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AncientRelicRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AncientRelicRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[step] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AnkouTombCompletionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnkouTombCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_AnkouTombCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AnkouTombCompletionMemberAdditionalRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnkouTombCompletionMemberAdditionalRewardLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardExpType] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_t_AnkouTombCompletionMemberAdditionalRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AnkouTombCompletionMemberRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnkouTombCompletionMemberRewardLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_AnkouTombCompletionMemberRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AnkouTombCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnkouTombCreationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_AnkouTombCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AnkouTombMemberDisqualificationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnkouTombMemberDisqualificationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_AnkouTombMemberDisqualificationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_AnkouTombMemberLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnkouTombMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [pk_t_AnkouTombMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ArtifactRoomInitLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ArtifactRoomInitLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[bestFloor] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ArtifactRoomPlayLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ArtifactRoomPlayLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[oldFloor] [int] NULL,
	[floor] [int] NULL,
	[bestFloor] [int] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AttainmentEntryRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AttainmentEntryRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[contentId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AttainmentEntryRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AttainmentEntryRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[entryNo] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_BountyHunterQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_BountyHunterQuestRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ChattingLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ChattingLog](
	[logId] [uniqueidentifier] NULL,
	[chattingType] [int] NULL,
	[linkType] [int] NULL,
	[senderId] [uniqueidentifier] NULL,
	[targetId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ChattingMessageLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ChattingMessageLog](
	[logId] [uniqueidentifier] NULL,
	[no] [int] NULL,
	[message] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ConnectionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ConnectionLog](
	[logId] [uniqueidentifier] NULL,
	[clientCount] [int] NULL,
	[heroCount] [int] NULL,
	[logTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ContinentEliteMonsterSpawnLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ContinentEliteMonsterSpawnLog](
	[logId] [uniqueidentifier] NULL,
	[eliteMonsterId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DailyAttendRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DailyAttendRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[day] [int] NULL,
	[dailyRewardItemId] [int] NULL,
	[dailyRewardItemCount] [int] NULL,
	[dailyRewardItemOwned] [bit] NULL,
	[weekendRewardItemId] [int] NULL,
	[weekendRewardItemCount] [int] NULL,
	[weekendRewardItemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DimensionRaidQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DimensionRaidQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_DragonNestCompletionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DragonNestCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[additionalStepOpened] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_DragonNestCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DragonNestCompletionMemberLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DragonNestCompletionMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_DragonNestCompletionMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DragonNestCompletionMemberRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DragonNestCompletionMemberRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[stepNo] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_DragonNestCompletionMemberRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DragonNestCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DragonNestCreationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_DragonNestCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DragonNestMemberDisqualificationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DragonNestMemberDisqualificationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_DragonNestMemberDisqualificationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_DragonNestMemberLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_DragonNestMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [pk_t_DragonNestMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_ExpDungeonPlayLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ExpDungeonPlayLog](
	[logId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[difficulty] [int] NULL,
	[status] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_FearAltarCompletionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FearAltarCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_FearAltarCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FearAltarCompletionMemberLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FearAltarCompletionMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
 CONSTRAINT [pk_t_FearAltarCompletionMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FearAltarCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FearAltarCreationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[stageId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_FearAltarCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FearAltarDisqualificationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FearAltarDisqualificationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_FearAltarDisqualificationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FearAltarHalidomAcquisitionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FearAltarHalidomAcquisitionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[halidomId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_FearAltarHalidomAcquisitionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FearAltarMemberLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FearAltarMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_FearAltarMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldBossCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldBossCreationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[monsterInstanceId] [bigint] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[fieldBossId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_FieldBossCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldBossKillLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldBossKillLog](
	[logId] [uniqueidentifier] NOT NULL,
	[monsterInstanceId] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_FieldBossKillLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldBossRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldBossRewardLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_FieldBossRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorRankingRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorRankingRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_FieldOfHonorRankingRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FieldOfHonorRankingRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_FishingQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FishingQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questDate] [date] NULL,
	[questCount] [int] NULL,
	[baitItemId] [int] NULL,
	[castingCount] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GoldDungeonPlayLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GoldDungeonPlayLog](
	[logId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[difficulty] [int] NULL,
	[status] [int] NULL,
	[rewardGold] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildAltarCompletionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildAltarCompletionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rewardExp] [bigint] NULL,
	[rewardGuildContributionPoint] [int] NULL,
	[rewardGuildFund] [int] NULL,
	[rewardGuildBuildingPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildAltarDefenseLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildAltarDefenseLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[level] [int] NULL,
	[guildLevel] [int] NULL,
	[rewardMoralPoint] [int] NULL,
	[addedMoralPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildAltarDonationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildAltarDonationLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedGold] [int] NULL,
	[rewardMoralPoint] [int] NULL,
	[addedMoralPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildAltarRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildAltarRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[guildMoralPoint] [int] NULL,
	[guildLevel] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildAltarSpellInjectionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildAltarSpellInjectionLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rewardMoralPoint] [int] NULL,
	[addedMoralPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildApplicationAcceptanceLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildApplicationAcceptanceLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[acceptanceHeroId] [uniqueidentifier] NULL,
	[guildMemberGrade] [int] NULL,
	[applicationHeroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildAppointmentLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildAppointmentLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[guildMemberGrade] [int] NULL,
	[targetHeroId] [uniqueidentifier] NULL,
	[oldTargetHeroGuildMemberGrade] [int] NULL,
	[targetHeroGuildMemberGrade] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildBanishmentLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildBanishmentLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[guildMemberGrade] [int] NULL,
	[banishedHeroId] [uniqueidentifier] NULL,
	[banishedHeroGuildMemberGrade] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildBlessingBuffBuyLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildBlessingBuffBuyLog](
	[logId] [uniqueidentifier] NOT NULL,
	[guildId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[memberGrade] [int] NOT NULL,
	[buffId] [int] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_GuildBlessingBuffBuyLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildBuildingLevelUpLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildBuildingLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[buildingId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[guildLobbyLevel] [int] NULL,
	[guildBuildingPoint] [int] NULL,
	[usedGuildFund] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildCreationLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildDailyItemRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildDailyItemRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildDailyObjectiveLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildDailyObjectiveLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[objectiveContentId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildDailyObjectiveRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildDailyObjectiveRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildDailyObjectiveRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildDailyObjectiveRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[date] [date] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rewardNo] [int] NULL,
	[completionMemberCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildDonationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildDonationLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[entryId] [int] NULL,
	[usedGold] [bigint] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[rewardGuildContributionPoint] [int] NULL,
	[rewardGuildFund] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildFarmQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildFarmQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[rewardExp] [bigint] NULL,
	[rewardGuildContributionPoint] [int] NULL,
	[rewardGuildBuildingPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildFoodWarehouseCollectionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildFoodWarehouseCollectionLog](
	[collectionId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildFoodWarehouseRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildFoodWarehouseRewardLog](
	[logId] [uniqueidentifier] NULL,
	[collectionId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildFoodWarehouseStockLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildFoodWarehouseStockLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[oldLevel] [int] NULL,
	[oldExp] [int] NULL,
	[level] [int] NULL,
	[exp] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildHuntingDonationCompletionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildHuntingDonationCompletionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildHuntingDonationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildHuntingDonationLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemCount] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildHuntingQuestMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildHuntingQuestMissionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[ItemId] [int] NULL,
	[ItemCount] [int] NULL,
	[ItemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildInvitationAcceptanceLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildInvitationAcceptanceLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[invitationHeroId] [uniqueidentifier] NULL,
	[acceptanceHeroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildMissionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[missionInstanceId] [uniqueidentifier] NULL,
	[missionId] [int] NULL,
	[rewardGuildContributionPoint] [int] NULL,
	[rewardGuildFund] [int] NULL,
	[rewardGuildBuildingPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemCount] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildSupplySupportQuestExtraRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildSupplySupportQuestExtraRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[rewardGuildContributionPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildSupplySupportQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildSupplySupportQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[rewardGuildBuildingPoint] [int] NULL,
	[rewardGuildFund] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildWeeklyObjectiveLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildWeeklyObjectiveLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[objectiveId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildWeeklyObjectiveRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildWeeklyObjectiveRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_GuildWeeklyObjectiveRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildWeeklyObjectiveRewardLog](
	[logId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[objectiveId] [int] NULL,
	[completionMemberCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroAccomplishmentRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroAccomplishmentRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[accomplishmentId] [int] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemCount] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroArtifactLevelUpDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroArtifactLevelUpDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[heroMainGearId] [uniqueidentifier] NOT NULL,
	[exp] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroArtifactLevelUpDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroArtifactLevelUpLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroArtifactLevelUpLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldArtifactNo] [int] NOT NULL,
	[oldArtifactLevel] [int] NOT NULL,
	[oldArtifactExp] [int] NOT NULL,
	[artifactNo] [int] NOT NULL,
	[artifactLevel] [int] NOT NULL,
	[artifactExp] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroArtifactLevelUpLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBiographyQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBiographyQuestRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[biographyId] [int] NOT NULL,
	[questNo] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroBiographyQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBiographyRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBiographyRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroBiographyRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBiographyRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBiographyRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[biographyId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroBiographyRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBiographyStartLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBiographyStartLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[biographyId] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroBiographyStartLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBlessingQuestRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBlessingQuestRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroBlessingQuestRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBlessingReceivingLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBlessingReceivingLog](
	[logId] [uniqueidentifier] NOT NULL,
	[sendingLogId] [uniqueidentifier] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroBlessingReceivingLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroBlessingSendingLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroBlessingSendingLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[blessingReceiveHeroId] [uniqueidentifier] NOT NULL,
	[targetLevelId] [int] NOT NULL,
	[blessingId] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroBlessingSendingLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroChargeEventMissionRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroChargeEventMissionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroChargeEventMissionRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroChargeEventMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroChargeEventMissionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroChargeEventMissionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroConstellationActivationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroConstellationActivationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[usedStartEssense] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[activated] [bit] NOT NULL,
	[failPoint] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroConstellationActivationLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroConstellationStepOpenLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroConstellationStepOpenLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroConstellationStepOpenLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroConsumeEventMissionRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroConsumeEventMissionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroConsumeEventMissionRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroConsumeEventMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroConsumeEventMissionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroConsumeEventMissionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroContinentEliteMonsterKillLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroContinentEliteMonsterKillLog](
	[killLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCostumeAcquisitionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCostumeAcquisitionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[costumeId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCostumeAcquisitionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCostumeCollectionActivationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCostumeCollectionActivationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[costumeCollectionId] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCostumeCollectionActivationLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCostumeCollectionShuffleLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCostumeCollectionShuffleLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldCostumeCollectionId] [int] NOT NULL,
	[costumeCollectionId] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCostumeCollectionShuffleLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCostumeEffectApplicationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCostumeEffectApplicationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[costumeId] [int] NOT NULL,
	[oldCostumeEffectId] [int] NOT NULL,
	[costumeEffectId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCostumeEffectApplicationLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCostumeEnchantLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCostumeEnchantLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[costumeId] [int] NOT NULL,
	[oldEnchantLevel] [int] NOT NULL,
	[oldLuckyValue] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[luckyValue] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCostumeEnchantLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureAdditionalAttrSwitchDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureAdditionalAttrSwitchDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[oldAttrId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureAdditionalAttrSwitchDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureAdditionalAttrSwitchLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureAdditionalAttrSwitchLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureAdditionalAttrSwitchLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardCollectionActivationDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardCollectionActivationDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[creatureCardId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardCollectionActivationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardCollectionActivationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[collectionId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardCompositionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardCompositionLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[creatureCardId] [int] NULL,
	[count] [int] NULL,
	[usedSoulPowder] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardDisassembleAllDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardDisassembleAllDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[creatureCardId] [int] NULL,
	[count] [int] NULL,
	[acquiredSoulPowder] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardDisassembleAllLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardDisassembleAllLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardDisassembleLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardDisassembleLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[creatureCardId] [int] NULL,
	[count] [int] NULL,
	[acquiredSoulPowder] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardLuckyShopPickDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardLuckyShopPickDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[creatureCardId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCardLuckyShopPickDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardLuckyShopPickLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardLuckyShopPickLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCardLuckyShopPickLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardShopFixedProductBuyLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardShopFixedProductBuyLog](
	[shopId] [uniqueidentifier] NULL,
	[productId] [int] NULL,
	[itemId] [int] NULL,
	[itemOwned] [bit] NULL,
	[usedSoulPowder] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardShopLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCardShopLog](
	[shopId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCardShopRandomProductLog]    Script Date: 2023/4/7 16:12:31 ******/
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
/****** Object:  Table [dbo].[t_HeroCreatureCompositionDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCompositionDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[retrievalItemId] [int] NOT NULL,
	[retrievalItemOwned] [bit] NOT NULL,
	[retrievalItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCompositionDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCompositionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCompositionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[materialHeroCreatureId] [uniqueidentifier] NOT NULL,
	[materialHeroCreatureLevel] [int] NOT NULL,
	[materialHeroCreatureExp] [int] NOT NULL,
	[materialHeroCreatureInjectionLevel] [int] NOT NULL,
	[materialHeroCreatureInjectionExp] [int] NOT NULL,
	[retrievalItemId] [int] NOT NULL,
	[retrievalItemOwned] [bit] NOT NULL,
	[retrievalItemCount] [int] NOT NULL,
	[skillProtectionItemId] [int] NOT NULL,
	[skillProtectionItemOwnCount] [int] NOT NULL,
	[skillProtectionItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCompositionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCompositionSkillLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCompositionSkillLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[oldSkillId] [int] NOT NULL,
	[oldSkillGrade] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[skillGrade] [int] NOT NULL,
	[protected] [bit] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCompositionSkillLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCreationAdditionalAttrLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCreationAdditionalAttrLog](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[attrId] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCreationAdditionalAttrLog] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCreationBaseAttrLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCreationBaseAttrLog](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCreationBaseAttrLog] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCreationLog](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[creatureId] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureCreationSkillLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureCreationSkillLog](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[skillGrade] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureCreationSkillLog] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureFarmQuestMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureFarmQuestMissionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[missionNo] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureFarmQuestMissionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureFarmQuestRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureFarmQuestRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureFarmQuestRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureFarmQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureFarmQuestRewardLog](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureFarmQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureInjectionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureInjectionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[oldInjectionLevel] [int] NOT NULL,
	[injectionLevel] [int] NOT NULL,
	[oldInjectionExp] [int] NOT NULL,
	[injectionExp] [int] NOT NULL,
	[acquisitionInjectionExp] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureInjectionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureInjectionRetrievalLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureInjectionRetrievalLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[injectionLevel] [int] NOT NULL,
	[injectionExp] [int] NOT NULL,
	[retrievalItemId] [int] NOT NULL,
	[retrievalItemOwned] [bit] NOT NULL,
	[retrievalItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureInjectionRetrievalLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureRearingLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureRearingLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[oldLevel] [int] NOT NULL,
	[level] [int] NOT NULL,
	[oldExp] [int] NOT NULL,
	[exp] [int] NOT NULL,
	[acquisitionExp] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureRearingLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureReleaseDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureReleaseDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[retrievalItemId] [int] NOT NULL,
	[retrievalItemOwned] [bit] NOT NULL,
	[retrievalItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureReleaseDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureReleaseLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureReleaseLog](
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
	[exp] [int] NOT NULL,
	[injectionLevel] [int] NOT NULL,
	[injectionExp] [int] NOT NULL,
	[retrievalItemId] [int] NOT NULL,
	[retrievalItemOwned] [bit] NOT NULL,
	[retrievalItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureReleaseLog] PRIMARY KEY NONCLUSTERED 
(
	[heroCreatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureSkillSlotOpenLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureSkillSlotOpenLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldSlotCount] [int] NOT NULL,
	[slotCount] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureSkillSlotOpenLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureStatusUpdateLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureStatusUpdateLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldParticipated] [bit] NOT NULL,
	[participated] [bit] NOT NULL,
	[oldCheered] [bit] NOT NULL,
	[cheered] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureStatusUpdateLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureVariationDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureVariationDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[attrId] [int] NOT NULL,
	[oldValue] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureVariationDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroCreatureVariationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroCreatureVariationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroCreatureId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldQuality] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroCreatureVariationLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyChargeEventMissionRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyChargeEventMissionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroDailyChargeEventMissionRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyChargeEventMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyChargeEventMissionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[missionNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroDailyChargeEventMissionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyConsumeEventMissionRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyConsumeEventMissionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroDailyConsumeEventMissionRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyConsumeEventMissionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyConsumeEventMissionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[date] [date] NOT NULL,
	[missionNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroDailyConsumeEventMissionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestAbandonLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestAbandonLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[newQuestInstanceId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestCreationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestCreationLog](
	[questInstanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[slotIndex] [int] NULL,
	[missionId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestImmediateCompletionLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestImmediateCompletionLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[usedGold] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestRefreshDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestRefreshDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestRefreshLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestRefreshLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedGold] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroDailyQuestRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDailyQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[questInstanceId] [uniqueidentifier] NULL,
	[level] [int] NULL,
	[rewardVipPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[rewardItemCount] [int] NULL,
	[newQuestInstanceId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroDiaShopProductBuyLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroDiaShopProductBuyLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[categoryId] [int] NULL,
	[productId] [int] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[buyItemId] [int] NULL,
	[buyItemOwned] [bit] NULL,
	[buyItemCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroFearAltarHalidomCollectionRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroFearAltarHalidomCollectionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[collectionCount] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroFearAltarHalidomCollectionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroFearAltarHalidomElementalRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroFearAltarHalidomElementalRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[halidomElementalId] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroFearAltarHalidomElementalRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroFirstChargeEventRewardDetailLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroFirstChargeEventRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroFirstChargeEventRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroFirstChargeEventRewardLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroFirstChargeEventRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroFirstChargeEventRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroGuildSkillLevelUpLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroGuildSkillLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[guildId] [uniqueidentifier] NULL,
	[guildSkillId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[usedGuildContributionPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroIllustratedBookActivationLog]    Script Date: 2023/4/7 16:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroIllustratedBookActivationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[illustratedBookId] [int] NULL,
	[explorationPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroIllustratedBookExplorationStepActivationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroIllustratedBookExplorationStepActivationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[stepNo] [int] NULL,
	[explorationPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroIllustratedBookExplorationStepRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroIllustratedBookExplorationStepRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroIllustratedBookExplorationStepRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroIllustratedBookExplorationStepRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[stepNo] [int] NULL,
	[rewardGold] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroItemLuckyShopPickDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroItemLuckyShopPickDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroItemLuckyShopPickDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroItemLuckyShopPickLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroItemLuckyShopPickLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroItemLuckyShopPickLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroJobChangeLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroJobChangeLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldJobId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroJobChangeLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroJobChangeQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroJobChangeQuestRewardLog](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroJobChangeQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroLimitationGiftRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroLimitationGiftRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroLimitationGiftRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroLimitationGiftRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroLimitationGiftRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroLimitationGiftRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMainGearDisassembleDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearDisassembleDetailLog](
	[logId] [uniqueidentifier] NOT NULL,
	[no] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearDisassembleLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearDisassembleLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearEnchantLevelSetActivationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearEnchantLevelSetActivationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NULL,
	[setNo] [int] NULL,
	[weaponHeroMainGearId] [uniqueidentifier] NULL,
	[weaponHeroMainGearEnchantLevel] [int] NULL,
	[armorHeroMainGearId] [uniqueidentifier] NULL,
	[armorHeroMainGearEnchantLevel] [int] NULL,
	[regTime] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearEnchantLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearEnchantLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[oldEnchantLevel] [int] NULL,
	[enchantLevel] [int] NULL,
	[oldOwned] [bit] NULL,
	[owned] [bit] NULL,
	[isSuccess] [bit] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[penaltyPreventItemId] [int] NULL,
	[penaltyPreventItemOwnCount] [int] NULL,
	[penaltyPreventItemUnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearRefinementApplicationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearRefinementApplicationLog](
	[logId] [uniqueidentifier] NOT NULL,
	[index] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[oldGrade] [int] NULL,
	[grade] [int] NULL,
	[oldAttrId] [int] NULL,
	[attrId] [int] NULL,
	[oldAttrValueId] [bigint] NULL,
	[attrValueId] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearRefinementDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearRefinementDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[turn] [int] NULL,
	[index] [int] NULL,
	[grade] [int] NULL,
	[attrId] [int] NULL,
	[attrValueId] [bigint] NULL,
	[protected] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMainGearRefinementLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMainGearRefinementLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[oldOwned] [bit] NULL,
	[owned] [bit] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[protectionItemId] [int] NULL,
	[protectionItemOwnCount] [int] NULL,
	[protectionItemUnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMoneyBuffUsedLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMoneyBuffUsedLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[buffId] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroMoneyBuffUsedLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMountAwakeningLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountAwakeningLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[mountId] [int] NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemOwnCount] [int] NOT NULL,
	[materialItemUnOwnCount] [int] NOT NULL,
	[oldAwakeningLevel] [int] NOT NULL,
	[oldAwakeningExp] [int] NOT NULL,
	[awakeningLevel] [int] NOT NULL,
	[awakeningExp] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroMountAwakeningLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroMountGearPickBoxMakingLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountGearPickBoxMakingLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[usedGold] [bigint] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[materialItem1Id] [int] NULL,
	[materialItem1OwnCount] [int] NULL,
	[materialItem1UnOwnCount] [int] NULL,
	[materialItem2Id] [int] NULL,
	[materialItem2OwnCount] [int] NULL,
	[materialItem2UnOwnCount] [int] NULL,
	[materialItem3Id] [int] NULL,
	[materialItem3OwnCount] [int] NULL,
	[materialItem3UnOwnCount] [int] NULL,
	[materialItem4Id] [int] NULL,
	[materialItem4OwnCount] [int] NULL,
	[materialItem4UnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMountGearRefinementLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountGearRefinementLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[heroMountGearId] [uniqueidentifier] NULL,
	[oldOwned] [bit] NULL,
	[owned] [bit] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[index] [int] NULL,
	[oldGrade] [int] NULL,
	[grade] [int] NULL,
	[oldAttrId] [int] NULL,
	[attrId] [int] NULL,
	[oldAttrValueId] [bigint] NULL,
	[attrValueId] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMountLevelUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[mountId] [int] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[oldSatiety] [int] NULL,
	[satiety] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroMountPotionAttrLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroMountPotionAttrLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[mountId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroMountPotionAttrLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroNpcShopProductBuyLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroNpcShopProductBuyLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[productId] [int] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[acquiredItemId] [int] NULL,
	[acquiredItemOwned] [bit] NULL,
	[acquiredItemCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventCostumeRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventCostumeRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventCostumeRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventProductBuyLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventProductBuyLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventProductBuyLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpen7DayEventRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpen7DayEventRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[missionId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroOpen7DayEventRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOpenGiftRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpenGiftRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[rewardItemCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroOpenGiftRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOpenGiftRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[day] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroOrdealQuestMissionRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOrdealQuestMissionRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[questNo] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroOrdealQuestMissionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOrdealQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOrdealQuestRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[questNo] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroOrdealQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroOsirisRoomRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroOsirisRoomRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[playTime] [int] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroOsirisRoomRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroPotionAttrLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroPotionAttrLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[potionAttrId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroPotionAttrLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroPresentLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroPresentLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[targetHeroId] [uniqueidentifier] NOT NULL,
	[presentId] [int] NOT NULL,
	[oldContributionPoint] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[oldTargetPopularityPoint] [int] NOT NULL,
	[targetPopularityPoint] [int] NOT NULL,
	[addedPresentContributionPoint] [int] NOT NULL,
	[addedPresentPopularityPoint] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroPresentLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroProofOfValorRefreshLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroProofOfValorRefreshLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroProofOfValorRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroProofOfValorRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[status] [int] NULL,
	[creatureCardId] [int] NULL,
	[rewardSoulPowder] [int] NULL,
	[rewardExp] [bigint] NULL,
	[specialRewardSoulPowder] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroProspectQuestRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroProspectQuestRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroProspectQuestRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroProspectQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroProspectQuestRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[isOwner] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroProspectQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRankActiveSkillLevelUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRankActiveSkillLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[skillId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[usedGold] [bigint] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRankPassiveSkillLevelUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRankPassiveSkillLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[skillId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[usedGold] [bigint] NULL,
	[usedSpritStone] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRechargeEventRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRechargeEventRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroRechargeEventRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRechargeEventRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRechargeEventRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroRechargeEventRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[level] [int] NULL,
	[restTime] [int] NULL,
	[rewardExp] [bigint] NULL,
	[type] [int] NULL,
	[usedGold] [bigint] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRetrievalDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRetrievalDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroRetrievalDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRetrievalLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRetrievalLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[retrievalId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[level] [int] NOT NULL,
	[vipLevel] [int] NOT NULL,
	[type] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroRetrievalLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroRevivalLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRevivalLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[ownDia] [int] NULL,
	[unOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRookieGiftRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRookieGiftRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[rewardItemCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroRookieGiftRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroRookieGiftRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[giftNo] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSkillLevelUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSkillLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[skillId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[usedGold] [bigint] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroStaminaRecoveryLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroStaminaRecoveryLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[recoveryStamina] [int] NULL,
	[oldStamina] [int] NULL,
	[stamina] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSubGearSoulstoneLevelSetActivationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubGearSoulstoneLevelSetActivationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[setNo] [int] NULL,
	[subGearSoulstoneTotalLevel] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroSubQuestAbandonmentLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubQuestAbandonmentLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[subQuestId] [int] NOT NULL,
	[progressCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroSubQuestAbandonmentLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSubQuestAcceptanceLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubQuestAcceptanceLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[subQuestId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroSubQuestAcceptanceLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSubQuestRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubQuestRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroSubQuestRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroSubQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroSubQuestRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[subQuestId] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroSubQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTaskConsignmentCompletionDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTaskConsignmentCompletionDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroTaskConsignmentCompletionDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTaskConsignmentCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTaskConsignmentCompletionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[consignmentInstanceId] [uniqueidentifier] NOT NULL,
	[remainTime] [int] NOT NULL,
	[usedGold] [bigint] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[rewardGuildContributionPoint] [int] NOT NULL,
	[rewardGuildBuildingPoint] [int] NOT NULL,
	[rewardGuildFund] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroTaskConsignmentCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTaskConsignmentLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTaskConsignmentLog](
	[consignmentInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[consignmentId] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[usedExpItemId] [int] NOT NULL,
	[usedExpItemOwnCount] [int] NOT NULL,
	[usedExpItemUnOwnCount] [int] NOT NULL,
	[achievementPoint] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroTaskConsignmentLog] PRIMARY KEY NONCLUSTERED 
(
	[consignmentInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTitleAcquiredLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTitleAcquiredLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[titleId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroTitleActivationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTitleActivationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[titleId] [int] NULL,
	[type] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroTrueHeroQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTrueHeroQuestRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[rewardExploitPoint] [int] NOT NULL,
	[acquiredExploitPoint] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroTrueHeroQuestRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTrueHeroQuestStartLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTrueHeroQuestStartLog](
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[vipLevel] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroTrueHeroQuestStartLog] PRIMARY KEY NONCLUSTERED 
(
	[questInstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroTrueHeroQuestStepRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroTrueHeroQuestStepRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[questInstanceId] [uniqueidentifier] NOT NULL,
	[step] [int] NOT NULL,
	[targetNationId] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroTrueHeroQuestStepRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeekendRewardItemRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeekendRewardItemRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeekendRewardItemRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeekendRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeekendRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[selection1] [int] NOT NULL,
	[selection2] [int] NOT NULL,
	[selection3] [int] NOT NULL,
	[rewardOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeekendRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyContributionPointRankingRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyContributionPointRankingRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyContributionPointRankingRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyContributionPointRankingRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyContributionPointRankingRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyContributionPointRankingRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPopularityPointRankingRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPopularityPointRankingRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPopularityPointRankingRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPopularityPointRankingRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPopularityPointRankingRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPopularityPointRankingRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPresentContributionPointRankingRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPresentContributionPointRankingRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPresentContributionPointRankingRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPresentContributionPointRankingRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPresentContributionPointRankingRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPresentContributionPointRankingRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPresentPopularityPointRankingRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPresentPopularityPointRankingRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPresentPopularityPointRankingRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyPresentPopularityPointRankingRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyPresentPopularityPointRankingRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rankingNo] [int] NOT NULL,
	[ranking] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyPresentPopularityPointRankingRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestImmediateCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestImmediateCompletionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[roundId] [uniqueidentifier] NOT NULL,
	[completionRoundCount] [int] NOT NULL,
	[usedItemId] [int] NOT NULL,
	[usedItemOwnCount] [int] NOT NULL,
	[usedItemUnOwnCount] [int] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestImmediateCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestRoundAcceptanceLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestRoundAcceptanceLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[roundId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestRoundAcceptanceLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestRoundCreationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestRoundCreationLog](
	[roundId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[roundNo] [int] NOT NULL,
	[missionId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestRoundCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[roundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestRoundRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestRoundRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[roundId] [uniqueidentifier] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestRoundRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestTenRoundRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestTenRoundRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestTenRoundRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWeeklyQuestTenRoundRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWeeklyQuestTenRoundRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[weekStartDate] [date] NOT NULL,
	[completionRoundCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_HeroWeeklyQuestTenRoundRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_HeroWingEnchantLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWingEnchantLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[partId] [int] NULL,
	[pickEnchantCount] [int] NULL,
	[enchantCount] [int] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[oldStep] [int] NULL,
	[oldLevel] [int] NULL,
	[oldExp] [int] NULL,
	[step] [int] NULL,
	[level] [int] NULL,
	[exp] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroWingMemoryPieceInstallationDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWingMemoryPieceInstallationDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[slotIndex] [int] NULL,
	[oldAttrValue] [int] NULL,
	[attrValue] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroWingMemoryPieceInstallationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWingMemoryPieceInstallationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[wingId] [int] NULL,
	[memoryPieceStep] [int] NULL,
	[type] [int] NULL,
	[succeeded] [bit] NULL,
	[criticalSucceeded] [bit] NULL,
	[usedItemId] [int] NULL,
	[usedItemOwnCount] [int] NULL,
	[usedItemUnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroWingOpenLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWingOpenLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rewardWingId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroWisdomTempleRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWisdomTempleRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[step] [int] NULL,
	[rewardExp] [bigint] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[rewardItemCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroWisdomTempleRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroWisdomTempleRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HolyWarQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HolyWarQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[killCount] [int] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HonorShopProductBuyLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HonorShopProductBuyLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[productId] [int] NULL,
	[buyCount] [int] NULL,
	[usedHonorPoint] [int] NULL,
	[itemId] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_InfiniteWarCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InfiniteWarCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_InfiniteWarCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InfiniteWarCompletionMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InfiniteWarCompletionMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[point] [int] NOT NULL,
	[lastKillTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_InfiniteWarCompletionMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InfiniteWarCompletionRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InfiniteWarCompletionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_InfiniteWarCompletionRewardDetailLog] PRIMARY KEY NONCLUSTERED 
(
	[detailLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InfiniteWarCreationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InfiniteWarCreationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_InfiniteWarCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InfiniteWarDisqualificationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InfiniteWarDisqualificationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_InfiniteWarDisqualificationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InfiniteWarMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InfiniteWarMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [pk_t_InfiniteWarMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_InventorySlotExtendLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_InventorySlotExtendLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[oldPaidInventorySlotCount] [int] NULL,
	[paidInventorySlotCount] [int] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ItemCompositionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ItemCompositionLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[materialItemId] [int] NULL,
	[materialItemOwnCount] [int] NULL,
	[materialItemUnOwnCount] [int] NULL,
	[usedGold] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_ItemUseLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ItemUseLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemOwnCount] [int] NULL,
	[itemUnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_LevelRankingRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_LevelRankingRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rankingNo] [int] NULL,
	[ranking] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_LevelUpRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_LevelUpRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_LevelUpRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_LevelUpRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[level] [int] NULL,
	[entryId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_MainGearBoxItemUseDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MainGearBoxItemUseDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_MysteryBoxQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_MysteryBoxQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationAllianceBrokenLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationAllianceBrokenLog](
	[allianceId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[targetNationId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationAllianceBrokenLog] PRIMARY KEY NONCLUSTERED 
(
	[allianceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationAllianceLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationAllianceLog](
	[applicationId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[usedFund] [bigint] NOT NULL,
	[targetNationId] [int] NOT NULL,
	[targetUsedFund] [bigint] NOT NULL,
	[allianceId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationAllianceLog] PRIMARY KEY NONCLUSTERED 
(
	[applicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationConnectionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationConnectionLog](
	[logId] [uniqueidentifier] NULL,
	[nationId] [int] NULL,
	[heroCount] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationDonationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationDonationLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[entryId] [int] NULL,
	[usedGold] [bigint] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[rewardNationFund] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationNoblesseAppointmentLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationNoblesseAppointmentLog](
	[logId] [uniqueidentifier] NULL,
	[nationId] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[noblesseId] [int] NULL,
	[targetHeroId] [uniqueidentifier] NULL,
	[targetNoblesseId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarAllianceRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarAllianceRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[declarationId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[isWin] [bit] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWarAllianceRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWarCallLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarCallLog](
	[logId] [uniqueidentifier] NULL,
	[declarationId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[continentId] [int] NULL,
	[xPosition] [float] NULL,
	[yPosition] [float] NULL,
	[zPosition] [float] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarConvergingAttackLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarConvergingAttackLog](
	[logId] [uniqueidentifier] NULL,
	[declarationId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[targetArrangeId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarDeclarationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarDeclarationLog](
	[logId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[declarationId] [uniqueidentifier] NULL,
	[nationId] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[targetNationId] [int] NULL,
	[usedNationFund] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarHeroObjectiveRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarHeroObjectiveRewardLog](
	[logId] [uniqueidentifier] NULL,
	[declarationId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[isWin] [bit] NULL,
	[killCount] [int] NULL,
	[immediateRevivalCount] [int] NULL,
	[rewardOwnDia] [int] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarHeroTransmissionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarHeroTransmissionLog](
	[logId] [uniqueidentifier] NULL,
	[declarationId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[count] [int] NULL,
	[targetArrangeId] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[usedOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarNationPowerReward]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarNationPowerReward](
	[logId] [uniqueidentifier] NOT NULL,
	[declarationId] [uniqueidentifier] NOT NULL,
	[nationId] [int] NOT NULL,
	[isWin] [bit] NOT NULL,
	[acquiredNationPower] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_NationWarNationPowerReward] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_NationWarRankingRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarRankingRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[ranking] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_NationWarrewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_NationWarrewardLog](
	[logId] [uniqueidentifier] NULL,
	[declarationId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[isWin] [bit] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PickBoxItemUseDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PickBoxItemUseDetailLog](
	[detailLogId] [uniqueidentifier] NOT NULL,
	[logId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[heroMainGearId] [uniqueidentifier] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[heroMountGearId] [uniqueidentifier] NOT NULL,
	[creatureCardId] [int] NOT NULL,
	[creatureId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_PurchaseProvideCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PurchaseProvideCompletionLog](
	[logId] [uniqueidentifier] NOT NULL,
	[purchaseId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
	[firstPurchaseBonusUnOwnDia] [int] NOT NULL,
	[vipPoint] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_PurchaseProvideCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RankRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RankRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_RankRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RankRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rankNo] [int] NULL,
	[rewardGold] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[playTime] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimCompletionMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimCompletionMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[bossMonsterDamage] [int] NOT NULL,
	[summonMonsterDamage] [int] NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimCompletionMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimCompletionMemberRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimCompletionMemberRewardLog](
	[rewardLogId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimCompletionMemberRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[rewardLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimCreationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimCreationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[scheduleId] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimDisqualificationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimDisqualificationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimDisqualificationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimObjectRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimObjectRewardLog](
	[logId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[step] [int] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimObjectRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimStepCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimStepCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[step] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimStepCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[step] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_RuinsReclaimStepCompletionRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_RuinsReclaimStepCompletionRewardLog](
	[rewardLogId] [uniqueidentifier] NOT NULL,
	[instanceId] [uniqueidentifier] NOT NULL,
	[step] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_RuinsReclaimStepCompletionRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[rewardLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_SecretLetterQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SecretLetterQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[rewardExp] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SeriesMissionRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SeriesMissionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SeriesMissionRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SeriesMissionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[missionId] [int] NULL,
	[step] [int] NULL,
	[progressCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SimpleShopProductBuyLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SimpleShopProductBuyLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[productId] [int] NULL,
	[buyCount] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[usedGold] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SimpleShopSellDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SimpleShopSellDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[sellSlotIndex] [int] NULL,
	[inventorySlotIndex] [int] NULL,
	[type] [int] NULL,
	[heroMainGearId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[heroMountGearId] [uniqueidentifier] NULL,
	[gainedGold] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SimpleShopSellLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SimpleShopSellLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SoulCoveterRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SoulCoveterRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SoulCoveterRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SoulCoveterRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[difficulty] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_StaminaBuyLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_StaminaBuyLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[oldStamina] [int] NULL,
	[stamina] [int] NULL,
	[buyCount] [int] NULL,
	[usedOwnDia] [int] NULL,
	[usedUnOwnDia] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_StoryDungeonPlayLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_StoryDungeonPlayLog](
	[logId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[dungeonNo] [int] NULL,
	[difficulty] [int] NULL,
	[status] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_StoryDungeonPlayRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_StoryDungeonPlayRewardLog](
	[logId] [uniqueidentifier] NULL,
	[no] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SubGearGradeUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SubGearGradeUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[subGearId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[oldGrade] [int] NULL,
	[grade] [int] NULL,
	[materialItem1Id] [int] NULL,
	[materialItem1OwnCount] [int] NULL,
	[materialItem1UnOwnCount] [int] NULL,
	[materialItem2Id] [int] NULL,
	[materialItem2OwnCount] [int] NULL,
	[materialItem2UnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SubGearLevelUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SubGearLevelUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[subGearId] [int] NULL,
	[oldLevel] [int] NULL,
	[level] [int] NULL,
	[usedGold] [bigint] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SubGearQualityUpLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SubGearQualityUpLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[subGearId] [int] NULL,
	[level] [int] NULL,
	[oldQuality] [int] NULL,
	[quality] [int] NULL,
	[materialItem1Id] [int] NULL,
	[materialItem1OwnCount] [int] NULL,
	[materialItem1UnOwnCount] [int] NULL,
	[materialItem2Id] [int] NULL,
	[materialItem2OwnCount] [int] NULL,
	[materialItem2UnOwnCount] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SupplySupportQuestCartDestructionRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SupplySupportQuestCartDestructionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[cartId] [int] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SupplySupportQuestRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SupplySupportQuestRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[status] [int] NULL,
	[cartId] [int] NULL,
	[rewardExp] [bigint] NULL,
	[rewardGold] [bigint] NULL,
	[rewardExploitPoint] [int] NULL,
	[acquiredExploitPoint] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SupplySupportQuestStartLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SupplySupportQuestStartLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[orderItemId] [int] NULL,
	[orderItemCount] [int] NULL,
	[orderItemOwned] [bit] NULL,
	[usedGuaranteeGold] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_TodayMissionRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TodayMissionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[ItemId] [int] NULL,
	[ItemCount] [int] NULL,
	[ItemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_TodayMissionRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TodayMissionRewardLog](
	[logId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[missionId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_TradeShipCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TradeShipCompletionLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_TradeShipCompletionLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TradeShipCompletionMemberAdditionalRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TradeShipCompletionMemberAdditionalRewardLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardExpType] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_t_TradeShipCompletionMemberAdditionalRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TradeShipCompletionMemberRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TradeShipCompletionMemberRewardLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewardGold] [bigint] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
	[rewardItemId] [int] NOT NULL,
	[rewardItemOwned] [bit] NOT NULL,
	[rewardItemCount] [int] NOT NULL,
 CONSTRAINT [pk_t_TradeShipCompletionMemberRewardLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TradeShipCreationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TradeShipCreationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[difficulty] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_TradeShipCreationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TradeShipMemberDisqualificationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TradeShipMemberDisqualificationLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_TradeShipMemberDisqualificationLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_TradeShipMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_TradeShipMemberLog](
	[instanceId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [pk_t_TradeShipMemberLog] PRIMARY KEY NONCLUSTERED 
(
	[instanceId] ASC,
	[heroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_UndergroundMazePlayLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_UndergroundMazePlayLog](
	[logId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[playTime] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_VipLevelRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_VipLevelRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[itemId] [int] NULL,
	[itemCount] [int] NULL,
	[itemOwned] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_VipLevelRewardLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_VipLevelRewardLog](
	[logId] [uniqueidentifier] NULL,
	[accountId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[vipLevel] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WarehouseSlotExtendLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarehouseSlotExtendLog](
	[logId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[oldPaidWarehouseSlotCount] [int] NOT NULL,
	[paidWarehouseSlotCount] [int] NOT NULL,
	[usedOwnDia] [int] NOT NULL,
	[usedUnOwnDia] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_WarehouseSlotExtendLog] PRIMARY KEY NONCLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_WarMemoryCompletionLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarMemoryCompletionLog](
	[instanceId] [uniqueidentifier] NULL,
	[status] [int] NULL,
	[playTime] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WarMemoryCompletionMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarMemoryCompletionMemberLog](
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rewardExp] [bigint] NULL,
	[point] [int] NULL,
	[pointUpdateTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WarMemoryCompletionRewardDetailLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarMemoryCompletionRewardDetailLog](
	[detailLogId] [uniqueidentifier] NULL,
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[rewardItemId] [int] NULL,
	[rewardItemOwned] [bit] NULL,
	[rewardItemCount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WarMemoryCreationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarMemoryCreationLog](
	[instanceId] [uniqueidentifier] NULL,
	[scheduleId] [int] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WarMemoryDisqualificationLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarMemoryDisqualificationLog](
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[regTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WarMemoryMemberLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WarMemoryMemberLog](
	[instanceId] [uniqueidentifier] NULL,
	[heroId] [uniqueidentifier] NULL,
	[type] [int] NULL,
	[level] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_WorkLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WorkLog](
	[logId] [uniqueidentifier] NULL,
	[logTime] [datetimeoffset](7) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_WorkLogEntry]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WorkLogEntry](
	[entryId] [uniqueidentifier] NULL,
	[logId] [uniqueidentifier] NULL,
	[requestCount] [bigint] NULL,
	[typeName] [varchar](200) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_WorkQueueLog]    Script Date: 2023/4/7 16:12:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_WorkQueueLog](
	[logId] [uniqueidentifier] NOT NULL,
	[workCount] [int] NOT NULL,
	[logTime] [datetimeoffset](7) NOT NULL
) ON [RZ_DATA]
GO
ALTER TABLE [dbo].[l_ClientLog] ADD  CONSTRAINT [df_l_ClientLog__logTime]  DEFAULT (sysdatetimeoffset()) FOR [logTime]
GO
ALTER TABLE [dbo].[t_AnkouTombCompletionLog] ADD  CONSTRAINT [df_t_AnkouTombCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_AnkouTombCreationLog] ADD  CONSTRAINT [df_t_AnkouTombCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_AnkouTombMemberDisqualificationLog] ADD  CONSTRAINT [df_t_AnkouTombMemberDisqualificationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_DragonNestCompletionLog] ADD  CONSTRAINT [df_t_DragonNestCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_DragonNestCreationLog] ADD  CONSTRAINT [df_t_DragonNestCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_DragonNestMemberDisqualificationLog] ADD  CONSTRAINT [df_t_DragonNestMemberDisqualificationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_FearAltarCompletionLog] ADD  CONSTRAINT [df_t_FearAltarCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_FearAltarCreationLog] ADD  CONSTRAINT [df_t_FearAltarCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_FearAltarDisqualificationLog] ADD  CONSTRAINT [df_t_FearAltarDisqualificationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_FearAltarHalidomAcquisitionLog] ADD  CONSTRAINT [df_t_FearAltarHalidomAcquisitionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_FieldBossCreationLog] ADD  CONSTRAINT [df_t_FieldBossCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_FieldBossKillLog] ADD  CONSTRAINT [df_t_FieldBossKillLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_GuildBlessingBuffBuyLog] ADD  CONSTRAINT [df_t_GuildBlessingBuffBuyLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroArtifactLevelUpLog] ADD  CONSTRAINT [df_t_HeroArtifactLevelUpLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBiographyQuestRewardLog] ADD  CONSTRAINT [df_t_HeroBiographyQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBiographyRewardLog] ADD  CONSTRAINT [df_t_HeroBiographyRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBiographyStartLog] ADD  CONSTRAINT [df_t_HeroBiographyStartLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBlessingReceivingLog] ADD  CONSTRAINT [df_t_HeroBlessingReceivingLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroBlessingSendingLog] ADD  CONSTRAINT [df_t_HeroBlessingSendingLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroChargeEventMissionRewardLog] ADD  CONSTRAINT [df_t_HeroChargeEventMissionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroConstellationActivationLog] ADD  CONSTRAINT [df_t_HeroConstellationActivationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroConstellationStepOpenLog] ADD  CONSTRAINT [df_t_HeroConstellationStepOpenLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroConsumeEventMissionRewardLog] ADD  CONSTRAINT [df_t_HeroConsumeEventMissionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCostumeAcquisitionLog] ADD  CONSTRAINT [df_t_HeroCostumeAcquisitionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCostumeCollectionActivationLog] ADD  CONSTRAINT [df_t_HeroCostumeCollectionActivationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCostumeCollectionShuffleLog] ADD  CONSTRAINT [df_t_HeroCostumeCollectionShuffleLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCostumeEffectApplicationLog] ADD  CONSTRAINT [df_t_HeroCostumeEffectApplicationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCostumeEnchantLog] ADD  CONSTRAINT [df_t_HeroCostumeEnchantLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureAdditionalAttrSwitchLog] ADD  CONSTRAINT [df_t_HeroCreatureAdditionalAttrSwitchLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureCardLuckyShopPickLog] ADD  CONSTRAINT [df_t_HeroCreatureCardLuckyShopPickLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureCompositionLog] ADD  CONSTRAINT [df_t_HeroCreatureCompositionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureCreationLog] ADD  CONSTRAINT [df_t_HeroCreatureCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureFarmQuestMissionRewardLog] ADD  CONSTRAINT [df_t_HeroCreatureFarmQuestMissionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureFarmQuestRewardLog] ADD  CONSTRAINT [df_t_HeroCreatureFarmQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureInjectionLog] ADD  CONSTRAINT [df_t_HeroCreatureInjectionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureInjectionRetrievalLog] ADD  CONSTRAINT [df_t_HeroCreatureInjectionRetrievalLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureRearingLog] ADD  CONSTRAINT [df_t_HeroCreatureRearingLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureReleaseLog] ADD  CONSTRAINT [df_t_HeroCreatureReleaseLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureSkillSlotOpenLog] ADD  CONSTRAINT [df_t_HeroCreatureSkillSlotOpenLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureStatusUpdateLog] ADD  CONSTRAINT [df_t_HeroCreatureStatusUpdateLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroCreatureVariationLog] ADD  CONSTRAINT [df_t_HeroCreatureVariationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroDailyChargeEventMissionRewardLog] ADD  CONSTRAINT [df_t_HeroDailyChargeEventMissionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroDailyConsumeEventMissionRewardLog] ADD  CONSTRAINT [df_t_HeroDailyConsumeEventMissionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroFearAltarHalidomCollectionRewardLog] ADD  CONSTRAINT [df_t_HeroFearAltarHalidomCollectionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroFearAltarHalidomElementalRewardLog] ADD  CONSTRAINT [df_t_HeroFearAltarHalidomElementalRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroItemLuckyShopPickLog] ADD  CONSTRAINT [df_t_HeroItemLuckyShopPickLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroJobChangeLog] ADD  CONSTRAINT [df_t_HeroJobChangeLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroJobChangeQuestRewardLog] ADD  CONSTRAINT [df_t_HeroJobChangeQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroLimitationGiftRewardLog] ADD  CONSTRAINT [df_t_HeroLimitationGiftRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroMoneyBuffUsedLog] ADD  CONSTRAINT [df_t_HeroMoneyBuffUsedLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroMountAwakeningLog] ADD  CONSTRAINT [df_t_HeroMountAwakeningLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroMountPotionAttrLog] ADD  CONSTRAINT [df_t_HeroMountPotionAttrLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOpen7DayEventCostumeRewardLog] ADD  CONSTRAINT [df_t_HeroOpen7DayEventCostumeRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOpen7DayEventProductBuyLog] ADD  CONSTRAINT [df_t_HeroOpen7DayEventProductBuyLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOpen7DayEventRewardLog] ADD  CONSTRAINT [df_t_HeroOpen7DayEventRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuestMissionRewardLog] ADD  CONSTRAINT [df_t_HeroOrdealQuestMissionRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOrdealQuestRewardLog] ADD  CONSTRAINT [df_t_HeroOrdealQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroOsirisRoomRewardLog] ADD  CONSTRAINT [df_t_HeroOsirisRoomRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroPotionAttrLog] ADD  CONSTRAINT [df_t_HeroPotionAttrLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroPresentLog] ADD  CONSTRAINT [df_t_HeroPresentLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroProspectQuestRewardLog] ADD  CONSTRAINT [df_t_HeroProspectQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroRechargeEventRewardLog] ADD  CONSTRAINT [df_t_HeroRechargeEventRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroRetrievalLog] ADD  CONSTRAINT [df_t_HeroRetrievalLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroSubQuestAbandonmentLog] ADD  CONSTRAINT [df_t_HeroSubQuestAbandonmentLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroSubQuestAcceptanceLog] ADD  CONSTRAINT [df_t_HeroSubQuestAcceptanceLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroSubQuestRewardLog] ADD  CONSTRAINT [df_t_HeroSubQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroTaskConsignmentCompletionLog] ADD  CONSTRAINT [df_t_HeroTaskConsignmentCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroTaskConsignmentLog] ADD  CONSTRAINT [df_t_HeroTaskConsignmentLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroTrueHeroQuestRewardLog] ADD  CONSTRAINT [df_t_HeroTrueHeroQuestRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroTrueHeroQuestStartLog] ADD  CONSTRAINT [df_t_HeroTrueHeroQuestStartLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroTrueHeroQuestStepRewardLog] ADD  CONSTRAINT [df_t_HeroTrueHeroQuestStepRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeekendRewardItemRewardLog] ADD  CONSTRAINT [df_t_HeroWeekendRewardItemRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeekendRewardLog] ADD  CONSTRAINT [df_t_HeroWeekendRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyContributionPointRankingRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyContributionPointRankingRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyPopularityPointRankingRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyPopularityPointRankingRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyPresentContributionPointRankingRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyPresentContributionPointRankingRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyPresentPopularityPointRankingRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyPresentPopularityPointRankingRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestImmediateCompletionLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestImmediateCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestRoundAcceptanceLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestRoundAcceptanceLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestRoundCreationLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestRoundCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestRoundRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestRoundRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_HeroWeeklyQuestTenRoundRewardLog] ADD  CONSTRAINT [df_t_HeroWeeklyQuestTenRoundRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_InfiniteWarCompletionLog] ADD  CONSTRAINT [df_t_InfiniteWarCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_InfiniteWarCreationLog] ADD  CONSTRAINT [df_t_InfiniteWarCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_InfiniteWarDisqualificationLog] ADD  CONSTRAINT [df_t_InfiniteWarDisqualificationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationAllianceBrokenLog] ADD  CONSTRAINT [df_t_NationAllianceBrokenLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationAllianceLog] ADD  CONSTRAINT [df_t_NationAllianceLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationWarAllianceRewardLog] ADD  CONSTRAINT [df_t_NationWarAllianceRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_NationWarNationPowerReward] ADD  CONSTRAINT [df_t_NationWarNationPowerReward__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_PurchaseProvideCompletionLog] ADD  CONSTRAINT [df_t_PurchaseProvideCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_RuinsReclaimCompletionLog] ADD  CONSTRAINT [df_t_RuinsReclaimCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_RuinsReclaimCreationLog] ADD  CONSTRAINT [df_t_RuinsReclaimCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_RuinsReclaimDisqualificationLog] ADD  CONSTRAINT [df_t_RuinsReclaimDisqualificationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_RuinsReclaimObjectRewardLog] ADD  CONSTRAINT [df_t_RuinsReclaimObjectRewardLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_RuinsReclaimStepCompletionLog] ADD  CONSTRAINT [df_t_RuinsReclaimStepCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_TradeShipCompletionLog] ADD  CONSTRAINT [df_t_TradeShipCompletionLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_TradeShipCreationLog] ADD  CONSTRAINT [df_t_TradeShipCreationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_TradeShipMemberDisqualificationLog] ADD  CONSTRAINT [df_t_TradeShipMemberDisqualificationLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_WarehouseSlotExtendLog] ADD  CONSTRAINT [df_t_WarehouseSlotExtendLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
