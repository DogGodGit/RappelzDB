USE [Rappelz_User]
GO
/****** Object:  Table [dbo].[ExpDungeonDifficulty]    Script Date: 2023/4/7 16:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpDungeonDifficulty](
	[difficulty] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[MainGearTier]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainGearTier](
	[tier] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[weaponBoxItemId] [int] NOT NULL,
	[armorBoxItemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AbnormalState]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AbnormalState](
	[abnormalStateId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[isOverlap] [int] NOT NULL,
	[sourceType] [int] NOT NULL,
 CONSTRAINT [pk_r_AbnormalState] PRIMARY KEY NONCLUSTERED 
(
	[abnormalStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AbnormalStateDetail]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AbnormalStateDetail](
	[abnormalStateId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[skillLevel] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
 CONSTRAINT [pk_r_AbnormalStateDetail] PRIMARY KEY NONCLUSTERED 
(
	[abnormalStateId] ASC,
	[jobId] ASC,
	[skillLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AbnormalStateLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AbnormalStateLevel](
	[abnormalStateId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[value4] [int] NOT NULL,
	[value5] [int] NOT NULL,
	[value6] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AbnormalStateRankSkillLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AbnormalStateRankSkillLevel](
	[abnormalStateId] [int] NOT NULL,
	[skillLevel] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[value4] [int] NOT NULL,
	[value5] [int] NOT NULL,
	[value6] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AccessRewardEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AccessRewardEntry](
	[entryId] [int] NOT NULL,
	[accessTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AccessRewardItem]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AccessRewardItem](
	[entryId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Accomplishment]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Accomplishment](
	[accomplishmentId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_objectiveText] [nvarchar](40) NOT NULL,
	[objectiveTextKey] [varchar](40) NOT NULL,
	[objectiveValue] [bigint] NOT NULL,
	[point] [int] NOT NULL,
	[rewardType] [int] NOT NULL,
	[rewardTitleId] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AccomplishmentCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AccomplishmentCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AchievementReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AchievementReward](
	[rewardNo] [int] NOT NULL,
	[requiredAchievementPoint] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AchievementRewardEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AchievementRewardEntry](
	[rewardNo] [int] NOT NULL,
	[rewardEntryNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelic]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelic](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [float] NOT NULL,
	[waveIntervalTime] [float] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[trapActivateStartStep] [int] NOT NULL,
	[trapPenaltyMoveSpeed] [int] NOT NULL,
	[trapPenaltyDuration] [int] NOT NULL,
	[trapDamage] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicAvailableReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicMonsterArrange](
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[routeId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[point] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicMonsterAttrFactor]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicMonsterAttrFactor](
	[averageHeroLevel] [int] NOT NULL,
	[trapDamageFactor] [float] NOT NULL,
	[normalMonsterMaxHpFactor] [float] NOT NULL,
	[normalMonsterOffenseFactor] [float] NOT NULL,
	[bossMonsterMaxHpFactor] [float] NOT NULL,
	[bossMonsterOffenseFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicMonsterSkillCastingGuide]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicMonsterSkillCastingGuide](
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterSkillId] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicObstacle]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicRoute]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicRoute](
	[routeId] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicStep]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicStep](
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](30) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](30) NOT NULL,
	[targetPoint] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](30) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](30) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicStepRewardPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicStepRewardPoolEntry](
	[step] [int] NOT NULL,
	[level] [int] NOT NULL,
	[poolId] [int] NOT NULL,
	[entryId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicStepRoute]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicStepRoute](
	[step] [int] NOT NULL,
	[routeId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[targetRadius] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicStepWave]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicStepWave](
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[isGuideDisplay] [tinyint] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AncientRelicTrap]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AncientRelicTrap](
	[trapId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[regenInterval] [int] NOT NULL,
	[duration] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AnkouTomb]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AnkouTomb](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[enterCount] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[waveCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[monsterSpawnXPosition] [float] NOT NULL,
	[monsterSpawnYPosition] [float] NOT NULL,
	[monsterSpawnZPosition] [float] NOT NULL,
	[monsterSpawnRadius] [float] NOT NULL,
	[bossMonsterSpawnRate] [int] NOT NULL,
	[monsterPoint] [int] NOT NULL,
	[bossMonsterPoint] [int] NOT NULL,
	[clearPoint] [int] NOT NULL,
	[exp2xRewardRequiredUnOwnDia] [int] NOT NULL,
	[exp3xRewardRequiredUnOwnDia] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AnkouTombAvailableReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AnkouTombAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_AnkouTombAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AnkouTombDifficulty]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AnkouTombDifficulty](
	[difficulty] [int] NOT NULL,
	[recommendBattlePower] [bigint] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[pointGoldRewardId] [bigint] NOT NULL,
	[pointExpRewardId] [bigint] NOT NULL,
	[maxAdditionalExp] [bigint] NOT NULL,
 CONSTRAINT [pk_r_AnkouTombDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AnkouTombMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AnkouTombMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterType] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
 CONSTRAINT [pk_r_AnkouTombMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[waveNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AnkouTombRewardPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AnkouTombRewardPoolEntry](
	[difficulty] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_AnkouTombRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AnkouTombSchedule]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AnkouTombSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_AnkouTombSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Artifact]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Artifact](
	[artifactNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_Artifact] PRIMARY KEY NONCLUSTERED 
(
	[artifactNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactAttr](
	[artifactNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
 CONSTRAINT [pk_r_ArtifactAttr] PRIMARY KEY NONCLUSTERED 
(
	[artifactNo] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactLevel](
	[artifactNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
 CONSTRAINT [pk_r_ArtifactLevel] PRIMARY KEY NONCLUSTERED 
(
	[artifactNo] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactLevelAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactLevelAttr](
	[artifactNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ArtifactLevelAttr] PRIMARY KEY NONCLUSTERED 
(
	[artifactNo] ASC,
	[level] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactLevelUpMaterial]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactLevelUpMaterial](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[exp] [int] NOT NULL,
 CONSTRAINT [pk_r_ArtifactLevelUpMaterial] PRIMARY KEY NONCLUSTERED 
(
	[tier] ASC,
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactRoom]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactRoom](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[continuationChallengeWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactRoomFloor]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactRoomFloor](
	[floor] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[recommendBattlePower] [bigint] NOT NULL,
	[sweepDuration] [int] NOT NULL,
	[sweepDia] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ArtifactRoomMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ArtifactRoomMonsterArrange](
	[floor] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AttainmentEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AttainmentEntry](
	[entryNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AttainmentEntryReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AttainmentEntryReward](
	[entryNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Attr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Attr](
	[attrId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[battlePowerFactor] [int] NOT NULL,
	[attrCategoryId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AttrCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AttrCategory](
	[attrCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_AttrValue]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_AttrValue](
	[attrValueId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](200) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BanWord]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BanWord](
	[type] [int] NOT NULL,
	[word] [nvarchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BattlefieldSupportEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BattlefieldSupportEvent](
	[supplySupportQuestExploitPointFactor] [float] NOT NULL,
	[killExploitPointFactor] [float] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Biography]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Biography](
	[biographyId] [int] NOT NULL,
	[_title] [nvarchar](20) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[openConditionTextKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_Biography] PRIMARY KEY NONCLUSTERED 
(
	[biographyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BiographyQuest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BiographyQuest](
	[biographyId] [int] NOT NULL,
	[questNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetDungeonId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_BiographyQuest] PRIMARY KEY NONCLUSTERED 
(
	[biographyId] ASC,
	[questNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BiographyQuestDungeon]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BiographyQuestDungeon](
	[dungeonId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
 CONSTRAINT [pk_r_BiographyQuestDungeon] PRIMARY KEY NONCLUSTERED 
(
	[dungeonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BiographyQuestDungeonWave]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BiographyQuestDungeonWave](
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetType] [int] NOT NULL,
	[targetArrangeKey] [int] NOT NULL,
 CONSTRAINT [pk_r_BiographyQuestDungeonWave] PRIMARY KEY NONCLUSTERED 
(
	[dungeonId] ASC,
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BiographyQuestMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BiographyQuestMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
 CONSTRAINT [pk_r_BiographyQuestMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BiographyQuestStartDialogue]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BiographyQuestStartDialogue](
	[biographyId] [int] NOT NULL,
	[questNo] [int] NOT NULL,
	[dialogueNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_BiographyQuestStartDialogue] PRIMARY KEY NONCLUSTERED 
(
	[biographyId] ASC,
	[questNo] ASC,
	[dialogueNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BiographyReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BiographyReward](
	[biographyId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_BiographyReward] PRIMARY KEY NONCLUSTERED 
(
	[biographyId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Blessing]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Blessing](
	[blessingId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [int] NOT NULL,
	[senderItemRewardId] [bigint] NOT NULL,
	[receiverGoldRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_Blessing] PRIMARY KEY NONCLUSTERED 
(
	[blessingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BlessingTargetLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BlessingTargetLevel](
	[targetLevelId] [int] NOT NULL,
	[targetHeroLevel] [int] NOT NULL,
	[prospectQuestObjectiveLevel] [int] NOT NULL,
	[prospectQuestObjectiveLimitTime] [int] NOT NULL,
 CONSTRAINT [pk_r_BlessingTargetLevel] PRIMARY KEY NONCLUSTERED 
(
	[targetLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BountyHunterQuest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BountyHunterQuest](
	[questId] [int] NOT NULL,
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_content] [nvarchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetMonsterMinLevel] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[completionGuideContentKey] [varchar](40) NOT NULL,
	[startGuideContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_BountyHunterQuestReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_BountyHunterQuestReward](
	[questItemGrade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Cart]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Cart](
	[cartId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[prefabName] [varchar](40) NOT NULL,
	[grade] [int] NOT NULL,
	[ridableRange] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CartGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CartGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CashProduct]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CashProduct](
	[productId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[inAppProductKey] [varchar](100) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[type] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
	[vipPoint] [int] NOT NULL,
	[firstPurchaseBonusUnOwnDia] [int] NOT NULL,
	[saleable] [bit] NOT NULL,
	[sortNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_r_CashProduct] PRIMARY KEY NONCLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Chapter]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Chapter](
	[chapterNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[contentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_Chapter] PRIMARY KEY NONCLUSTERED 
(
	[chapterNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ChargeEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ChargeEvent](
	[eventId] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
 CONSTRAINT [pk_r_ChargeEvent] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ChargeEventMission]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ChargeEventMission](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[requiredUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_r_ChargeEventMission] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ChargeEventMissionReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ChargeEventMissionReward](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ChargeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[missionNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ChattingType]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ChattingType](
	[chattingType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ClientTutorialStep]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ClientTutorialStep](
	[tutorialId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[textKey] [varchar](40) NOT NULL,
	[textxPosition] [float] NOT NULL,
	[textyPosition] [float] NOT NULL,
	[arrowxPosition] [float] NOT NULL,
	[arrowyPosition] [float] NOT NULL,
	[arrowyRotation] [float] NOT NULL,
	[clickxPosition] [float] NOT NULL,
	[clickyPosition] [float] NOT NULL,
	[clickWidth] [int] NOT NULL,
	[clickHeight] [int] NOT NULL,
	[effectName] [varchar](100) NOT NULL,
	[effectxPosition] [float] NOT NULL,
	[effectyPosition] [float] NOT NULL,
	[effectWidth] [int] NOT NULL,
	[effectHeight] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Constellation]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Constellation](
	[constellationId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredConditionValue] [int] NOT NULL,
 CONSTRAINT [pk_r_Constellation] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConstellationCycle]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConstellationCycle](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
 CONSTRAINT [pk_r_ConstellationCycle] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC,
	[step] ASC,
	[cycle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConstellationCycleBuff]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConstellationCycleBuff](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ConstellationCycleBuff] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC,
	[step] ASC,
	[cycle] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConstellationEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConstellationEntry](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[requiredStarEssense] [int] NOT NULL,
	[requiredGold] [bigint] NOT NULL,
	[successRate] [int] NOT NULL,
	[failPoint] [int] NOT NULL,
 CONSTRAINT [pk_r_ConstellationEntry] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC,
	[step] ASC,
	[cycle] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConstellationEntryBuff]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConstellationEntryBuff](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ConstellationEntryBuff] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC,
	[step] ASC,
	[cycle] ASC,
	[entryNo] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConstellationStep]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConstellationStep](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
 CONSTRAINT [pk_r_ConstellationStep] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC,
	[step] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConstellationStepCycle]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConstellationStepCycle](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
 CONSTRAINT [pk_r_ConstellationStepCycle] PRIMARY KEY NONCLUSTERED 
(
	[constellationId] ASC,
	[step] ASC,
	[cycle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConsumeEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConsumeEvent](
	[eventId] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
 CONSTRAINT [pk_r_ConsumeEvent] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConsumeEventMission]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConsumeEventMission](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
 CONSTRAINT [pk_r_ConsumeEventMission] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ConsumeEventMissionReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ConsumeEventMissionReward](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ConsumeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[missionNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Content]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Content](
	[contentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[iconId] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_Content] PRIMARY KEY NONCLUSTERED 
(
	[contentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContentOpenEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContentOpenEntry](
	[entryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[isDisplay] [int] NOT NULL,
 CONSTRAINT [pk_r_ContentOpenEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[r_Continent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Continent](
	[continentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[isNationTerritory] [tinyint] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[isNationWarTarget] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentMapMonster]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentMapMonster](
	[continentId] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentMonsterArrange](
	[continentId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[regenTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentMonsterArrangePoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentMonsterArrangePoolEntry](
	[continentId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
 CONSTRAINT [pk_r_ContinentMonsterArrangePoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[continentId] ASC,
	[arrangeNo] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentObject]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentObject](
	[objectId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[interactionDuration] [float] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[regenTime] [int] NOT NULL,
	[isPublic] [tinyint] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[interactionTextKey] [varchar](40) NOT NULL,
	[interactionCompletionAnimationEnabled] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentObjectArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentObjectArrange](
	[continentId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[objectId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentPaidRevival]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentPaidRevival](
	[revivalCount] [int] NOT NULL,
	[dia] [int] NOT NULL,
 CONSTRAINT [pk_r_ContinentPaidRevival] PRIMARY KEY NONCLUSTERED 
(
	[revivalCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentRevivalPoint]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentRevivalPoint](
	[continentId] [int] NOT NULL,
	[pointNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_ContinentRevivalPoint] PRIMARY KEY NONCLUSTERED 
(
	[continentId] ASC,
	[pointNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ContinentTransmissionExit]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ContinentTransmissionExit](
	[npcId] [int] NOT NULL,
	[exitNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Costume]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Costume](
	[costumeId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[periodLimitDay] [int] NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_Costume] PRIMARY KEY NONCLUSTERED 
(
	[costumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeAttr](
	[costumeId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
 CONSTRAINT [pk_r_CostumeAttr] PRIMARY KEY NONCLUSTERED 
(
	[costumeId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeCollection]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeCollection](
	[costumeCollectionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[activationItemCount] [int] NOT NULL,
 CONSTRAINT [pk_r_CostumeCollection] PRIMARY KEY NONCLUSTERED 
(
	[costumeCollectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeCollectionAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeCollectionAttr](
	[costumeCollectionId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CostumeCollectionAttr] PRIMARY KEY NONCLUSTERED 
(
	[costumeCollectionId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeCollectionEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeCollectionEntry](
	[costumeCollectionId] [int] NOT NULL,
	[costumeId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_CostumeCollectionEntry] PRIMARY KEY NONCLUSTERED 
(
	[costumeCollectionId] ASC,
	[costumeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeDisplay]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeDisplay](
	[costumeId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[hairPrefabName] [varchar](100) NOT NULL,
	[facePrefabName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_CostumeDisplay] PRIMARY KEY NONCLUSTERED 
(
	[costumeId] ASC,
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeEffect]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeEffect](
	[costumeEffectId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[requiredItemId] [int] NOT NULL,
 CONSTRAINT [pk_r_CostumeEffect] PRIMARY KEY NONCLUSTERED 
(
	[costumeEffectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeEnchantLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeEnchantLevel](
	[enchantLevel] [int] NOT NULL,
	[step] [int] NOT NULL,
	[nextLevelUpSuccessRate] [int] NOT NULL,
	[nextLevelUpRequiredItemCount] [int] NOT NULL,
	[nextLevelUpMaxLuckyValue] [int] NOT NULL,
 CONSTRAINT [pk_r_CostumeEnchantLevel] PRIMARY KEY NONCLUSTERED 
(
	[enchantLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CostumeEnchantLevelAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CostumeEnchantLevelAttr](
	[costumeId] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CostumeEnchantLevelAttr] PRIMARY KEY NONCLUSTERED 
(
	[costumeId] ASC,
	[enchantLevel] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Creature]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Creature](
	[creatureId] [int] NOT NULL,
	[creatureCharacterId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[minQuality] [int] NOT NULL,
	[maxQuality] [int] NOT NULL,
 CONSTRAINT [pk_r_Creature] PRIMARY KEY NONCLUSTERED 
(
	[creatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureAdditionalAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureAdditionalAttr](
	[attrId] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureAdditionalAttr] PRIMARY KEY NONCLUSTERED 
(
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureAdditionalAttrValue]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureAdditionalAttrValue](
	[attrId] [int] NOT NULL,
	[injectionLevel] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureAdditionalAttrValue] PRIMARY KEY NONCLUSTERED 
(
	[attrId] ASC,
	[injectionLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureBaseAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureBaseAttr](
	[attrId] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureBaseAttr] PRIMARY KEY NONCLUSTERED 
(
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureBaseAttrValue]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureBaseAttrValue](
	[creatureId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[minAttrValue] [int] NOT NULL,
	[maxAttrValue] [int] NOT NULL,
	[incAttrValue] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureBaseAttrValue] PRIMARY KEY NONCLUSTERED 
(
	[creatureId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCard]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCard](
	[creatureCardId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[categoryId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[attack] [int] NOT NULL,
	[life] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardCollection]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardCollection](
	[collectionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[categoryId] [int] NOT NULL,
	[grade] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardCollectionAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardCollectionAttr](
	[collectionId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardCollectionCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardCollectionCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardCollectionEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardCollectionEntry](
	[collectionId] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardCollectionGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardCollectionGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[collectionFamePoint] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[saleSoulPowder] [int] NOT NULL,
	[disassembleSoulPowder] [int] NOT NULL,
	[compositionSoulPowder] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardLuckyShop]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardLuckyShop](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[freePickCount] [int] NOT NULL,
	[freePickWaitingTime] [int] NOT NULL,
	[pick1TimeDia] [int] NOT NULL,
	[pick5TimeDia] [int] NOT NULL,
	[pick5TimeSpecialPickCount] [int] NOT NULL,
	[pick1TimeGoldRewardId] [bigint] NOT NULL,
	[pick5TimeGoldRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardLuckyShopNormalPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardLuckyShopNormalPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureCardLuckyShopNormalPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardLuckyShopSpecialPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardLuckyShopSpecialPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureCardLuckyShopSpecialPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardShopFixedProduct]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardShopFixedProduct](
	[productId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[saleSoulPowder] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardShopRandomProduct]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardShopRandomProduct](
	[productId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCardShopRefreshSchedule]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCardShopRefreshSchedule](
	[scheduleId] [int] NOT NULL,
	[refreshTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCharacter]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCharacter](
	[creatureCharacterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_CreatureCharacter] PRIMARY KEY NONCLUSTERED 
(
	[creatureCharacterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureCharacterSkillPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureCharacterSkillPoolEntry](
	[creatureCharacterId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[skillId] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureCharacterSkillPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[creatureCharacterId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureFarmQuest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureFarmQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureFarmQuestExpReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureFarmQuestExpReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureFarmQuestExpReward] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureFarmQuestItemReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureFarmQuestItemReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureFarmQuestItemReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureFarmQuestMission]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureFarmQuestMission](
	[missionNo] [int] NOT NULL,
	[targetType] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetAutoCompletionTime] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureFarmQuestMission] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureFarmQuestMissionMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureFarmQuestMissionMonsterArrange](
	[missionNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureFarmQuestMissionMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureFarmQuestMissionReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureFarmQuestMissionReward](
	[missionNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureFarmQuestMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[colorCode] [varchar](10) NOT NULL,
 CONSTRAINT [pk_r_CreatureGrade] PRIMARY KEY NONCLUSTERED 
(
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureInjectionLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureInjectionLevel](
	[injectionLevel] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
	[requiredGold] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureInjectionLevel] PRIMARY KEY NONCLUSTERED 
(
	[injectionLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureInjectionLevelUpEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureInjectionLevelUpEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[isCritical] [bit] NOT NULL,
	[minInjectionExp] [int] NOT NULL,
	[maxInjectionExp] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureInjectionLevelUpEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureLevel](
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
	[maxInjectionLevel] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureLevel] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureSkill]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureSkill](
	[skillId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[effectTextKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_CreatureSkill] PRIMARY KEY NONCLUSTERED 
(
	[skillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureSkillAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureSkillAttr](
	[skillId] [int] NOT NULL,
	[skillGrade] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_CreatureSkillAttr] PRIMARY KEY NONCLUSTERED 
(
	[skillId] ASC,
	[skillGrade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureSkillCountPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureSkillCountPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[skillCount] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureSkillCountPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureSkillGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureSkillGrade](
	[skillGrade] [int] NOT NULL,
	[point] [int] NOT NULL,
	[colorCode] [varchar](10) NOT NULL,
 CONSTRAINT [pk_r_CreatureSkillGrade] PRIMARY KEY NONCLUSTERED 
(
	[skillGrade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureSkillSlotOpenRecipe]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureSkillSlotOpenRecipe](
	[slotCount] [int] NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureSkillSlotOpenRecipe] PRIMARY KEY NONCLUSTERED 
(
	[slotCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_CreatureSkillSlotProtection]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_CreatureSkillSlotProtection](
	[protectionCount] [int] NOT NULL,
	[requiredSkillCount] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
 CONSTRAINT [pk_r_CreatureSkillSlotProtection] PRIMARY KEY NONCLUSTERED 
(
	[protectionCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyAttendRewardEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyAttendRewardEntry](
	[day] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyChargeEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyChargeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyChargeEventMission]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyChargeEventMission](
	[missionNo] [int] NOT NULL,
	[requiredUnOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_r_DailyChargeEventMission] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyChargeEventMissionReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyChargeEventMissionReward](
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_DailyChargeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyConsumeEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyConsumeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyConsumeEventMission]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyConsumeEventMission](
	[missionNo] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
 CONSTRAINT [pk_r_DailyConsumeEventMission] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyConsumeEventMissionReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyConsumeEventMissionReward](
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_DailyConsumeEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[missionNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuest](
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[playCount] [int] NOT NULL,
	[freeRefreshCount] [int] NOT NULL,
	[refreshRequiredGold] [int] NOT NULL,
	[slotCount] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestExtraReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestExtraReward](
	[completionCount] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_DailyQuestExtraReward] PRIMARY KEY NONCLUSTERED 
(
	[completionCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestGrade](
	[grade] [int] NOT NULL,
	[point] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[immediateCompletionRequiredGold] [int] NOT NULL,
	[autoCompletionRequiredTime] [int] NOT NULL,
	[rewardVipPoint] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[availableItemRewardId1] [int] NOT NULL,
	[availableItemRewardId2] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestLevelReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestLevelReward](
	[objectiveType] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL,
 CONSTRAINT [pk_r_DailyQuestLevelReward] PRIMARY KEY NONCLUSTERED 
(
	[objectiveType] ASC,
	[grade] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestMission]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestMission](
	[missionId] [int] NOT NULL,
	[_title] [nvarchar](20) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosotion] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[targetDescriptionKey] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestObjective]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestObjective](
	[objectiveType] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[pickPoint] [int] NOT NULL,
	[objectiveCount] [int] NOT NULL,
	[rewardGold] [int] NOT NULL,
	[completionGold] [int] NOT NULL,
	[autoCompletionDuration] [int] NOT NULL,
 CONSTRAINT [pk_r_DailyQuestObjective] PRIMARY KEY NONCLUSTERED 
(
	[objectiveType] ASC,
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestObjectiveType]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestObjectiveType](
	[objectiveType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_DailyQuestObjectiveType] PRIMARY KEY NONCLUSTERED 
(
	[objectiveType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DailyQuestReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DailyQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DialogueMainQuestDialogueEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DialogueMainQuestDialogueEntry](
	[nationId] [int] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[_content] [nvarchar](400) NOT NULL,
	[contentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_DialogueMainQuestDialogueEntry] PRIMARY KEY NONCLUSTERED 
(
	[nationId] ASC,
	[mainQuestNo] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DiaShopCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DiaShopCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredVipLevel] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_DiaShopCategory] PRIMARY KEY NONCLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DiaShopProduct]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DiaShopProduct](
	[productId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[costumeProductType] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[tagType] [int] NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyItemId] [int] NOT NULL,
	[originalPrice] [int] NOT NULL,
	[price] [int] NOT NULL,
	[buyLimitType] [int] NOT NULL,
	[buyLimitCount] [int] NOT NULL,
	[periodType] [int] NOT NULL,
	[periodStartTime] [datetime] NULL,
	[periodEndTime] [datetime] NULL,
	[periodDayOfWeek] [int] NOT NULL,
	[recommended] [bit] NOT NULL,
	[isLimitEdition] [bit] NOT NULL,
	[sellable] [bit] NOT NULL,
	[categorySortNo] [int] NOT NULL,
	[limitEditionSortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_DiaShopProduct] PRIMARY KEY NONCLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DimensionInfiltrationEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DimensionInfiltrationEvent](
	[secretLetterQuestExploitPointFactor] [float] NOT NULL,
	[killExploitPointFactor] [float] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DimensionRaidQuest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DimensionRaidQuest](
	[_content] [varchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[targetInteractionDuration] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DimensionRaidQuestReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DimensionRaidQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DimensionRaidQuestStep]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DimensionRaidQuestStep](
	[step] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[_targetInteractionText] [varchar](100) NOT NULL,
	[targetInteractionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[enterRequiredItemId] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[baseMaxStep] [int] NOT NULL,
	[additionalStepOpenRate] [int] NOT NULL,
	[areaEffectPrefabName] [varchar](100) NOT NULL,
	[areaEffectScale] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[trapPenaltyMoveSpeed] [int] NOT NULL,
	[trapPenaltyDuration] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestAvailableReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_DragonNestAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestMonsterArrange](
	[stepNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
 CONSTRAINT [pk_r_DragonNestMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestMonsterAttrFactor]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL,
	[trapDamageFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_DragonNestMonsterAttrFactor] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestObstacle]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[scale] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_DragonNestObstacle] PRIMARY KEY NONCLUSTERED 
(
	[obstacleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestStep]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestStep](
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[targetAreaDisplayed] [bit] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_DragonNestStep] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestStepReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestStepReward](
	[stepNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_DragonNestStepReward] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DragonNestTrap]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DragonNestTrap](
	[trapId] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[damage] [int] NOT NULL,
	[activationStepNo] [int] NOT NULL,
	[deactivationStepNo] [int] NOT NULL,
 CONSTRAINT [pk_r_DragonNestTrap] PRIMARY KEY NONCLUSTERED 
(
	[trapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DropCountPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DropCountPoolEntry](
	[dropCountPoolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DropGearGradePoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DropGearGradePoolEntry](
	[dropGearGradePoolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[grade] [int] NOT NULL,
 CONSTRAINT [pk_r_DropGearGradePoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[dropGearGradePoolId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DropObjectPoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DropObjectPoolEntry](
	[dropObjectPoolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[type] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DungeonArea]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DungeonArea](
	[dungeonAreaId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
 CONSTRAINT [pk_r_DungeonArea] PRIMARY KEY NONCLUSTERED 
(
	[dungeonAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_DungeonAreaEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_DungeonAreaEntry](
	[dungeonAreaId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_DungeonAreaEntry] PRIMARY KEY NONCLUSTERED 
(
	[dungeonAreaId] ASC,
	[locationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Elemental]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Elemental](
	[elementalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_EliteDungeon]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_EliteDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](100) NOT NULL,
	[_description] [int] NOT NULL,
	[descriptionKey] [varchar](100) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[baseEnterCount] [int] NOT NULL,
	[enterCountAddInterval] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[monsterxPosition] [float] NOT NULL,
	[monsteryPosition] [float] NOT NULL,
	[monsterzPosition] [float] NOT NULL,
	[monsteryRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_EliteMonster]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_EliteMonster](
	[eliteMonsterId] [int] NOT NULL,
	[eliteMonsterMasterId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[starGrade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_EliteMonsterCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_EliteMonsterCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[recommendMinHeroLevel] [int] NOT NULL,
	[recommendMaxHeroLevel] [int] NOT NULL,
	[continentId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_EliteMonsterKillAttrValue]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_EliteMonsterKillAttrValue](
	[eliteMonsterId] [int] NOT NULL,
	[killCount] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_EliteMonsterMaster]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_EliteMonsterMaster](
	[eliteMonsterMasterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[level] [int] NOT NULL,
	[displayMonsterId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_EliteMonsterSpawnSchedule]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_EliteMonsterSpawnSchedule](
	[eliteMonsterMasterId] [int] NOT NULL,
	[scheduleNo] [int] NOT NULL,
	[spawnTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Episode]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Episode](
	[chapterNo] [int] NOT NULL,
	[episodeNo] [int] NOT NULL,
	[_name] [nvarchar](20) NULL,
	[nameKey] [varchar](20) NOT NULL,
	[rewardExp] [int] NOT NULL,
	[rewardGold] [int] NOT NULL,
	[additionalRewardItemId] [int] NOT NULL,
	[additionalRewardItemCount] [int] NOT NULL,
	[additionalRewardOwned] [bit] NOT NULL,
 CONSTRAINT [pk_r_Episode] PRIMARY KEY NONCLUSTERED 
(
	[chapterNo] ASC,
	[episodeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExchangePoolEntry]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExchangePoolEntry](
	[poolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[gearGrade] [int] NOT NULL,
	[gearOwned] [bit] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[readyMadeGearId] [int] NOT NULL,
	[readyMadeGearOwned] [bit] NOT NULL,
 CONSTRAINT [pk_r_ExchangePoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[poolId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpDungeon]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[waveIntervalTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[sweepExpRewardFactor] [float] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[startGuideContentKey] [varchar](40) NOT NULL,
	[lakChargeMonsterAppearContentKey] [varchar](40) NOT NULL,
	[lakChargeMonsterKillContentKey] [varchar](40) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpDungeonDifficulty]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpDungeonDifficulty](
	[difficulty] [int] NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[_ObjectiveTitle] [nvarchar](80) NOT NULL,
	[objectiveTitleKey] [varchar](20) NOT NULL,
	[recommendLevel] [int] NOT NULL,
	[baseRewardExp] [bigint] NOT NULL,
	[additionalRewardExp] [bigint] NOT NULL,
	[penaltyRewardMinExp] [bigint] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ExpDungeonDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpDungeonDifficultyWave]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpDungeonDifficultyWave](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[waveLimitTime] [int] NOT NULL,
	[lakChargeMonsterRate] [int] NOT NULL,
	[lakChargeAmount] [int] NOT NULL,
	[lakChargeMonsterArrangeId] [bigint] NOT NULL,
	[lakChargeMonsterxPosition] [float] NOT NULL,
	[lakChargeMonsteryPosition] [float] NOT NULL,
	[lakChargeMonsterzPosition] [float] NOT NULL,
	[lakChargeMonsterYRotationType] [int] NOT NULL,
	[lakChargeMonsteryRotation] [float] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpDungeonDifficultyWaveArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpDungeonDifficultyWaveArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[spawnXPosition] [float] NOT NULL,
	[spawnYPosition] [float] NOT NULL,
	[spawnZPosition] [float] NOT NULL,
	[spawnRadius] [float] NOT NULL,
	[spawnYRotationType] [int] NOT NULL,
	[spawnYRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_ExpDungeonDifficultyWaveArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[waveNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpDungeonFreeRevival]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpDungeonFreeRevival](
	[revivalCount] [int] NOT NULL,
	[revivalDelayTime] [int] NOT NULL,
 CONSTRAINT [pk_r_ExpDungeonFreeRevival] PRIMARY KEY NONCLUSTERED 
(
	[revivalCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpDungeonMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpDungeonMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExploitPointReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExploitPointReward](
	[exploitPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ExpReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ExpReward](
	[expRewardId] [bigint] NOT NULL,
	[value] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltar]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltar](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[halidomMonsterLifetime] [int] NOT NULL,
	[halidomMonsterSpawnTextKey] [varchar](20) NOT NULL,
	[halidomDisplayDuration] [int] NOT NULL,
	[halidomAcquisitionRate] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarHalidom]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarHalidom](
	[halidomId] [int] NOT NULL,
	[halidomElementalId] [int] NOT NULL,
	[halidomLevel] [int] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_FearAltarHalidom] PRIMARY KEY NONCLUSTERED 
(
	[halidomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarHalidomCollectionReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarHalidomCollectionReward](
	[rewardNo] [int] NOT NULL,
	[collectionCount] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_FearAltarHalidomCollectionReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarHalidomElemental]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarHalidomElemental](
	[halidomElementalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[collectionItemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_FearAltarHalidomElemental] PRIMARY KEY NONCLUSTERED 
(
	[halidomElementalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarHalidomLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarHalidomLevel](
	[halidomLevel] [int] NOT NULL,
 CONSTRAINT [pk_r_FearAltarHalidomLevel] PRIMARY KEY NONCLUSTERED 
(
	[halidomLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarMonsterAttrFactor]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_FearAltarMonsterAttrFactor] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_FearAltarReward] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarStage]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarStage](
	[stageId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
 CONSTRAINT [pk_r_FearAltarStage] PRIMARY KEY NONCLUSTERED 
(
	[stageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarStageWave]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarStageWave](
	[stageId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL,
	[halidomMonsterSpawnRate] [int] NOT NULL,
	[halidomMonsterXPosition] [float] NOT NULL,
	[halidomMonsterYPosition] [float] NOT NULL,
	[halidomMonsterZPosition] [float] NOT NULL,
	[halidomMonsterYRotationType] [int] NOT NULL,
	[halidomMonsterYRotation] [float] NOT NULL,
	[targetArrangeKey] [int] NOT NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [pk_r_FearAltarStageWave] PRIMARY KEY NONCLUSTERED 
(
	[stageId] ASC,
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FearAltarStageWaveMonsterArrange]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FearAltarStageWaveMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[stageId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterType] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
 CONSTRAINT [pk_r_FearAltarStageWaveMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldBoss]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldBoss](
	[fieldBossId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
	[sortNo] [int] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_FieldBoss] PRIMARY KEY NONCLUSTERED 
(
	[fieldBossId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldBossEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldBossEvent](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[rewardRadius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldBossEventAvailableReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldBossEventAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_FieldBossEventAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldBossEventSchedule]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldBossEventSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_FieldBossEventSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldOfHonor]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldOfHonor](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetYRotation] [float] NOT NULL,
	[winnerHonorPointRewardId] [bigint] NOT NULL,
	[loserHonorPointRewardId] [bigint] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldOfHonorLevelReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldOfHonorLevelReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldOfHonorRankingReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldOfHonorRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FieldOfHonorTarget]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FieldOfHonorTarget](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[targetHighRankingGap] [int] NOT NULL,
	[targetLowRankingGap] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FirstChargeEvent]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FirstChargeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FirstChargeEventReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FirstChargeEventReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_FirstChargeEventReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FishingQuest]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FishingQuest](
	[npcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[castingCount] [int] NOT NULL,
	[castingInterval] [int] NOT NULL,
	[partyRadius] [float] NOT NULL,
	[partyExpRewardFactor] [float] NOT NULL,
	[partyRecommendPopUpDisplayDuration] [int] NOT NULL,
	[partyRecommendPopUpHideDuration] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[guildExpRewardFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FishingQuestCastingReward]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FishingQuestCastingReward](
	[baitItemId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FishingQuestGuildTerritorySpot]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FishingQuestGuildTerritorySpot](
	[spotId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
 CONSTRAINT [pk_r_FishingQuestGuildTerritorySpot] PRIMARY KEY NONCLUSTERED 
(
	[spotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_FishingQuestSpot]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_FishingQuestSpot](
	[spotId] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GameConfig]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GameConfig](
	[maxHeroCount] [int] NOT NULL,
	[startContinentId] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[floatstartYRotation] [int] NOT NULL,
	[mainGearOptionAttrMinCount] [int] NOT NULL,
	[mainGearOptionAttrMaxCount] [int] NOT NULL,
	[mailRetentionDay] [int] NOT NULL,
	[mainGearRefinementItemId] [int] NOT NULL,
	[battleModeDuration] [float] NOT NULL,
	[specialSkillId] [int] NOT NULL,
	[specialSkillMaxLak] [int] NOT NULL,
	[freeImmediateRevivalDailyCount] [int] NOT NULL,
	[autoSaftyRevivalWatingTime] [int] NOT NULL,
	[startContinentSaftyRevivalXPosition] [float] NOT NULL,
	[startContinentSaftyRevivalYPosition] [float] NOT NULL,
	[startContinentSaftyRevivalZPosition] [float] NOT NULL,
	[startContinentSaftyRevivalRadius] [float] NOT NULL,
	[startContinentSaftyRevivalYRotationType] [int] NOT NULL,
	[startContinentSaftyRevivalYRotation] [int] NOT NULL,
	[saftyRevivalContinentId] [int] NOT NULL,
	[saftyRevivalXPosition] [float] NOT NULL,
	[saftyRevivalYPosition] [float] NOT NULL,
	[saftyRevivalZPosition] [float] NOT NULL,
	[saftyRevivalRadius] [float] NOT NULL,
	[saftyRevivalYRotationType] [int] NOT NULL,
	[saftyRevivalYRotation] [float] NOT NULL,
	[simpleShopSellSlotCount] [int] NOT NULL,
	[mainGearDisassembleSlotCount] [int] NOT NULL,
	[restRewardGoldReceiveExpRate] [int] NOT NULL,
	[restRewardDiaReceiveExpRate] [int] NOT NULL,
	[partyMemberMaxCount] [int] NOT NULL,
	[partyMemberLogOutDuration] [int] NOT NULL,
	[partyInvitationLifetime] [int] NOT NULL,
	[partyApplicationLifetime] [int] NOT NULL,
	[partyCallCoolTime] [int] NOT NULL,
	[chattingMaxLength] [int] NOT NULL,
	[chattingMinInterval] [int] NOT NULL,
	[worldChattingDisplayDuration] [float] NOT NULL,
	[chattingSendHistoryMaxCount] [int] NOT NULL,
	[worldChattingItemId] [int] NOT NULL,
	[weekendAttendItemRewardId] [bigint] NOT NULL,
	[mountQualityUpRequiredLevelUpCount] [int] NOT NULL,
	[equippedMountAttrFactor] [float] NOT NULL,
	[unequippedMountAttrFactor] [float] NOT NULL,
	[mountGearOptionAttrCount] [int] NOT NULL,
	[mountGearRefinementItemId] [int] NOT NULL,
	[mountLevelUpItemId] [int] NOT NULL,
	[chattingBubbleDisplayDuration] [int] NOT NULL,
	[dungeonFreeSweepDailyCount] [int] NOT NULL,
	[dungeonSweepItemId] [int] NOT NULL,
	[chattingDisplayMaxCount] [int] NOT NULL,
	[wingEnchantItemId] [int] NOT NULL,
	[wingEnchantExp] [int] NOT NULL,
	[maxStamina] [int] NOT NULL,
	[staminaRecoveryTime] [int] NOT NULL,
	[defaultToastDisplayDuration] [float] NOT NULL,
	[defaultToastDisplayCount] [int] NOT NULL,
	[itemToastDisplayDuration] [float] NOT NULL,
	[battlePowerToastDisplayDuration] [float] NOT NULL,
	[contentOpenToastDisplayDuration] [float] NOT NULL,
	[locationAreaToastDisplayDuration] [float] NOT NULL,
	[wingVisibleMinVipLevel] [int] NOT NULL,
	[hpPotionAutoUseHpRate] [int] NOT NULL,
	[standingBattleRange] [float] NOT NULL,
	[shortDistanceBattleRange] [float] NOT NULL,
	[optimizationModeWaitingTime] [int] NOT NULL,
	[deadWarningDisplayHpRate] [int] NOT NULL,
	[pvpMinHeroLevel] [int] NOT NULL,
	[cartNormalSpeed] [int] NOT NULL,
	[cartHighSpeed] [int] NOT NULL,
	[cartAccelSuccessRate] [int] NOT NULL,
	[cartHighSpeedDuration] [int] NOT NULL,
	[cartHighSpeedDurationExtension] [int] NOT NULL,
	[cartAccelCoolTime] [int] NOT NULL,
	[worldLevelExpBuffMinHeroLevel] [int] NOT NULL,
	[nationTransmissionExitXPosition] [float] NOT NULL,
	[nationTransmissionExitYPosition] [float] NOT NULL,
	[nationTransmissionExitZPosition] [float] NOT NULL,
	[nationTransmissionExitRadius] [float] NOT NULL,
	[nationTransmissionExitYRotationType] [int] NOT NULL,
	[nationTransmissionExitYRotation] [float] NOT NULL,
	[guideToastDisplayDuration] [int] NOT NULL,
	[nationTransmissionRequiredHeroLevel] [int] NOT NULL,
	[bountyHunterQuestMaxCount] [int] NOT NULL,
	[todayMissionCount] [int] NOT NULL,
	[fieldOfHonorDisplayMaxRanking] [int] NOT NULL,
	[fieldOfHonorDisplayHistoryCount] [int] NOT NULL,
	[rankingDisplayMaxCount] [int] NOT NULL,
	[guildRequiredHeroLevel] [int] NOT NULL,
	[guildCreationRequiredVipLevel] [int] NOT NULL,
	[guildCreationRequiredDia] [int] NOT NULL,
	[guildRejoinIntervalTime] [int] NOT NULL,
	[guildDailyApplicationMaxCount] [int] NOT NULL,
	[guildDailyBanishmentMaxCount] [int] NOT NULL,
	[guildInvitationLifetime] [int] NOT NULL,
	[guildNoticeMaxLength] [int] NOT NULL,
	[guildApplicationReceptionMaxCount] [int] NOT NULL,
	[guildViceMasterCount] [int] NOT NULL,
	[guildLordCount] [int] NOT NULL,
	[guildRankingDisplayMaxCount] [int] NOT NULL,
	[rankOpenRequiredMainQuestNo] [int] NOT NULL,
	[wingOpenRequiredHeroLevel] [int] NOT NULL,
	[wingOpenProvideWingId] [int] NOT NULL,
	[guildCallLifetime] [int] NOT NULL,
	[guildCallRadius] [float] NOT NULL,
	[nationCallLifeTime] [int] NOT NULL,
	[nationCallRadius] [float] NOT NULL,
	[guildDailyObjectiveNoticeTextKey] [varchar](20) NOT NULL,
	[guildDailyObjectiveNoticeCoolTime] [int] NOT NULL,
	[guildHuntingDonationMaxCount] [int] NOT NULL,
	[guildHuntingDonationItemId] [int] NOT NULL,
	[guildHuntingDonationItemRewardId] [int] NOT NULL,
	[guildHuntingDonationCompletionItemRewardId] [int] NOT NULL,
	[defaultGuildWeeklyObjectiveId] [int] NOT NULL,
	[nationWarMonsterBattleModeDuration] [int] NOT NULL,
	[signBoardDisplayDuration] [int] NOT NULL,
	[noticeBoardDisplayDuration] [int] NOT NULL,
	[creatureCardShopRandomProductCount] [int] NOT NULL,
	[creatureCardShopPaidRefreshDia] [int] NOT NULL,
	[restRewardRequiredHeroLevel] [int] NOT NULL,
	[guideActivationRequiredHeroLevel] [int] NOT NULL,
	[accelerationRequiredMoveDuration] [int] NOT NULL,
	[accelerationMoveSpeed] [int] NOT NULL,
	[sceneryQuestRequiredMainQuestNo] [int] NOT NULL,
	[menuContentOpenPreviewRequiredHeroLevel] [int] NOT NULL,
	[monsterGroggyDuration] [int] NOT NULL,
	[monsterStealDuration] [int] NOT NULL,
	[rookieGiftScratchOpenDuration] [int] NOT NULL,
	[openGiftRequiredHeroLevel] [int] NOT NULL,
	[bountyHunterQuestRequiredHeroLevel] [int] NOT NULL,
	[open7DayEventRequiredMainQuestNo] [int] NOT NULL,
	[taskConsignmentRequiredVipLevel] [int] NOT NULL,
	[eliteMonsterKillApplicationRequiredHeroLevel] [int] NOT NULL,
	[nationAllianceUnavailableStartTime] [int] NOT NULL,
	[nationAllianceUnavailableEndTime] [int] NOT NULL,
	[nationAllianceRequiredFund] [bigint] NOT NULL,
	[nationAllianceRenounceUnavailableDuration] [int] NOT NULL,
	[nationBasePower] [int] NOT NULL,
	[costumeEnchantItemId] [int] NOT NULL,
	[costumeCollectionActivationItemId] [int] NOT NULL,
	[costumeCollectionShuffleItemId] [int] NOT NULL,
	[costumeCollectionShuffleItemCount] [int] NOT NULL,
	[mountAwakeningRequiredHeroLevel] [int] NOT NULL,
	[mountAwakeningItemId] [int] NOT NULL,
	[mountPotionAttrItemId] [int] NOT NULL,
	[artifactRequiredConditionType] [int] NOT NULL,
	[artifactRequiredConditionValue] [int] NOT NULL,
	[artifactMaxLevel] [int] NOT NULL,
	[chargeEventRequiredHeroLevel] [int] NOT NULL,
	[consumeEventRequiredHeroLevel] [int] NOT NULL,
	[jobChangeRequiredHeroLevel] [int] NOT NULL,
	[jobChangeRequiredItemId] [int] NOT NULL,
	[jobChangeQuestCompletionClientTutorialId] [int] NOT NULL,
	[warehouseRequiredVipLevel] [int] NOT NULL,
	[freeWarehouseSlotCount] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[wingMemoryPieceInstallationRequiredHeroLevel] [int] NOT NULL,
	[ordealQuestSlotCount] [int] NOT NULL,
	[friendMaxCount] [int] NOT NULL,
	[tempFriendMaxCount] [int] NOT NULL,
	[tempFriendKeepDay] [int] NOT NULL,
	[deadRecordMaxCount] [int] NOT NULL,
	[blacklistEntryMaxCount] [int] NOT NULL,
	[blessingQuestListMaxCount] [int] NOT NULL,
	[blessingQuestLimitTime] [int] NOT NULL,
	[blessingQuestRequiredHeroLevel] [int] NOT NULL,
	[blessingListMaxCount] [int] NOT NULL,
	[blessingLimitTime] [int] NOT NULL,
	[presentPopularityPointRankingDisplayMaxCount] [int] NULL,
	[presentContributionPointRankingDisplayMaxCount] [int] NULL,
	[ownerProspectQuestListMaxCount] [int] NULL,
	[targetProspectQuestListMaxCount] [int] NULL,
	[creatureRequiredHeroLevel] [int] NOT NULL,
	[creatureMaxCount] [int] NOT NULL,
	[creatureCheerMaxCount] [int] NOT NULL,
	[creatureCheerAttrFactor] [float] NOT NULL,
	[creatureEvaluationFactor] [float] NOT NULL,
	[creatureAdditionalAttrCount] [int] NOT NULL,
	[creatureSkillSlotMaxCount] [int] NOT NULL,
	[creatureSkillSlotBaseOpenCount] [int] NOT NULL,
	[creatureCompositionExpRetrievalRate] [int] NOT NULL,
	[creatureCompositionExpRetrievalResultItemId] [int] NOT NULL,
	[creatureCompositionSkillProtectionItemId] [int] NOT NULL,
	[creatureInjectionExpRetrievalRate] [int] NOT NULL,
	[creatureInjectionExpRetrievalResultItemId] [int] NOT NULL,
	[creatureAdditionalAttrSwitchRequiredItemId] [int] NOT NULL,
	[creatureReleaseExpRetrievalRate] [int] NOT NULL,
	[creatureReleaseExpRetrievalResultItemId] [int] NOT NULL,
	[creatureVariationRequiredItemId] [int] NOT NULL,
	[guildBlessingGuildTerritoryNpcId] [int] NOT NULL,
	[open7DayEventCostumeItemRewardId] [bigint] NOT NULL,
	[open7DayEventCostumeRewardRequiredItemId] [int] NOT NULL,
	[open7DayEventCostumeRewardRequiredItemCount] [int] NOT NULL,
	[participationCreatureDisplayRequiredVipLevel] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Gear]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Gear](
	[gearId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[jobId] [int] NOT NULL,
	[gearType] [int] NOT NULL,
	[tier] [int] NOT NULL,
	[sellingPrice] [int] NOT NULL,
 CONSTRAINT [pk_r_Gear] PRIMARY KEY NONCLUSTERED 
(
	[gearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearBaseAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearBaseAttr](
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_r_GearBaseAttr] PRIMARY KEY NONCLUSTERED 
(
	[gearId] ASC,
	[grade] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearCategory]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[socketCount] [int] NOT NULL,
	[royalOptionEnabled] [bit] NOT NULL,
 CONSTRAINT [pk_r_GearCategory] PRIMARY KEY NONCLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearCompositionRecipe]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearCompositionRecipe](
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
	[compositedGearId] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
 CONSTRAINT [pk_r_GearCompositionRecipe] PRIMARY KEY NONCLUSTERED 
(
	[gearId] ASC,
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearDisassembleRecipe]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearDisassembleRecipe](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[no] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_GearDisassembleRecipe] PRIMARY KEY NONCLUSTERED 
(
	[tier] ASC,
	[grade] ASC,
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearEnchantRecipe]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearEnchantRecipe](
	[gearType] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemCount] [int] NOT NULL,
	[luckyMaterialItemId] [int] NOT NULL,
	[luckyMaterialItemCount] [int] NOT NULL,
	[penaltyPreventionItemId] [int] NOT NULL,
	[penaltyPreventionItemCount] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
	[successRate] [int] NOT NULL,
	[luckyMaxIncreaseEnchantLevel] [int] NOT NULL,
 CONSTRAINT [pk_r_GearEnchantRecipe] PRIMARY KEY NONCLUSTERED 
(
	[gearType] ASC,
	[enchantLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearLevelBaseAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearLevelBaseAttr](
	[jobId] [int] NOT NULL,
	[gearType] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[gearLevel] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_r_GearLevelBaseAttr] PRIMARY KEY NONCLUSTERED 
(
	[jobId] ASC,
	[gearType] ASC,
	[grade] ASC,
	[gearLevel] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearOptionAttrGrade]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearOptionAttrGrade](
	[gearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[pickPoint] [int] NOT NULL,
	[minValue] [int] NOT NULL,
	[maxValue] [int] NOT NULL,
 CONSTRAINT [pk_r_GearOptionAttrGrade] PRIMARY KEY NONCLUSTERED 
(
	[gearId] ASC,
	[attrId] ASC,
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearOptionAttrInheritRecipe]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearOptionAttrInheritRecipe](
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
 CONSTRAINT [pk_r_GearOptionAttrInheritRecipe] PRIMARY KEY NONCLUSTERED 
(
	[gearId] ASC,
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearPassiveAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearPassiveAttr](
	[gearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_r_GearPassiveAttr] PRIMARY KEY NONCLUSTERED 
(
	[gearId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearRefinementRecipe]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearRefinementRecipe](
	[gearType] [int] NOT NULL,
	[level] [int] NOT NULL,
	[material1ItemId] [int] NOT NULL,
	[material1ItemCount] [int] NOT NULL,
	[material2ItemId] [int] NOT NULL,
	[material2ItemCount] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
 CONSTRAINT [pk_r_GearRefinementRecipe] PRIMARY KEY NONCLUSTERED 
(
	[gearType] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearRoyalType]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearRoyalType](
	[royalType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_GearRoyalType] PRIMARY KEY NONCLUSTERED 
(
	[royalType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearTier]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearTier](
	[tier] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[maxGearLevel] [int] NOT NULL,
	[maxEnchantLevel] [int] NOT NULL,
 CONSTRAINT [pk_r_GearTier] PRIMARY KEY NONCLUSTERED 
(
	[tier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearTierRoyalAttr]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearTierRoyalAttr](
	[tier] [int] NOT NULL,
	[royalType] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
	[compositeValue] [int] NOT NULL,
 CONSTRAINT [pk_r_GearTierRoyalAttr] PRIMARY KEY NONCLUSTERED 
(
	[tier] ASC,
	[royalType] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearType]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearType](
	[gearType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[categoryId] [int] NOT NULL,
	[gearSlotIndex] [int] NOT NULL,
	[inventoryCategoryId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_GearType] PRIMARY KEY NONCLUSTERED 
(
	[gearType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearTypeEnchantLevel]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearTypeEnchantLevel](
	[gearType] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[baseAttrFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_GearTypeEnchantLevel] PRIMARY KEY NONCLUSTERED 
(
	[gearType] ASC,
	[enchantLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GearTypeSocket]    Script Date: 2023/4/7 16:13:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GearTypeSocket](
	[gearType] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemType] [int] NOT NULL,
 CONSTRAINT [pk_r_GearTypeSocket] PRIMARY KEY NONCLUSTERED 
(
	[gearType] ASC,
	[socketIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GoldDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GoldDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[monsterEscapexPosition] [float] NOT NULL,
	[monsterEscapeyPosition] [float] NOT NULL,
	[monsterEscapezPosition] [float] NOT NULL,
	[monsterEscapeRadius] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GoldDungeonDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GoldDungeonDifficulty](
	[difficulty] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GoldDungeonStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GoldDungeonStep](
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GoldDungeonStepMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GoldDungeonStepMonsterArrange](
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[isFugitive] [tinyint] NOT NULL,
	[activationWaveNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GoldDungeonStepWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GoldDungeonStepWave](
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[limitTime] [int] NOT NULL,
	[nextWaveIntervalTime] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GoldReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GoldReward](
	[goldRewardId] [bigint] NOT NULL,
	[value] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Grade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Grade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[gearOptionAttrCount] [int] NOT NULL,
 CONSTRAINT [pk_r_Grade] PRIMARY KEY NONCLUSTERED 
(
	[grade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildAltar]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildAltar](
	[guildTerritoryNpcId] [int] NOT NULL,
	[dailyHeroMaxMoralPoint] [int] NOT NULL,
	[dailyGuildMaxMoralPoint] [int] NOT NULL,
	[donationGold] [int] NOT NULL,
	[donationRewardMoralPoint] [int] NOT NULL,
	[spellInjectionDuration] [int] NOT NULL,
	[spellInjectionRewardMoralPoint] [int] NOT NULL,
	[defenseMonsterArrangeId] [bigint] NOT NULL,
	[defenseRewardMoralPoint] [int] NOT NULL,
	[defenseCooltime] [int] NOT NULL,
	[defenseLimitTime] [int] NOT NULL,
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL,
	[guildBuildingPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildAltarDefenseMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildAltarDefenseMonsterAttrFactor](
	[heroLevel] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildAltarReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildAltarReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildBlessingBuff]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildBlessingBuff](
	[buffId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[expRewardFactor] [float] NOT NULL,
	[duration] [int] NOT NULL,
	[dia] [int] NOT NULL,
 CONSTRAINT [pk_r_GuildBlessingBuff] PRIMARY KEY NONCLUSTERED 
(
	[buffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildBuilding]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildBuilding](
	[buildingId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildBuildingLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildBuildingLevel](
	[buildingId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpGuildBuildingPoint] [int] NOT NULL,
	[nextLevelUpGuildFund] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildBuildingPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildBuildingPointReward](
	[guildBuildingPointRewardId] [bigint] NOT NULL,
	[value] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildContent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildContent](
	[guildContentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[_rewardText] [varchar](100) NOT NULL,
	[rewardTextKey] [varchar](40) NOT NULL,
	[_eventTimeText] [varchar](100) NOT NULL,
	[eventTimeTextKey] [varchar](40) NOT NULL,
	[_lockText] [varchar](100) NOT NULL,
	[lockTextKey] [varchar](40) NOT NULL,
	[achievementPoint] [int] NOT NULL,
	[isDailyObjective] [tinyint] NOT NULL,
	[sortNo] [int] NOT NULL,
	[taskId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildContentAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildContentAvailableReward](
	[guildContentId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildContributionPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildContributionPointReward](
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildDailyObjectiveReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildDailyObjectiveReward](
	[rewardNo] [int] NOT NULL,
	[completionMemberCount] [int] NOT NULL,
	[itemReward1Id] [bigint] NOT NULL,
	[itemReward2Id] [bigint] NOT NULL,
	[itemReward3Id] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildDonationEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildDonationEntry](
	[entryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [bigint] NOT NULL,
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildFarmQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildFarmQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[questGuildTerritoryNpcId] [int] NOT NULL,
	[targetGuildTerritoryNpcId] [int] NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[interactionTextKey] [varchar](40) NOT NULL,
	[completionItemRewardId] [bigint] NOT NULL,
	[questStartDialogueKey] [varchar](40) NOT NULL,
	[questCompletionDialogueKey] [varchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetCompletionKey] [varchar](40) NOT NULL,
	[completionGuildContributionPointRewardId] [bigint] NOT NULL,
	[completionGuildBuildingPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildFarmQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildFarmQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildFoodWarehouse]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildFoodWarehouse](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[limitCount] [int] NOT NULL,
	[guildTerritoryNpcId] [int] NOT NULL,
	[levelUpRequiredItemType] [int] NOT NULL,
	[fullLevelItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildFoodWarehouseLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildFoodWarehouseLevel](
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildFoodWarehouseStockReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildFoodWarehouseStockReward](
	[itemId] [int] NOT NULL,
	[heroLevel] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildFundReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildFundReward](
	[guildFundRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildHuntingQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildHuntingQuest](
	[limitCount] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[completionDialogueKey] [varchar](100) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildHuntingQuestObjective]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildHuntingQuestObjective](
	[objectiveId] [int] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[point] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[_targetDescription] [int] NOT NULL,
	[targetDescriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildLevel](
	[level] [int] NOT NULL,
	[maxMemberCount] [int] NOT NULL,
	[dailyItemRewardId] [bigint] NOT NULL,
	[altarItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildMemberGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildMemberGrade](
	[memberGrade] [int] NOT NULL,
	[applicationAcceptanceEnabled] [tinyint] NOT NULL,
	[invitationEnabled] [tinyint] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[guildFoodWarehouseRewardCollectionEnabled] [tinyint] NOT NULL,
	[guildSupplySupportQuestEnabled] [tinyint] NOT NULL,
	[guildBuildingLevelUpEnabled] [tinyint] NOT NULL,
	[guildCallEnabled] [tinyint] NOT NULL,
	[weeklyObjectiveSettingEnabled] [tinyint] NOT NULL,
	[guildBlessingBuffEnabled] [bit] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildMission](
	[missionId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetSummonMonsterArrangeId] [bigint] NOT NULL,
	[targetSummonMonsterRadius] [bigint] NOT NULL,
	[targetSummonMonsterKillLimitTime] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL,
	[guildBuildingPointRewardId] [bigint] NOT NULL,
	[_targetDescription] [int] NOT NULL,
	[targetDescriptionKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildMissionQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildMissionQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[limitCount] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[completionItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildMissionQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildMissionQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildPointReward](
	[guildPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildSkill](
	[guildSkillId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildSkillAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildSkillAttr](
	[guildSkillId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildSkillLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildSkillLevel](
	[guildSkillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[requiredGuildContributionPoint] [int] NOT NULL,
	[requiredLaboratoryLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildSkillLevelAttrValue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildSkillLevelAttrValue](
	[guildSkillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildSupplySupportQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildSupplySupportQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[limitTime] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[cartId] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[guildBuildingPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL,
	[completionRewardableRadius] [float] NOT NULL,
	[completionGuildContributionPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildSupplySupportQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildSupplySupportQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildTerritory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildTerritory](
	[sceneName] [varchar](100) NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startRadius] [int] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildTerritoryNpc]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildTerritoryNpc](
	[npcId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_dialogue] [varchar](100) NOT NULL,
	[dialogueKey] [varchar](40) NOT NULL,
	[dialogueEnabled] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_GuildWeeklyObjective]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_GuildWeeklyObjective](
	[objectiveId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](20) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[completionMemberCount] [int] NOT NULL,
	[itemReward1Id] [bigint] NOT NULL,
	[itemReward2Id] [bigint] NOT NULL,
	[itemReward3Id] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Hideout]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Hideout](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
	[enterCount] [int] NOT NULL,
	[chargeCount] [int] NOT NULL,
	[chargeDia] [int] NOT NULL,
	[maxMemberCount] [int] NOT NULL,
	[waveCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[waveIntervalTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[rewardDuration] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[directEnterItemId] [int] NOT NULL,
	[paidRevivalDia] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[resultDelayTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_HideoutAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutClearRank]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutClearRank](
	[rank] [int] NOT NULL,
	[starCount] [int] NOT NULL,
 CONSTRAINT [pk_r_HideoutClearRank] PRIMARY KEY NONCLUSTERED 
(
	[rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutDifficulty](
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[recommendLevel] [int] NOT NULL,
	[exceptionalRewardItemId] [int] NOT NULL,
	[exceptionalRewardCount] [int] NOT NULL,
	[exceptionalRewardOwned] [bit] NOT NULL,
 CONSTRAINT [pk_r_HideoutDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutDifficultyAdditionalReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutDifficultyAdditionalReward](
	[difficulty] [int] NOT NULL,
	[rank] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_HideoutDifficultyAdditionalReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[rank] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutDifficultyBaseReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutDifficultyBaseReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_HideoutDifficultyBaseReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutDifficultyWaveArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutDifficultyWaveArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_HideoutDifficultyWaveArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[waveNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutPenalty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutPenalty](
	[rank] [int] NOT NULL,
	[revivalDelayTime] [int] NOT NULL,
 CONSTRAINT [pk_r_HideoutPenalty] PRIMARY KEY NONCLUSTERED 
(
	[rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HideoutSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HideoutSchedule](
	[scheduleId] [int] NOT NULL,
	[openTime] [int] NOT NULL,
 CONSTRAINT [pk_r_HideoutSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HolyWarQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HolyWarQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HolyWarQuestGloryLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HolyWarQuestGloryLevel](
	[gloryLevel] [int] NOT NULL,
	[requiredKillCount] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HolyWarQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HolyWarQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HolyWarQuestSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HolyWarQuestSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HonorPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HonorPointReward](
	[honorPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HonorShopProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HonorShopProduct](
	[productId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[requiredHonorPoint] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HuntingDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HuntingDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
	[consumeLakPerSec] [int] NOT NULL,
	[lakExpFactor] [float] NOT NULL,
	[lakGoldFactor] [float] NOT NULL,
	[teleportGoldPerFloor] [int] NOT NULL,
	[directEnterItemId] [int] NOT NULL,
	[defaultEnterFloor] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[paidRevivalDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HuntingDungeonFloor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HuntingDungeonFloor](
	[floor] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[recommendLevel] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[questNpcNameKey] [varchar](20) NOT NULL,
	[questNpcXPosition] [float] NOT NULL,
	[questNpcYPosition] [float] NOT NULL,
	[questNpcZPosition] [float] NOT NULL,
	[questNpcYRotation] [float] NOT NULL,
	[questNpcInteractionMaxRange] [float] NOT NULL,
	[questNpcPrefabName] [varchar](100) NOT NULL,
	[questNpcScale] [float] NOT NULL,
	[questNpcHeight] [int] NOT NULL,
	[questNpcDialogueKey] [varchar](20) NOT NULL,
	[questTitleKey] [varchar](20) NOT NULL,
	[questObjectiveKey] [varchar](20) NOT NULL,
	[questobjectiveMonsterCount] [int] NOT NULL,
	[questCompletionRewardExp] [int] NOT NULL,
	[questCompletionRewardGold] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[questNpcRadius] [float] NOT NULL,
	[questNpcCameraPivotY] [float] NOT NULL,
	[questNpcCameraUad] [float] NOT NULL,
	[questNpcCameraRal] [float] NOT NULL,
	[questNpcCameraZoom] [float] NOT NULL,
	[questNpcCameraTime] [float] NOT NULL,
	[questNpcSafetyzoneRadius] [float] NOT NULL,
 CONSTRAINT [pk_r_HuntingDungeonFloor] PRIMARY KEY NONCLUSTERED 
(
	[floor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HuntingDungeonFloorMapMonster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HuntingDungeonFloorMapMonster](
	[floor] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
 CONSTRAINT [pk_r_HuntingDungeonFloorMapMonster] PRIMARY KEY NONCLUSTERED 
(
	[floor] ASC,
	[monsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HuntingDungeonFloorMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HuntingDungeonFloorMonsterArrange](
	[floor] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[regenTime] [int] NOT NULL,
 CONSTRAINT [pk_r_HuntingDungeonFloorMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[floor] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HuntingDungeonFloorQuestRewardItem]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HuntingDungeonFloorQuestRewardItem](
	[floor] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_HuntingDungeonFloorQuestRewardItem] PRIMARY KEY NONCLUSTERED 
(
	[floor] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_HuntingDungeonPortal]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_HuntingDungeonPortal](
	[portalId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[exitXPosition] [float] NOT NULL,
	[exitYPosition] [float] NOT NULL,
	[exitZPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exitYRotation] [float] NOT NULL,
	[linkedPortalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_HuntingDungeonPortal] PRIMARY KEY NONCLUSTERED 
(
	[portalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBook]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBook](
	[illustratedBookId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](140) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[explorationPoint] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookAttr](
	[illustratedBookId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
	[grade] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookAttrGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookAttrGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookExplorationStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookExplorationStep](
	[stepNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[activationExplorationPoint] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookExplorationStepAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookExplorationStepAttr](
	[stepNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookExplorationStepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookExplorationStepReward](
	[stepNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_IllustratedBookType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_IllustratedBookType](
	[type] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[categoryId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementContent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementContent](
	[contentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[isAchievementDisplay] [bit] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
 CONSTRAINT [pk_r_ImprovementContent] PRIMARY KEY NONCLUSTERED 
(
	[contentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementContentAchievement]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementContentAchievement](
	[achievement] [int] NOT NULL,
	[achievementRate] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[colorCode] [varchar](10) NOT NULL,
 CONSTRAINT [pk_r_ImprovementContentAchievement] PRIMARY KEY NONCLUSTERED 
(
	[achievement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementContentAchievementLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementContentAchievementLevel](
	[contentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[achievementValue] [int] NOT NULL,
 CONSTRAINT [pk_r_ImprovementContentAchievementLevel] PRIMARY KEY NONCLUSTERED 
(
	[contentId] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementMainCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementMainCategory](
	[mainCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_ImprovementMainCategory] PRIMARY KEY NONCLUSTERED 
(
	[mainCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementMainCategoryContent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementMainCategoryContent](
	[mainCategoryId] [int] NOT NULL,
	[contentId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_ImprovementMainCategoryContent] PRIMARY KEY NONCLUSTERED 
(
	[mainCategoryId] ASC,
	[contentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementSubCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementSubCategory](
	[subCategoryId] [int] NOT NULL,
	[mainCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_ImprovementSubCategory] PRIMARY KEY NONCLUSTERED 
(
	[subCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ImprovementSubCategoryContent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ImprovementSubCategoryContent](
	[subCategoryId] [int] NOT NULL,
	[contentId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_ImprovementSubCategoryContent] PRIMARY KEY NONCLUSTERED 
(
	[subCategoryId] ASC,
	[contentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InAppProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InAppProduct](
	[inAppProductKey] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_InAppProduct] PRIMARY KEY NONCLUSTERED 
(
	[inAppProductKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InAppProductPrice]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InAppProductPrice](
	[inAppProductKey] [varchar](100) NOT NULL,
	[storeType] [int] NOT NULL,
	[currencyCode] [varchar](10) NOT NULL,
	[displayPrice] [varchar](10) NOT NULL,
 CONSTRAINT [pk_r_InAppProductPrice] PRIMARY KEY NONCLUSTERED 
(
	[inAppProductKey] ASC,
	[storeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWar]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWar](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[enterCount] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMemberCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[startGuideTitleKey] [varchar](20) NOT NULL,
	[startGuideContentKey] [varchar](20) NOT NULL,
	[monsterSpawnDelayTime] [int] NOT NULL,
	[monsterSpawnGuideTitleKey] [varchar](20) NOT NULL,
	[monsterSpawnGuideContentKey] [varchar](20) NOT NULL,
	[heroKillPoint] [int] NOT NULL,
	[buffBoxCreationInterval] [int] NOT NULL,
	[buffBoxCreationCount] [int] NOT NULL,
	[buffBoxXPosition] [float] NOT NULL,
	[buffBoxYPosition] [float] NOT NULL,
	[buffBoxZPosition] [float] NOT NULL,
	[buffBoxRadius] [float] NOT NULL,
	[buffBoxLifetime] [int] NOT NULL,
	[buffDuration] [int] NOT NULL,
	[buffCreationGuideTitleKey] [varchar](20) NOT NULL,
	[buffCreationGuideContentKey] [varchar](20) NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[buffBoxAcquisitionRange] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarBuffBox]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarBuffBox](
	[buffBoxId] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[offenseFactor] [float] NOT NULL,
	[defenseFactor] [float] NOT NULL,
	[hpRecoveryFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarBuffBox] PRIMARY KEY NONCLUSTERED 
(
	[buffBoxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarMonsterArrange](
	[arrangeNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarMonsterAttrFactor] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarOpenSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarOpenSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarOpenSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarRankingReward](
	[ranking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarRankingReward] PRIMARY KEY NONCLUSTERED 
(
	[ranking] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InfiniteWarStartPosition]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InfiniteWarStartPosition](
	[positionNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_InfiniteWarStartPosition] PRIMARY KEY NONCLUSTERED 
(
	[positionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InventoryCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InventoryCategory](
	[inventoryCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_InventoryCategory] PRIMARY KEY NONCLUSTERED 
(
	[inventoryCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_InventorySlotExtendRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_InventorySlotExtendRecipe](
	[slotCount] [int] NOT NULL,
	[dia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Item]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Item](
	[itemId] [int] NOT NULL,
	[itemType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[requiredMinHeroLevel] [int] NOT NULL,
	[requiredMaxHeroLevel] [int] NOT NULL,
	[saleable] [tinyint] NOT NULL,
	[saleGold] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[usingType] [int] NOT NULL,
	[usingRecommendationEnabled] [int] NOT NULL,
	[longValue1] [bigint] NOT NULL,
	[longValue2] [bigint] NOT NULL,
	[autoUsable] [bit] NOT NULL,
 CONSTRAINT [pk_r_Item] PRIMARY KEY NONCLUSTERED 
(
	[itemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemCompositionRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemCompositionRecipe](
	[itemId] [int] NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemCount] [int] NOT NULL,
	[gold] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemLuckyShop]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemLuckyShop](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[freePickCount] [int] NOT NULL,
	[freePickWaitingTime] [int] NOT NULL,
	[pick1TimeDia] [int] NOT NULL,
	[pick5TimeDia] [int] NOT NULL,
	[pick5TimeSpecialPickCount] [int] NOT NULL,
	[pick1TimeGoldRewardId] [bigint] NOT NULL,
	[pick5TimeGoldRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemLuckyShopNormalPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemLuckyShopNormalPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ItemLuckyShopNormalPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemLuckyShopSpecialPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemLuckyShopSpecialPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ItemLuckyShopSpecialPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemMainCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemMainCategory](
	[mainCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemReward](
	[itemRewardId] [bigint] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemSubCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemSubCategory](
	[mainCategoryId] [int] NOT NULL,
	[subCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ItemType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ItemType](
	[itemType] [int] NOT NULL,
	[maxCountPerInventorySlot] [int] NOT NULL,
	[mainCategoryId] [int] NOT NULL,
	[subCategoryId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Job]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Job](
	[jobId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[moveSpeed] [int] NOT NULL,
	[offenseType] [int] NOT NULL,
	[elementalId] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[walkMoveSpeed] [int] NOT NULL,
	[parentJobId] [int] NOT NULL,
 CONSTRAINT [pk_r_Job] PRIMARY KEY NONCLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobChainSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobChainSkill](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[chainSkillId] [int] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [int] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[castConditionStartTime] [float] NOT NULL,
	[castConditionEndTIme] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobChainSkillHit]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobChainSkillHit](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[chainSkillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[damageFactor] [float] NOT NULL,
	[acquireLak] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobChainSkillHitRune]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobChainSkillHitRune](
	[skillId] [int] NOT NULL,
	[chainSkillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[abnormalStateHitRate] [int] NOT NULL,
 CONSTRAINT [pk_r_JobChainSkillHitRune] PRIMARY KEY NONCLUSTERED 
(
	[skillId] ASC,
	[chainSkillId] ASC,
	[hitId] ASC,
	[runeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobChangeQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobChangeQuest](
	[questNo] [int] NOT NULL,
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](100) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[questNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[isTargetOwnNation] [bit] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[targetMonsterArrangeId] [bigint] NOT NULL,
	[targetGuildTerritoryXPosition] [float] NOT NULL,
	[targetGuildTerritoryYPosition] [float] NOT NULL,
	[targetGuildTerritoryZPosition] [float] NOT NULL,
	[targetGuildTerritoryRadius] [float] NOT NULL,
	[targetGuildMonsterArrangeId] [bigint] NOT NULL,
	[completionItemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_JobChangeQuest] PRIMARY KEY NONCLUSTERED 
(
	[questNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobChangeQuestDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobChangeQuestDifficulty](
	[questNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[isTargetPlaceGuildTerritory] [bit] NOT NULL,
 CONSTRAINT [pk_r_JobChangeQuestDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[questNo] ASC,
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobCommonSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobCommonSkill](
	[skillId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[formType] [int] NOT NULL,
	[isRequireTarget] [tinyint] NOT NULL,
	[castRange] [float] NOT NULL,
	[hitRange] [float] NOT NULL,
	[coolTime] [float] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [int] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[clientSkillIndex] [int] NOT NULL,
	[mentalStrengthDamage] [int] NOT NULL,
	[buffAbnormalStateId] [int] NOT NULL,
	[openRequiredMainQuestNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobLevel](
	[jobId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[maxHpAttrValueId] [bigint] NOT NULL,
	[physicalOffenseAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAttrValueId] [bigint] NOT NULL,
	[physicalDefenseAttrValueId] [bigint] NOT NULL,
	[magicalDefenseAttrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobLevelMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobLevelMaster](
	[level] [int] NOT NULL,
	[nextLevelUpExp] [bigint] NOT NULL,
	[inventorySlotAccCount] [int] NOT NULL,
	[restMaxExpRewardId] [bigint] NOT NULL,
	[cartMaxHpAttrValueId] [bigint] NOT NULL,
	[potionAttrMaxCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkill](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[formType] [int] NOT NULL,
	[isRequireTarget] [tinyint] NOT NULL,
	[castRange] [float] NOT NULL,
	[hitRange] [float] NOT NULL,
	[coolTime] [float] NOT NULL,
	[heroHitType] [int] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [int] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[ssStartDelay] [float] NOT NULL,
	[ssDuration] [float] NOT NULL,
	[castingMoveType] [int] NOT NULL,
	[castingMoveValue1] [int] NOT NULL,
	[castingMoveValue2] [int] NOT NULL,
	[autoPriorityGroup] [int] NOT NULL,
	[autoWeight] [int] NOT NULL,
	[clientSkillIndex] [int] NOT NULL,
	[buffAbnormalStateId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillHit]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillHit](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[damageFactor] [float] NOT NULL,
	[acquireLak] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillHitAbnormalState]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillHitAbnormalState](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[hitRate] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillHitRune]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillHitRune](
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[abnormalStateHitRate] [int] NOT NULL,
 CONSTRAINT [pk_r_JobSkillHitRune] PRIMARY KEY NONCLUSTERED 
(
	[skillId] ASC,
	[hitId] ASC,
	[runeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillLevel](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[battlePower] [bigint] NOT NULL,
	[physicalOffenseAmpAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAmpAttrValueId] [bigint] NOT NULL,
	[offensePointAttrValueId] [bigint] NOT NULL,
	[_summary] [varchar](100) NOT NULL,
	[summaryKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillLevelMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillLevelMaster](
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpRequiredHeroLevel] [int] NOT NULL,
	[nextLevelUpGold] [bigint] NOT NULL,
	[nextLevelUpItemId] [int] NOT NULL,
	[nextLevelUpItemCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillMaster](
	[skillId] [int] NOT NULL,
	[openRequiredMainQuestNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillRune]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillRune](
	[skillId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[elementalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemCount] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[baseDamageType] [int] NOT NULL,
	[effectDescriptionKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_JobSkillRune] PRIMARY KEY NONCLUSTERED 
(
	[skillId] ASC,
	[runeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_JobSkillRuneLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_JobSkillRuneLevel](
	[skillId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[offenseAmp] [int] NOT NULL,
	[offense] [int] NOT NULL,
	[effectDescArgumentCount] [int] NOT NULL,
	[effectDescValue1] [varchar](20) NOT NULL,
	[effectDescValue2] [varchar](20) NOT NULL,
	[effectDescValue3] [varchar](20) NOT NULL,
	[effectDescValue4] [varchar](20) NOT NULL,
	[effectDescValue5] [varchar](20) NOT NULL,
	[effectDescValue6] [varchar](20) NOT NULL,
	[effectDescValue7] [varchar](20) NOT NULL,
	[effectDescValue8] [varchar](20) NOT NULL,
	[effectDescValue9] [varchar](20) NOT NULL,
	[effectDescValue10] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_JobSkillRuneLevel] PRIMARY KEY NONCLUSTERED 
(
	[skillId] ASC,
	[runeNo] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LakEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LakEvent](
	[eventNo] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[lakFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_LakEvent] PRIMARY KEY NONCLUSTERED 
(
	[eventNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Language]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Language](
	[languageId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LevelRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LevelRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LevelUpRewardEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LevelUpRewardEntry](
	[entryId] [int] NOT NULL,
	[level] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LevelUpRewardItem]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LevelUpRewardItem](
	[entryId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LimitationGift]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LimitationGift](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[scheduleTextKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LimitationGiftAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LimitationGiftAvailableReward](
	[scheduleId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_LimitationGiftAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LimitationGiftReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LimitationGiftReward](
	[scheduleId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_LimitationGiftReward] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LimitationGiftRewardDayOfWeek]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LimitationGiftRewardDayOfWeek](
	[dayOfWeek] [int] NOT NULL,
 CONSTRAINT [pk_r_LimitationGiftRewardDayOfWeek] PRIMARY KEY NONCLUSTERED 
(
	[dayOfWeek] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LimitationGiftRewardSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LimitationGiftRewardSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_LimitationGiftRewardSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Location]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Location](
	[locationId] [int] NOT NULL,
	[defaultBgm] [varchar](40) NOT NULL,
	[minimapMagnification] [float] NOT NULL,
	[defaultBgmVolume] [float] NOT NULL,
	[accelerationEnabled] [bit] NOT NULL,
 CONSTRAINT [pk_r_Location] PRIMARY KEY NONCLUSTERED 
(
	[locationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_LocationArea]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_LocationArea](
	[locationId] [int] NOT NULL,
	[areaNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[bgm] [varchar](40) NOT NULL,
	[isMinimapDisplay] [bit] NOT NULL,
	[minimapX] [int] NOT NULL,
	[minimapY] [int] NOT NULL,
	[minimapTextColor] [varchar](20) NOT NULL,
	[bgmVolume] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGear]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGear](
	[mainGearId] [int] NOT NULL,
	[mainGearType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[jobId] [int] NOT NULL,
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[saleGold] [int] NOT NULL,
	[prefabName] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearBaseAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearBaseAttr](
	[mainGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearBaseAttrEnchantLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearBaseAttrEnchantLevel](
	[mainGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[enchantLevel] [bigint] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[r_MainGearCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[slotIndex] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearDisassembleAvailableResultEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearDisassembleAvailableResultEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearDisassembleResultCountPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearDisassembleResultCountPoolEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearDisassembleResultPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearDisassembleResultPoolEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearEnchantLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearEnchantLevel](
	[enchantLevel] [int] NOT NULL,
	[nextSuccessRate] [int] NOT NULL,
	[penaltyPreventEnabled] [tinyint] NOT NULL,
	[step] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearEnchantLevelSet]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearEnchantLevelSet](
	[setNo] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredTotalEnchantLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearEnchantLevelSetAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearEnchantLevelSetAttr](
	[setNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearEnchantStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearEnchantStep](
	[step] [int] NOT NULL,
	[nextEnchantMaterialItemId] [int] NOT NULL,
	[nextEnchantPenaltyPreventItemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearOptionAttrGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearOptionAttrGrade](
	[attrGrade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearOptionAttrPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearOptionAttrPoolEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[attrGrade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearQuality]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearQuality](
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearRefinementRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearRefinementRecipe](
	[protectionCount] [int] NOT NULL,
	[protectionItemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearSet]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearSet](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearSetAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearSetAttr](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearTier]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearTier](
	[tier] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[weaponBoxItemId] [int] NOT NULL,
	[armorBoxItemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainGearType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainGearType](
	[mainGearType] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainMenu]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainMenu](
	[menuId] [int] NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[popupName] [varchar](100) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuest](
	[mainQuestNo] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[_title] [nvarchar](80) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[startTextKey] [varchar](20) NOT NULL,
	[targetTextKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetAcquisitionRate] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[completionTextKey] [varchar](20) NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[targetDungeonId] [int] NOT NULL,
	[cartId] [int] NOT NULL,
	[transformationMonsterId] [int] NOT NULL,
	[transformationLifetime] [int] NOT NULL,
	[transformationRestored] [bit] NOT NULL,
	[targetContentId] [int] NOT NULL,
 CONSTRAINT [pk_r_MainQuest] PRIMARY KEY NONCLUSTERED 
(
	[mainQuestNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestCompletionDialogue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestCompletionDialogue](
	[mainQuestNo] [int] NOT NULL,
	[dialogueNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_MainQuestCompletionDialogue] PRIMARY KEY NONCLUSTERED 
(
	[mainQuestNo] ASC,
	[dialogueNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeon](
	[dungeonId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[guideDisplayInterval] [int] NOT NULL,
	[completionExitPositionEnabled] [tinyint] NOT NULL,
	[completionExitxPosition] [float] NOT NULL,
	[completionExityPosition] [float] NOT NULL,
	[completionExitzPosition] [float] NOT NULL,
	[completionExityRotation] [float] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[locationId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonGuide]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonGuide](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[no] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_content] [varchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonMonsterArrange](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[summonMinHpFactor] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonObstacle](
	[dungeonId] [int] NOT NULL,
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonStep](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterArrangeNo] [int] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[directingDuration] [int] NOT NULL,
	[directingStartyRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonSummon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonSummon](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[summonNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonWave](
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[_objectiveTitle] [nvarchar](80) NOT NULL,
	[objectiveTitleKey] [varchar](20) NOT NULL,
	[_objectiveDescription] [nvarchar](80) NOT NULL,
	[objectiveDescriptionKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_MainQuestDungeonWave] PRIMARY KEY NONCLUSTERED 
(
	[dungeonId] ASC,
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestDungeonWaveArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestDungeonWaveArrange](
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[spawnXPosition] [float] NOT NULL,
	[spawnYPosition] [float] NOT NULL,
	[spawnZPosition] [float] NOT NULL,
	[spawnRadius] [float] NOT NULL,
	[spawnYRotationType] [int] NOT NULL,
	[spawnYRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_MainQuestDungeonWaveArrange] PRIMARY KEY NONCLUSTERED 
(
	[dungeonId] ASC,
	[waveNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestObject]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestObject](
	[objectId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[interactionDuration] [float] NOT NULL,
	[continentId] [int] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL,
 CONSTRAINT [pk_r_QuestObject] PRIMARY KEY NONCLUSTERED 
(
	[objectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestObjectArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestObjectArrange](
	[objectId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_QuestObjectArrange] PRIMARY KEY NONCLUSTERED 
(
	[objectId] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestReward](
	[mainQuestNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[subGearId] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[mountId] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestStartDialogue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestStartDialogue](
	[mainQuestNo] [int] NOT NULL,
	[dialogueNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_MainQuestStartDialogue] PRIMARY KEY NONCLUSTERED 
(
	[mainQuestNo] ASC,
	[dialogueNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MainQuestStartDialogueEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MainQuestStartDialogueEntry](
	[nationId] [int] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[_content] [nvarchar](400) NOT NULL,
	[contentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_MainQuestStartDialogueEntry] PRIMARY KEY NONCLUSTERED 
(
	[nationId] ASC,
	[mainQuestNo] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Menu]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Menu](
	[menuId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[menuGroup] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MenuContent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MenuContent](
	[contentId] [int] NOT NULL,
	[menuId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[isDisplay] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MenuContentOpenPreview]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MenuContentOpenPreview](
	[previewNo] [int] NOT NULL,
	[contentId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MenuContentTutorialStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MenuContentTutorialStep](
	[contentId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[textKey] [varchar](40) NOT NULL,
	[textxPosition] [float] NOT NULL,
	[textyPosition] [float] NOT NULL,
	[arrowxPosition] [float] NOT NULL,
	[arrowyPosition] [float] NOT NULL,
	[arrowZRotation] [int] NOT NULL,
	[clickxPosition] [float] NOT NULL,
	[clickyPosition] [float] NOT NULL,
	[clickWidth] [int] NOT NULL,
	[clickHeight] [int] NOT NULL,
	[effectName] [varchar](100) NOT NULL,
	[effectxPosition] [float] NOT NULL,
	[effectyPosition] [float] NOT NULL,
	[effectWidth] [int] NOT NULL,
	[effectHeight] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MoneyBuff]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MoneyBuff](
	[buffId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[lifetime] [int] NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [int] NOT NULL,
 CONSTRAINT [pk_r_MoneyBuff] PRIMARY KEY NONCLUSTERED 
(
	[buffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MoneyBuffAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MoneyBuffAttr](
	[buffId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_MoneyBuffAttr] PRIMARY KEY NONCLUSTERED 
(
	[buffId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Monster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Monster](
	[monsterId] [int] NOT NULL,
	[monsterCharacterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[level] [int] NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[moveSpeed] [int] NOT NULL,
	[battleMoveSpeed] [int] NOT NULL,
	[skillCastingInterval] [float] NOT NULL,
	[maxHp] [int] NOT NULL,
	[physicalOffense] [int] NOT NULL,
	[dropCountPoolId] [int] NOT NULL,
	[dropObjectPoolId] [int] NOT NULL,
	[questAreaRadius] [float] NOT NULL,
	[exp] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[visibilityRange] [float] NOT NULL,
	[patrolRange] [int] NOT NULL,
	[activeAreaRadius] [float] NOT NULL,
	[moveEnabled] [tinyint] NOT NULL,
	[attackEnabled] [tinyint] NOT NULL,
	[attackStopRange] [int] NOT NULL,
	[returnCompletionRadius] [float] NOT NULL,
	[tamingEnabled] [tinyint] NOT NULL,
	[mentalStrength] [int] NOT NULL,
	[stealSuccessRate] [int] NOT NULL,
	[stealItemRewardId] [bigint] NOT NULL,
	[stealRadius] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterAbnormalStateDetail]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterAbnormalStateDetail](
	[monsterAbnormalStateDetailId] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
 CONSTRAINT [pk_r_MonsterAbnormalStateDetail] PRIMARY KEY NONCLUSTERED 
(
	[monsterAbnormalStateDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterArrange](
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterId] [int] NOT NULL,
	[_description] [nvarchar](80) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterAttr](
	[monsterId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_r_MonsterAttr] PRIMARY KEY NONCLUSTERED 
(
	[monsterId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterCharacter]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterCharacter](
	[monsterCharacterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[prefabName] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterKillExpFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterKillExpFactor](
	[levelGap] [int] NOT NULL,
	[expFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterLevelPenaltyEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterLevelPenaltyEntry](
	[levelGap] [int] NOT NULL,
	[expRate] [int] NOT NULL,
 CONSTRAINT [pk_r_MonsterLevelPenaltyEntry] PRIMARY KEY NONCLUSTERED 
(
	[levelGap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterOwnSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterOwnSkill](
	[monsterId] [int] NOT NULL,
	[skillId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterSkill](
	[skillId] [int] NOT NULL,
	[baseDamageType] [int] NOT NULL,
	[type] [int] NOT NULL,
	[elementalId] [int] NOT NULL,
	[formType] [int] NOT NULL,
	[isRequiredTarget] [tinyint] NOT NULL,
	[castRange] [float] NOT NULL,
	[hitRange] [float] NOT NULL,
	[coolTime] [float] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [float] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[ssStartDelay] [float] NOT NULL,
	[ssDuration] [float] NOT NULL,
	[autoPriorityGroup] [int] NOT NULL,
	[autoWeight] [int] NOT NULL,
	[sound] [varchar](100) NOT NULL,
	[soundVolume] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MonsterSkillHit]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MonsterSkillHit](
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[damageFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Mount]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Mount](
	[mountId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[moveSpeed] [int] NOT NULL,
	[_acquisitionText] [varchar](100) NOT NULL,
	[acquisitionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountAwakeningLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountAwakeningLevel](
	[mountId] [int] NOT NULL,
	[awakeningLevel] [int] NOT NULL,
	[nextLevelUpRequiredAwakeningExp] [int] NOT NULL,
 CONSTRAINT [pk_r_MountAwakeningLevel] PRIMARY KEY NONCLUSTERED 
(
	[mountId] ASC,
	[awakeningLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountAwakeningLevelMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountAwakeningLevelMaster](
	[awakeningLevel] [int] NOT NULL,
	[unequippedAttrFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_MountAwakeningLevelMaster] PRIMARY KEY NONCLUSTERED 
(
	[awakeningLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGear]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGear](
	[mountGearId] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[type] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[maxHpAttrValueId] [bigint] NOT NULL,
	[physicalOffenseAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAttrValueId] [bigint] NOT NULL,
	[physicalDefenseAttrValueId] [bigint] NOT NULL,
	[magicalDefenseAttrValueId] [bigint] NOT NULL,
	[saleGold] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearOptionAttrGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearOptionAttrGrade](
	[attrGrade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearOptionAttrPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearOptionAttrPoolEntry](
	[mountGearId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[attrGrade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearPickBoxRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearPickBoxRecipe](
	[itemId] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[gold] [int] NOT NULL,
	[owned] [tinyint] NOT NULL,
	[materialItem1Id] [int] NOT NULL,
	[materialItem1Count] [int] NOT NULL,
	[materialItem2Id] [int] NOT NULL,
	[materialItem2Count] [int] NOT NULL,
	[materialItem3Id] [int] NOT NULL,
	[materialItem3Count] [int] NOT NULL,
	[materialItem4Id] [int] NOT NULL,
	[materialItem4Count] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearQuality]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearQuality](
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearSlot]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearSlot](
	[slotIndex] [int] NOT NULL,
	[openHeroLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountGearType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountGearType](
	[type] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[slotIndex] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountLevel](
	[mountId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[maxHpAttrValueId] [bigint] NOT NULL,
	[physicalOffenseAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAttrValueId] [bigint] NOT NULL,
	[physicalDefenseAttrValueId] [bigint] NOT NULL,
	[magicalDefenseAttrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountLevelMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountLevelMaster](
	[level] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[qualityLevel] [int] NOT NULL,
	[nextLevelUpRequiredSatiety] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountPotionAttrCount]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountPotionAttrCount](
	[count] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_MountPotionAttrCount] PRIMARY KEY NONCLUSTERED 
(
	[count] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountQuality]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountQuality](
	[mountId] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[potionAttrMaxCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MountQualityMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MountQualityMaster](
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MysteryBoxGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MysteryBoxGrade](
	[grade] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MysteryBoxGradePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MysteryBoxGradePoolEntry](
	[poolId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MysteryBoxQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MysteryBoxQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[defaultBoxGradePoolId] [int] NOT NULL,
	[vipBoostMinPickCount] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_MysteryBoxQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_MysteryBoxQuestReward](
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Nation]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Nation](
	[nationId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationDonationEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationDonationEntry](
	[entryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
	[nationFundRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationFundReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationFundReward](
	[nationFundRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationNoblesse]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationNoblesse](
	[noblesseId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[nationWarDeclarationEnabled] [tinyint] NOT NULL,
	[nationCallEnabled] [tinyint] NOT NULL,
	[nationWarCallEnabled] [tinyint] NOT NULL,
	[nationWarConvergingAttackEnabled] [tinyint] NOT NULL,
	[nationAllianceEnabled] [bit] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationNoblesseAppointmentAuthority]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationNoblesseAppointmentAuthority](
	[noblesseId] [int] NOT NULL,
	[targetNoblesseId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationNoblesseAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationNoblesseAttr](
	[noblesseId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWar]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWar](
	[declarationAvailableServerOpenDaycount] [int] NOT NULL,
	[declarationStartTime] [int] NOT NULL,
	[declarationEndTime] [int] NOT NULL,
	[declarationRequiredNationFund] [int] NOT NULL,
	[weeklyDeclarationMaxCount] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[resultDisplayEndTime] [int] NOT NULL,
	[joinPopupDisplayDuration] [int] NOT NULL,
	[offenseStartContinentId] [int] NOT NULL,
	[offenseStartXPosition] [float] NOT NULL,
	[offenseStartYPosition] [float] NOT NULL,
	[offenseStartZPosition] [float] NOT NULL,
	[offenseStartYRotationType] [int] NOT NULL,
	[offenseStartYRotation] [float] NOT NULL,
	[offenseStartRadius] [float] NOT NULL,
	[defenseStartContinentId] [int] NOT NULL,
	[defenseStartXPosition] [float] NOT NULL,
	[defenseStartYPosition] [float] NOT NULL,
	[defenseStartZPosition] [float] NOT NULL,
	[defenseStartYRotationType] [int] NOT NULL,
	[defenseStartYRotation] [float] NOT NULL,
	[defenseStartRadius] [float] NOT NULL,
	[freeTransmissionCount] [int] NOT NULL,
	[nationCallCount] [int] NOT NULL,
	[nationCallCoolTime] [int] NOT NULL,
	[nationCallLifetime] [int] NOT NULL,
	[nationCallRadius] [float] NOT NULL,
	[convergingAttackCount] [int] NOT NULL,
	[convergingAttackCoolTime] [int] NOT NULL,
	[winNationItemRewardId1] [bigint] NOT NULL,
	[winNationItemRewardId2] [bigint] NOT NULL,
	[loseNationItemRewardId1] [bigint] NOT NULL,
	[loseNationItemRewardId2] [bigint] NOT NULL,
	[winNationExploitPointRewardId] [bigint] NOT NULL,
	[loseNationExploitPointRewardId] [bigint] NOT NULL,
	[luckyRewardHighRanking] [int] NOT NULL,
	[luckyRewardLowRanking] [int] NOT NULL,
	[luckyRewardHeroCount] [int] NOT NULL,
	[luckyItemRewardId] [bigint] NOT NULL,
	[convergingAttackLifeTime] [int] NOT NULL,
	[winNationAllianceItemRewardId] [bigint] NOT NULL,
	[loseNationAllianceItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarAvailableDayOfWeek]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarAvailableDayOfWeek](
	[dayOfWeek] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarExpReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarExpReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarHeroObjectiveEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarHeroObjectiveEntry](
	[entryNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[objectiveCount] [int] NOT NULL,
	[rewardType] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
	[ownDiaRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarMonsterArrange](
	[arrangeId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[type] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[nationWarNpcId] [int] NOT NULL,
	[regenTime] [int] NOT NULL,
	[transmissionxPosition] [float] NOT NULL,
	[transmissionyPosition] [float] NOT NULL,
	[transmissionzPosition] [float] NOT NULL,
	[transmissionRadius] [float] NOT NULL,
	[transmissionYRotationType] [int] NOT NULL,
	[transmissionyRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarNpc]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarNpc](
	[npcId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](100) NOT NULL,
	[_nick] [varchar](100) NOT NULL,
	[nickKey] [varchar](100) NOT NULL,
	[_dialogue] [int] NOT NULL,
	[dialogueKey] [varchar](100) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarPaidTransmission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarPaidTransmission](
	[transmissionCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarPointReward](
	[ratingDifference] [int] NOT NULL,
	[winNationWarPoint] [int] NOT NULL,
	[loseNationWarPoint] [int] NOT NULL,
 CONSTRAINT [pk_r_NationWarPointReward] PRIMARY KEY NONCLUSTERED 
(
	[ratingDifference] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarRankingReward](
	[ranking] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarRevivalPoint]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarRevivalPoint](
	[revivalPointId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[priority] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarRevivalPointActivationCondition]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarRevivalPointActivationCondition](
	[revivalPointId] [int] NOT NULL,
	[arrangeId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NationWarTransmissionExit]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NationWarTransmissionExit](
	[npcId] [int] NOT NULL,
	[exitNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](100) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Npc]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Npc](
	[npcId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_nick] [nvarchar](20) NOT NULL,
	[nickKey] [varchar](20) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[_dialogue] [nvarchar](20) NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[soundName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_Npc] PRIMARY KEY NONCLUSTERED 
(
	[npcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NpcShop]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NpcShop](
	[shopId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[npcId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NpcShopCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NpcShopCategory](
	[shopId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NpcShopProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NpcShopProduct](
	[productId] [int] NOT NULL,
	[shopId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_NpcVisibleBoundary]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_NpcVisibleBoundary](
	[npcId] [int] NOT NULL,
	[startCompletedMainQuestNo] [int] NOT NULL,
	[endCompletedMainQuestNo] [int] NOT NULL,
 CONSTRAINT [pk_r_NpcVisibleBoundary] PRIMARY KEY NONCLUSTERED 
(
	[npcId] ASC,
	[startCompletedMainQuestNo] ASC,
	[endCompletedMainQuestNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Open7DayEventDay]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Open7DayEventDay](
	[day] [int] NOT NULL,
 CONSTRAINT [pk_r_Open7DayEventDay] PRIMARY KEY NONCLUSTERED 
(
	[day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Open7DayEventMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Open7DayEventMission](
	[missionId] [int] NOT NULL,
	[day] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetValue] [bigint] NOT NULL,
 CONSTRAINT [pk_r_Open7DayEventMission] PRIMARY KEY NONCLUSTERED 
(
	[missionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Open7DayEventMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Open7DayEventMissionReward](
	[missionId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_Open7DayEventMissionReward] PRIMARY KEY NONCLUSTERED 
(
	[missionId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Open7DayEventProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Open7DayEventProduct](
	[productId] [int] NOT NULL,
	[day] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
 CONSTRAINT [pk_r_Open7DayEventProduct] PRIMARY KEY NONCLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OpenGiftReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OpenGiftReward](
	[day] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OrdealQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OrdealQuest](
	[questNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[availableRewardItemId] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_OrdealQuest] PRIMARY KEY NONCLUSTERED 
(
	[questNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX],
 CONSTRAINT [uniq_r_OrdealQuest__requiredHeroLevel] UNIQUE NONCLUSTERED 
(
	[requiredHeroLevel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_DATA]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OrdealQuestMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OrdealQuestMission](
	[questNo] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[autoCompletionRequiredTime] [int] NOT NULL,
	[availableRewardItemId] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_OrdealQuestMission] PRIMARY KEY NONCLUSTERED 
(
	[questNo] ASC,
	[slotIndex] ASC,
	[missionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OsirisRoom]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OsirisRoom](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[waveInterval] [int] NOT NULL,
	[monsterSpawnInterval] [int] NOT NULL,
	[monsterSpawnXPosition] [float] NOT NULL,
	[monsterSpawnYPosition] [float] NOT NULL,
	[monsterSpawnZPosition] [float] NOT NULL,
	[monsterSpawnYRotation] [float] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OsirisRoomAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OsirisRoomAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_OsirisRoomAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OsirisRoomDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OsirisRoomDifficulty](
	[difficulty] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
 CONSTRAINT [pk_r_OsirisRoomDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OsirisRoomDifficultyWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OsirisRoomDifficultyWave](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
 CONSTRAINT [pk_r_OsirisRoomDifficultyWave] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OsirisRoomMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OsirisRoomMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[killGoldRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_OsirisRoomMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[waveNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_OwnDiaReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_OwnDiaReward](
	[ownDiaRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PaidImmediateRevival]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PaidImmediateRevival](
	[revivalCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PartyAdventureEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PartyAdventureEntry](
	[entryId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_PartyAdventureEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PartyBuff]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PartyBuff](
	[memberCount] [int] NOT NULL,
	[expFactor] [float] NOT NULL,
	[goldFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_PartyBuff] PRIMARY KEY NONCLUSTERED 
(
	[memberCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PartyExpFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PartyExpFactor](
	[memberCount] [int] NOT NULL,
	[expFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PickPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PickPoolEntry](
	[poolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[type] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[mountGearId] [int] NOT NULL,
	[mountGearOwned] [tinyint] NOT NULL,
	[creatureCardId] [int] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[creatureId] [int] NOT NULL,
 CONSTRAINT [pk_r_PickPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[poolId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Portal]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Portal](
	[portalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[exitxPosition] [float] NOT NULL,
	[exityPosition] [float] NOT NULL,
	[exitzPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exityRotation] [float] NOT NULL,
	[linkedPortalId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PotionAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PotionAttr](
	[potionAttrId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[incAttrValueId] [bigint] NOT NULL,
	[requiredItemId] [int] NOT NULL,
 CONSTRAINT [pk_r_PotionAttr] PRIMARY KEY NONCLUSTERED 
(
	[potionAttrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX],
 CONSTRAINT [uniq_r_PotionAttr__attrId] UNIQUE NONCLUSTERED 
(
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_DATA]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Present]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Present](
	[presentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredVipLevel] [int] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[displayCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
	[popularityPoint] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[isMessageSend] [bit] NOT NULL,
	[messageTextKey] [varchar](20) NOT NULL,
	[isEffectDisplay] [bit] NOT NULL,
	[effectPrefabName] [varchar](100) NOT NULL,
 CONSTRAINT [pk_r_Present] PRIMARY KEY NONCLUSTERED 
(
	[presentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValor](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[dailyFreeRefreshCount] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[guideImageName] [nvarchar](20) NOT NULL,
	[startGuideTitleKey] [varchar](20) NOT NULL,
	[startGuideContentKey] [varchar](20) NOT NULL,
	[buffBoxCreationGuideTitleKey] [varchar](20) NOT NULL,
	[buffBoxCreationGuideContentKey] [varchar](20) NOT NULL,
	[buffBoxCreationInterval] [int] NOT NULL,
	[buffBoxLifeTime] [int] NOT NULL,
	[buffDuration] [int] NOT NULL,
	[failureRewardSoulPowder] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[buffBoxCreationTime] [int] NOT NULL,
	[dailyPaidRefreshCount] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorBossMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorBossMonsterArrange](
	[proofOfValorBossMonsterArrangeId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[isSpecial] [tinyint] NOT NULL,
	[starGrade] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[creatureCardPoolId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[rewardSoulPowder] [int] NOT NULL,
	[specialRewardSoulPowder] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorBuffBox]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorBuffBox](
	[buffBoxId] [int] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[offenseFactor] [int] NOT NULL,
	[physicalDefenseFactor] [int] NOT NULL,
	[hpRecoveryFactor] [int] NOT NULL,
	[useGuideTitleKey] [varchar](40) NOT NULL,
	[useGuideContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorBuffBoxArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorBuffBoxArrange](
	[arrangeId] [int] NOT NULL,
	[buffBoxId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[acquisitionRange] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorClearGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorClearGrade](
	[clearGrade] [int] NOT NULL,
	[minRemainTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorCreatureCardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorCreatureCardPoolEntry](
	[creatureCardPoolId] [int] NOT NULL,
	[entryId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorMonsterAttrFactor](
	[heroLevel] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorNormalMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorNormalMonsterArrange](
	[proofOfValorBossMonsterArrangeId] [int] NOT NULL,
	[proofOfValorNormalMonsterArrangeId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorPaidRefresh]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorPaidRefresh](
	[refreshCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorRefreshSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorRefreshSchedule](
	[scheduleId] [int] NOT NULL,
	[refreshTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProofOfValorReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProofOfValorReward](
	[heroLevel] [int] NOT NULL,
	[successExpRewardId] [bigint] NOT NULL,
	[failureExpRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProspectQuestOwnerReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProspectQuestOwnerReward](
	[targetLevelId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ProspectQuestOwnerReward] PRIMARY KEY NONCLUSTERED 
(
	[targetLevelId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ProspectQuestTargetReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ProspectQuestTargetReward](
	[targetLevelId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_ProspectQuestTargetReward] PRIMARY KEY NONCLUSTERED 
(
	[targetLevelId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_PvpExploit]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_PvpExploit](
	[levelGap] [int] NOT NULL,
	[killExploitPointRewardId] [bigint] NOT NULL,
	[assistExploitPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_QuickMenu]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_QuickMenu](
	[menuId] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[itemType] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Rank]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Rank](
	[rankNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[requiredExploitPoint] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankActiveSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankActiveSkill](
	[skillId] [int] NOT NULL,
	[requiredRankNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[coolTime] [int] NOT NULL,
	[castRange] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankActiveSkillLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankActiveSkillLevel](
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[_effectDescription] [nvarchar](40) NOT NULL,
	[effectDescriptionKey] [varchar](40) NOT NULL,
	[nextLevelUpRequiredGold] [int] NOT NULL,
	[nextLevelUpRequiredItemId] [int] NOT NULL,
	[nextLevelUpRequiredItemCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankAttr](
	[rankNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankPassiveSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankPassiveSkill](
	[skillId] [int] NOT NULL,
	[requiredRankNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](30) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankPassiveSkillAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankPassiveSkillAttr](
	[skillId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankPassiveSkillAttrLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankPassiveSkillAttrLevel](
	[skillId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankPassiveSkillLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankPassiveSkillLevel](
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[_effectDescription] [varchar](100) NOT NULL,
	[effectDescriptionKey] [varchar](30) NOT NULL,
	[nextLevelUpRequiredGold] [int] NOT NULL,
	[nextLevelUpRequiredSpiritStone] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RankReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RankReward](
	[rankNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ReadyMadeGear]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ReadyMadeGear](
	[readyMadeGearId] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[level] [int] NOT NULL,
	[royalType] [int] NOT NULL,
 CONSTRAINT [pk_r_ReadyMadeGear] PRIMARY KEY NONCLUSTERED 
(
	[readyMadeGearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ReadyMadeGearOptionAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ReadyMadeGearOptionAttr](
	[readyMadeGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
	[optionIndex] [int] NOT NULL,
 CONSTRAINT [pk_r_ReadyMadeGearOptionAttr] PRIMARY KEY NONCLUSTERED 
(
	[readyMadeGearId] ASC,
	[optionIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RechargeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RechargeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredUnOwnDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RechargeEventReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RechargeEventReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RechargeEventReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RecommendBattlePowerLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RecommendBattlePowerLevel](
	[level] [int] NOT NULL,
	[sRankBattlePower] [bigint] NOT NULL,
	[aRankBattlePower] [bigint] NOT NULL,
	[bRankBattlePower] [bigint] NOT NULL,
	[cRankBattlePower] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RecommendBattlePowerLevel] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RestRewardTime]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RestRewardTime](
	[restTime] [int] NOT NULL,
	[requiredGold] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Retrieval]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Retrieval](
	[retrievalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[rewardDisplayType] [int] NOT NULL,
	[goldRetrievalTextKey] [varchar](20) NOT NULL,
	[goldRetrievalRequiredGold] [bigint] NOT NULL,
	[diaRetrievalTextKey] [varchar](20) NOT NULL,
	[diaRetrievalRequiredDia] [int] NOT NULL,
 CONSTRAINT [pk_r_Retrieval] PRIMARY KEY NONCLUSTERED 
(
	[retrievalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RetrievalReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RetrievalReward](
	[retrievalId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[goldExpRewardId] [bigint] NOT NULL,
	[goldItemRewardId] [bigint] NOT NULL,
	[diaExpRewardId] [bigint] NOT NULL,
	[diaItemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RetrievalReward] PRIMARY KEY NONCLUSTERED 
(
	[retrievalId] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RookieGift]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RookieGift](
	[giftNo] [int] NOT NULL,
	[waitingTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RookieGiftReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RookieGiftReward](
	[giftNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaim]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaim](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[freeEnterCount] [int] NOT NULL,
	[enterRequiredItemId] [int] NOT NULL,
	[enterMemberCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[debuffAreaActivationStepNo] [int] NOT NULL,
	[debuffAreaDeactivationStepNo] [int] NOT NULL,
	[debuffAreaXPosition] [float] NOT NULL,
	[debuffAreaYPosition] [float] NOT NULL,
	[debuffAreaZPosition] [float] NOT NULL,
	[debuffAreaYRotation] [float] NOT NULL,
	[debuffAreaWidth] [int] NOT NULL,
	[debuffAreaHeight] [int] NOT NULL,
	[debuffAreaOffenseFactor] [float] NOT NULL,
	[summonMonsterHpRecoveryInterval] [int] NOT NULL,
	[summonMonsterHpRecoveryGuideImageName] [varchar](100) NOT NULL,
	[summonMonsterHpRecoveryGuideTitleKey] [varchar](20) NOT NULL,
	[summonMonsterHpRecoveryGuideContentKey] [varchar](20) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[summonMinHpFactor] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimMonsterAttrFactor] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimMonsterTerminatorRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimMonsterTerminatorRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimMonsterTerminatorRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimObjectArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimObjectArrange](
	[stepNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[objectInteractionDuration] [float] NOT NULL,
	[objectInteractionMaxRange] [float] NOT NULL,
	[objectScale] [float] NOT NULL,
	[objectHeight] [int] NOT NULL,
	[objectRadius] [float] NOT NULL,
	[objectInteractionTextKey] [varchar](20) NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimObjectArrange] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimObstacle] PRIMARY KEY NONCLUSTERED 
(
	[obstacleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimOpenSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimOpenSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimOpenSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimPartyVolunteerRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimPartyVolunteerRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimPartyVolunteerRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimPortal]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimPortal](
	[portalId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[exitXPosition] [float] NOT NULL,
	[exitYPosition] [float] NOT NULL,
	[exitZPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exitYRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimPortal] PRIMARY KEY NONCLUSTERED 
(
	[portalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimRandomRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimRandomRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimRandomRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimRevivalPoint]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimRevivalPoint](
	[revivalPointId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimRevivalPoint] PRIMARY KEY NONCLUSTERED 
(
	[revivalPointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimStep](
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[activationPortalId] [int] NOT NULL,
	[deactivationPortalId] [int] NOT NULL,
	[revivalPointId] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimStep] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimStepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimStepReward](
	[stepNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimStepReward] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimStepWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimStepWave](
	[stepNo] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetType] [int] NOT NULL,
	[targetArrangeKey] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimStepWave] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC,
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimStepWaveSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimStepWaveSkill](
	[stepNo] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[castingInterval] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[transformationMonsterId] [int] NOT NULL,
	[transformationLifetime] [int] NOT NULL,
	[objectPrefabName] [varchar](100) NOT NULL,
	[objectInteractionDuration] [float] NOT NULL,
	[objectInteractionMaxRange] [float] NOT NULL,
	[objectScale] [float] NOT NULL,
	[objectHeight] [int] NOT NULL,
	[objectRadius] [float] NOT NULL,
	[objectInteractionTextKey] [varchar](20) NOT NULL,
	[objectLifetime] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimStepWaveSkill] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC,
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimSummonMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimSummonMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[summonNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[bossMonsterHpRecoveryFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimSummonMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeKey] ASC,
	[summonNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimTrap]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimTrap](
	[trapId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[damage] [int] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimTrap] PRIMARY KEY NONCLUSTERED 
(
	[trapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimUltimateAtackKingRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimUltimateAtackKingRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimUltimateAtackKingRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuinsReclaimUltimateAttackKingRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuinsReclaimUltimateAttackKingRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_RuinsReclaimUltimateAttackKingRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_RuneDisassembleResult]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_RuneDisassembleResult](
	[itemId] [int] NOT NULL,
	[resultItemId] [int] NOT NULL,
	[resultItemCount] [int] NOT NULL,
	[resultItemOwned] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SafeTimeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SafeTimeEvent](
	[requiredAutoDuration] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SceneryQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SceneryQuest](
	[questId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[waitingTime] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ScheduleNotice]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ScheduleNotice](
	[noticeId] [int] NOT NULL,
	[beforeStartNoticeTime] [int] NOT NULL,
	[beforeStartNoticeKey] [varchar](20) NOT NULL,
	[startNoticeKey] [varchar](20) NOT NULL,
	[endNoticeKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_ScheduleNotice] PRIMARY KEY NONCLUSTERED 
(
	[noticeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SecretLetterGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SecretLetterGrade](
	[grade] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SecretLetterGradePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SecretLetterGradePoolEntry](
	[poolId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SecretLetterQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SecretLetterQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[defaultLetterGradePoolId] [int] NOT NULL,
	[vipBoostMinPickCount] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SecretLetterQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SecretLetterQuestReward](
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SeriesMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SeriesMission](
	[missionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SeriesMissionStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SeriesMissionStep](
	[missionId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[targetCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SeriesMissionStepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SeriesMissionStepReward](
	[missionId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SharingEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SharingEvent](
	[eventId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
	[content] [nvarchar](100) NOT NULL,
	[rewardRange] [int] NOT NULL,
	[senderRewardLimitCount] [int] NOT NULL,
	[targetLevel] [int] NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[rewardMailTitleType] [int] NOT NULL,
	[rewardMailTitle] [nvarchar](100) NOT NULL,
	[rewardMailContentType] [int] NOT NULL,
	[rewardMailContent] [nvarchar](max) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[descriptionKey1] [varchar](20) NOT NULL,
	[descriptionKey2] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_SharingEvent] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SharingEventReceiverReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SharingEventReceiverReward](
	[eventId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
 CONSTRAINT [pk_r_SharingEventReceiverReward] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SharingEventSenderReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SharingEventSenderReward](
	[eventId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
 CONSTRAINT [pk_r_SharingEventSenderReward] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SideMenu]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SideMenu](
	[menuId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
 CONSTRAINT [pk_r_SideMenu] PRIMARY KEY NONCLUSTERED 
(
	[menuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SimpleShopProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SimpleShopProduct](
	[productId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[saleGold] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Skin]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Skin](
	[skinId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_Skin] PRIMARY KEY NONCLUSTERED 
(
	[skinId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SkinActivationConditionEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SkinActivationConditionEntry](
	[skinId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[minGrade] [int] NOT NULL,
 CONSTRAINT [pk_r_SkinActivationConditionEntry] PRIMARY KEY NONCLUSTERED 
(
	[skinId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SkinAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SkinAttr](
	[skinId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_r_SkinAttr] PRIMARY KEY NONCLUSTERED 
(
	[skinId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveter]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveter](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[memberCount] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [float] NOT NULL,
	[waveIntervalTime] [float] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveterAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveterAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveterDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveterDifficulty](
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveterDifficultyReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveterDifficultyReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveterDifficultyWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveterDifficultyWave](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetArrangeNo] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](100) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveterMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveterMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulCoveterObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulCoveterObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SoulStoneItemAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SoulStoneItemAttr](
	[itemId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [pk_r_SoulStoneItemAttr] PRIMARY KEY NONCLUSTERED 
(
	[itemId] ASC,
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StaminaBuyCount]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StaminaBuyCount](
	[buyCount] [int] NOT NULL,
	[stamina] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StaminaRecoverySchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StaminaRecoverySchedule](
	[scheduleId] [int] NOT NULL,
	[recoveryTime] [int] NOT NULL,
	[recoveryStamina] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeon](
	[locationId] [int] NOT NULL,
	[dungeonNo] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[enterCount] [int] NOT NULL,
	[requiredHeroMinLevel] [int] NOT NULL,
	[requiredHeroMaxLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[tamingXPosition] [float] NOT NULL,
	[tamingYPosition] [float] NOT NULL,
	[tamingZPosition] [float] NOT NULL,
	[tamingYRotation] [float] NOT NULL,
	[clearXPosition] [float] NOT NULL,
	[clearYPosition] [float] NOT NULL,
	[clearZPosition] [float] NOT NULL,
	[clearYRotation] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[accelerationRequiredMoveDuration] [int] NOT NULL,
	[accelerationMoveSpeed] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonAvailableReward](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonDifficulty](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[recommendBattlePower] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonGuide]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonGuide](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[no] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_content] [varchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonMonsterArrange](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterType] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonObstacle](
	[dungeonNo] [int] NOT NULL,
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonReward](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonStep](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[isCompletionRemoveTaming] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonSweepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonSweepReward](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_StoryDungeonTrap]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_StoryDungeonTrap](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[trapId] [int] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[prefabscale] [float] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[startDelay] [float] NOT NULL,
	[castingStartDelay] [float] NOT NULL,
	[castingDuration] [int] NOT NULL,
	[hitCount] [int] NOT NULL,
	[castingTerm] [float] NOT NULL,
	[damage] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGear]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGear](
	[subGearId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearAttr](
	[subGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearAttrValue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearAttrValue](
	[subGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearLevel](
	[subGearId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[nextLevelUpRequiredGold] [int] NOT NULL,
	[nextGradeUpItem1Id] [int] NOT NULL,
	[nextGradeUpItem1Count] [int] NOT NULL,
	[nextGradeUpItem2Id] [int] NOT NULL,
	[nextGradeUpItem2Count] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearLevelQuality]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearLevelQuality](
	[subGearId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[nextQualityUpItem1Id] [int] NOT NULL,
	[nextQualityUpItem1Count] [int] NOT NULL,
	[nextQualityUpItem2Id] [int] NOT NULL,
	[nextQualityUpItem2Count] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearName]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearName](
	[subGearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearRuneSocket]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearRuneSocket](
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[requiredSubGearLevel] [int] NOT NULL,
	[_enableText] [varchar](100) NOT NULL,
	[enableTextKey] [varchar](40) NOT NULL,
	[backgroundImageName] [nvarchar](40) NOT NULL,
	[miniBackgroundImageName] [nvarchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearRuneSocketAvailableItemType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearRuneSocketAvailableItemType](
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemType] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearSoulstoneLevelSet]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearSoulstoneLevelSet](
	[setNo] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredTotalLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearSoulstoneLevelSetAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearSoulstoneLevelSetAttr](
	[setNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubGearSoulstoneSocket]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubGearSoulstoneSocket](
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemType] [int] NOT NULL,
	[requiredSubGearGrade] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubMenu]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubMenu](
	[menuId] [int] NOT NULL,
	[subMenuId] [int] NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[prefab1] [varchar](100) NOT NULL,
	[prefab2] [varchar](100) NOT NULL,
	[prefab3] [varchar](100) NOT NULL,
	[layout] [int] NOT NULL,
	[isDefault] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
	[contentId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubQuest](
	[questId] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredConditionValue] [int] NOT NULL,
	[_title] [nvarchar](20) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[targetTextKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetAcquisitionRate] [int] NOT NULL,
	[targetContentId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[completionKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[abandonmentEnabled] [bit] NOT NULL,
	[reacceptanceEnabled] [bit] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_SubQuest] PRIMARY KEY NONCLUSTERED 
(
	[questId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SubQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SubQuestReward](
	[questId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_SubQuestReward] PRIMARY KEY NONCLUSTERED 
(
	[questId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[guaranteeGold] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL,
	[failGuideImageName] [nvarchar](40) NOT NULL,
	[failGuideTitleKey] [varchar](40) NOT NULL,
	[failGuideContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuestCart]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuestCart](
	[cartId] [int] NOT NULL,
	[destructionItemRewardId] [bigint] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuestCartPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuestCartPoolEntry](
	[orderId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[acquisitionCartId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuestChangeCartPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuestChangeCartPoolEntry](
	[cartId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[acquisitionCartId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuestOrder]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuestOrder](
	[orderId] [int] NOT NULL,
	[orderItemId] [int] NOT NULL,
	[failRefundGoldRewardId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuestReward](
	[cartId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SupplySupportQuestWayPoint]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SupplySupportQuestWayPoint](
	[wayPoint] [int] NOT NULL,
	[cartChangeNpcId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SystemMessage]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SystemMessage](
	[messageId] [int] NOT NULL,
	[_message] [nvarchar](40) NOT NULL,
	[messageKey] [varchar](20) NOT NULL,
	[conditionValue] [int] NOT NULL,
 CONSTRAINT [pk_r_SystemMessage] PRIMARY KEY NONCLUSTERED 
(
	[messageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_SystemNationWarDeclaration]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_SystemNationWarDeclaration](
	[serverOpenDayCount] [int] NOT NULL,
	[offenseNationId] [int] NOT NULL,
	[defenseNationid] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Task]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Task](
	[taskId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
 CONSTRAINT [pk_r_Task] PRIMARY KEY NONCLUSTERED 
(
	[taskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TaskCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TaskCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_TaskCategory] PRIMARY KEY NONCLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TaskCategoryEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TaskCategoryEntry](
	[categoryId] [int] NOT NULL,
	[taskId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_r_TaskCategoryEntry] PRIMARY KEY NONCLUSTERED 
(
	[categoryId] ASC,
	[taskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TaskConsignment]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TaskConsignment](
	[consignmentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
	[completionRequiredTime] [int] NOT NULL,
	[immediateCompletionRequiredGold] [int] NOT NULL,
	[immediateCompletionRequiredGoldReduceInterval] [int] NOT NULL,
	[todayTaskId] [int] NOT NULL,
	[rewardGuildContributionPointRewardId] [bigint] NOT NULL,
	[rewardGuildBuildingPointRewardId] [bigint] NOT NULL,
	[rewardGuildFundRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TaskConsignment] PRIMARY KEY NONCLUSTERED 
(
	[consignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TaskConsignmentAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TaskConsignmentAvailableReward](
	[consignmentId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_TaskConsignmentAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[consignmentId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TaskConsignmentExpReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TaskConsignmentExpReward](
	[consignmentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TaskConsignmentExpReward] PRIMARY KEY NONCLUSTERED 
(
	[consignmentId] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TaskConsignmentItemReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TaskConsignmentItemReward](
	[consignmentId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TaskConsignmentItemReward] PRIMARY KEY NONCLUSTERED 
(
	[consignmentId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDen]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDen](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
	[enterCount] [int] NOT NULL,
	[chargeCount] [int] NOT NULL,
	[chargeDia] [int] NOT NULL,
	[waveCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[waveIntervalTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[rewardDuration] [int] NOT NULL,
	[deadPenaltyPointFactor] [float] NOT NULL,
	[deadPenaltyPointMaxFactor] [float] NOT NULL,
	[itemRewardPenaltyFactor] [float] NOT NULL,
	[itemRewardPenaltyExpFactor] [float] NOT NULL,
	[itemRewardPenaltyMaxFactor] [float] NOT NULL,
	[exceptionalItemRewardFactor] [float] NOT NULL,
	[monsterRegenCount] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[directEnterItemId] [int] NOT NULL,
	[directEnterItemCount] [int] NOT NULL,
	[directEnterWaitingDuration] [int] NOT NULL,
	[freeRevivalDelayTime] [int] NOT NULL,
	[paidRevivalDia] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[resultDelayTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenClearGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenClearGrade](
	[clearGrade] [int] NOT NULL,
	[requiredPoint] [int] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenClearGrade] PRIMARY KEY NONCLUSTERED 
(
	[clearGrade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenDifficulty](
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[recommendLevel] [int] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenMonsterArrange](
	[difficulty] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[point] [int] NOT NULL,
	[stepId] [int] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenObject]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenObject](
	[difficulty] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[stepId] [int] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenObject] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[monsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenObstacle] PRIMARY KEY NONCLUSTERED 
(
	[obstacleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenReward](
	[difficulty] [int] NOT NULL,
	[clearGrade] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[additionalCount] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[clearGrade] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_ThievesDenStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_ThievesDenStep](
	[difficulty] [int] NOT NULL,
	[stepId] [int] NOT NULL,
	[_objectiveTitle] [nvarchar](40) NOT NULL,
	[objectiveTitleKey] [varchar](20) NOT NULL,
	[_objectiveContent] [nvarchar](80) NOT NULL,
	[objectiveContentKey] [varchar](20) NOT NULL,
	[objectiveMonsterId] [int] NOT NULL,
	[objectiveMonsterCount] [int] NOT NULL,
	[objectiveXPosition] [float] NOT NULL,
	[objectiveYPosition] [float] NOT NULL,
	[objectiveZPosition] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
 CONSTRAINT [pk_r_ThievesDenStep] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[stepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TimeDesignationEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TimeDesignationEvent](
	[eventId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[mailTitleType] [int] NOT NULL,
	[mailTitle] [nvarchar](100) NOT NULL,
	[mailContentType] [int] NOT NULL,
	[mailContent] [nvarchar](max) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_r_TimeDesignationEvent] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TimeDesignationEventReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TimeDesignationEventReward](
	[eventId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TimeDesignationEventReward] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Title]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Title](
	[titleId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[acquisitionTextKey] [varchar](40) NOT NULL,
	[backgroundImageName] [varchar](100) NOT NULL,
	[lifetime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TitleActiveAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TitleActiveAttr](
	[titleId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TitleCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TitleCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TitleGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TitleGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TitlePassiveAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TitlePassiveAttr](
	[titleId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TitleType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TitleType](
	[type] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TodayMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TodayMission](
	[missionId] [int] NOT NULL,
	[heroMinLevel] [int] NOT NULL,
	[point] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TodayMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TodayMissionReward](
	[missionId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TodayTask]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TodayTask](
	[taskId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[_rewardText] [varchar](100) NOT NULL,
	[rewardTextKey] [varchar](40) NOT NULL,
	[_eventTimeText] [varchar](100) NOT NULL,
	[eventTimeTextKey] [varchar](40) NOT NULL,
	[rank] [int] NOT NULL,
	[achievementPoint] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
	[_lockText] [varchar](100) NOT NULL,
	[lockTextKey] [varchar](40) NOT NULL,
	[isRecommend] [tinyint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TodayTaskAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TodayTaskAvailableReward](
	[taskId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TodayTaskCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TodayTaskCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShip]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShip](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[monsterRegenTime] [int] NOT NULL,
	[clearPointPerRemainTime] [int] NOT NULL,
	[exp2xRewardRequiredUnOwnDia] [int] NOT NULL,
	[exp3xRewardRequiredUnOwnDia] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipAdditionalMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipAdditionalMonsterArrange](
	[difficulty] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipAdditionalMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[stepNo] ASC,
	[entryNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipAdditionalMonsterArrangePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipAdditionalMonsterArrangePoolEntry](
	[difficulty] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipAdditionalMonsterArrangePoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[stepNo] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipDifficulty](
	[difficulty] [int] NOT NULL,
	[recommendBattlePower] [bigint] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[pointGoldRewardId] [bigint] NOT NULL,
	[pointExpRewardId] [bigint] NOT NULL,
	[maxAdditionalExp] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TradeShipDifficulty] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipMonsterArrange](
	[difficulty] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[stepNo] ASC,
	[arrangeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipObject]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipObject](
	[difficulty] [int] NOT NULL,
	[objectId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[activationStepNo] [int] NOT NULL,
	[hitMessageDisplayable] [bit] NOT NULL,
	[hitMessageDisplayInterval] [int] NOT NULL,
	[point] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipObject] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[objectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipObjectDestroyerReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipObjectDestroyerReward](
	[difficulty] [int] NOT NULL,
	[objectId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TradeShipObjectDestroyerReward] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[objectId] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL,
	[removeStepNo] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipObstacle] PRIMARY KEY NONCLUSTERED 
(
	[obstacleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipRewardPoolEntry](
	[difficulty] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TradeShipRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[difficulty] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_TradeShipSchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TradeShipStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TradeShipStep](
	[stepNo] [int] NOT NULL,
	[targetMonsterKillCount] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_TradeShipStep] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TreatOfFarmQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TreatOfFarmQuest](
	[requiredHeroLevel] [int] NOT NULL,
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_targetMovingText] [nvarchar](40) NOT NULL,
	[targetMovingTextKey] [varchar](40) NOT NULL,
	[_targetKillText] [nvarchar](40) NOT NULL,
	[targetKillTextKey] [varchar](40) NOT NULL,
	[limitCount] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[monsterKillLimitTime] [int] NOT NULL,
	[_targetMovingDescription] [varchar](100) NOT NULL,
	[targetMovingDescriptionKey] [varchar](40) NOT NULL,
	[_targetKillDescription] [varchar](100) NOT NULL,
	[targetKillDescriptionKey] [varchar](40) NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TreatOfFarmQuestMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TreatOfFarmQuestMission](
	[missionId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[_targetPositionName] [varchar](100) NOT NULL,
	[targetPositionNameKey] [varchar](40) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[monsterSpawnxPosition] [float] NOT NULL,
	[monsterSpawnyPosition] [float] NOT NULL,
	[monsterSpawnzPosition] [float] NOT NULL,
	[monsterYRotationType] [int] NOT NULL,
	[monsteryRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TreatOfFarmQuestMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TreatOfFarmQuestMonsterArrange](
	[missionId] [int] NOT NULL,
	[heroMinLevel] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TreatOfFarmQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TreatOfFarmQuestReward](
	[level] [int] NOT NULL,
	[missionCompletionExpRewardId] [bigint] NOT NULL,
	[missionCompletionItemRewardId] [bigint] NOT NULL,
	[questCompletionItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TrueHeroQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TrueHeroQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](100) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[requiredVipLevel] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[completionTextKey] [varchar](20) NOT NULL,
	[targetObjectPrefabName] [varchar](100) NOT NULL,
	[targetObjectInteractionDuration] [float] NOT NULL,
	[targetObjectInteractionMaxRange] [float] NOT NULL,
	[targetObjectScale] [float] NOT NULL,
	[targetObjectHeight] [int] NOT NULL,
	[targetObjectRadius] [float] NOT NULL,
	[targetObjectInteractionTextKey] [varchar](20) NOT NULL,
	[chattingMessageKey] [varchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TrueHeroQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TrueHeroQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_TrueHeroQuestReward] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_TrueHeroQuestStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_TrueHeroQuestStep](
	[stepNo] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetObjectXPosition] [float] NOT NULL,
	[targetObjectYPosition] [float] NOT NULL,
	[targetObjectZPosition] [float] NOT NULL,
	[objectiveWaitingTime] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_TrueHeroQuestStep] PRIMARY KEY NONCLUSTERED 
(
	[stepNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMaze]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMaze](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazeEntrance]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazeEntrance](
	[floor] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazeFloor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazeFloor](
	[floor] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazeMapMonster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazeMapMonster](
	[floor] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
 CONSTRAINT [pk_r_UndergroundMazeMapMonster] PRIMARY KEY NONCLUSTERED 
(
	[floor] ASC,
	[monsterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazeMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazeMonsterArrange](
	[floor] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[regenTime] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazeNpc]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazeNpc](
	[npcId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_dialogue] [varchar](100) NOT NULL,
	[dialogueKey] [varchar](40) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazeNpcTransmissionEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazeNpcTransmissionEntry](
	[npcId] [int] NOT NULL,
	[floor] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_UndergroundMazePortal]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_UndergroundMazePortal](
	[portalId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[exitxPosition] [float] NOT NULL,
	[exityPosition] [float] NOT NULL,
	[exitzPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exityRotation] [float] NOT NULL,
	[linkedPortalId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_VipLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_VipLevel](
	[vipLevel] [int] NOT NULL,
	[requiredAccVipPoint] [bigint] NOT NULL,
	[mainGearEnchantMaxCount] [int] NOT NULL,
	[mainGearRefinementMaxCount] [int] NOT NULL,
	[mountGearRefinementMaxCount] [int] NOT NULL,
	[expPotionUseMaxCount] [int] NOT NULL,
	[staminaBuyMaxCount] [int] NOT NULL,
	[expDungeonEnterCount] [int] NOT NULL,
	[goldDungeonEnterCount] [int] NOT NULL,
	[ExpScrollUseMaxCount] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[secretLetterBoostGradePoolId] [int] NOT NULL,
	[mysteryBoxBoostGradePoolId] [int] NOT NULL,
	[dailyMaxExploitPoint] [int] NOT NULL,
	[artifactRoomInitMaxCount] [int] NOT NULL,
	[ancientRelicEnterCount] [int] NOT NULL,
	[fieldOfHonorEnterCount] [int] NOT NULL,
	[distortionScrollUseMaxCount] [int] NOT NULL,
	[guildDonationMaxCount] [int] NOT NULL,
	[nationDonationMaxCount] [int] NOT NULL,
	[soulCoveterWeeklyEnterCount] [int] NOT NULL,
	[creatureCardCompositionEnabled] [tinyint] NOT NULL,
	[CreatureCardShopPaidRefreshMaxCount] [int] NOT NULL,
	[proofOfValorEnterCount] [int] NOT NULL,
	[trueHeroQuestStepNo] [int] NOT NULL,
	[fearAltarEnterCount] [int] NOT NULL,
	[expDungeonAdditionalExpRewardFactor] [float] NOT NULL,
	[osirisRoomEnterCount] [int] NOT NULL,
	[luckyShopPickMaxCount] [int] NOT NULL,
	[reatureVariationMaxCount] [int] NOT NULL,
	[tradeShipEnterCount] [int] NOT NULL,
	[creatureVariationMaxCount] [int] NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_VipLevelReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_VipLevelReward](
	[vipLevel] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarehouseSlotExtendRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarehouseSlotExtendRecipe](
	[slotCount] [int] NOT NULL,
	[dia] [int] NOT NULL,
 CONSTRAINT [pk_r_WarehouseSlotExtendRecipe] PRIMARY KEY NONCLUSTERED 
(
	[slotCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemory](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[freeEnterCount] [int] NOT NULL,
	[enterRequiredItemId] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[transformationGuideImageName] [varchar](100) NOT NULL,
	[transformationGuideTitleKey] [varchar](20) NOT NULL,
	[transformationGuideContentKey] [varchar](20) NOT NULL,
	[monsterSummonGuideTitleKey] [varchar](20) NOT NULL,
	[monsterSummonGuideContentKey] [varchar](20) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryAvailableReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[type] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[killPoint] [int] NOT NULL,
	[assistPoint] [int] NOT NULL,
	[summonMinHpFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryMonsterAttrFactor] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryRankingReward] PRIMARY KEY NONCLUSTERED 
(
	[highRanking] ASC,
	[lowRanking] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryReward] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemorySchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemorySchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
 CONSTRAINT [pk_r_WarMemorySchedule] PRIMARY KEY NONCLUSTERED 
(
	[scheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryStartPosition]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryStartPosition](
	[positionId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryStartPosition] PRIMARY KEY NONCLUSTERED 
(
	[positionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemorySummonMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemorySummonMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[summonNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
 CONSTRAINT [pk_r_WarMemorySummonMonsterArrange] PRIMARY KEY NONCLUSTERED 
(
	[arrangeKey] ASC,
	[summonNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryTransformationObject]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryTransformationObject](
	[waveNo] [int] NOT NULL,
	[transformationObjectId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[objectPrefabName] [varchar](100) NOT NULL,
	[objectInteractionDuration] [float] NOT NULL,
	[objectInteractionMaxRange] [float] NOT NULL,
	[objectScale] [float] NOT NULL,
	[objectHeight] [int] NOT NULL,
	[objectRadius] [float] NOT NULL,
	[objectInteractionTextKey] [varchar](20) NOT NULL,
	[objectLifetime] [int] NOT NULL,
	[transformationMonsterId] [int] NOT NULL,
	[transformationLifetime] [int] NOT NULL,
	[transformationPoint] [int] NOT NULL,
 CONSTRAINT [pk_r_WarMemoryTransformationObject] PRIMARY KEY NONCLUSTERED 
(
	[waveNo] ASC,
	[transformationObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WarMemoryWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WarMemoryWave](
	[waveNo] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[clearPoint] [int] NOT NULL,
	[targetType] [int] NOT NULL,
	[targetArrangeKey] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_WarMemoryWave] PRIMARY KEY NONCLUSTERED 
(
	[waveNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeekendAttendRewardAvailableDayOfWeek]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeekendAttendRewardAvailableDayOfWeek](
	[dayOfWeek] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeekendReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeekendReward](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[scheduleTextKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[itemRewardRate] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeekendRewardNumberPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeekendRewardNumberPoolEntry](
	[selectionNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [pk_r_WeekendRewardNumberPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[selectionNo] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeekendRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeekendRewardPoolEntry](
	[selectionNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [pk_r_WeekendRewardPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[selectionNo] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyContributionPointRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyContributionPointRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyContributionPointRankingReward] PRIMARY KEY NONCLUSTERED 
(
	[highRanking] ASC,
	[lowRanking] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyPopularityPointRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyPopularityPointRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyPopularityPointRankingReward] PRIMARY KEY NONCLUSTERED 
(
	[highRanking] ASC,
	[lowRanking] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyPresentContributionPointRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyPresentContributionPointRankingReward](
	[groupNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyPresentContributionPointRankingReward] PRIMARY KEY NONCLUSTERED 
(
	[groupNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyPresentContributionPointRankingRewardGroup]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyPresentContributionPointRankingRewardGroup](
	[groupNo] [int] NOT NULL,
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
 CONSTRAINT [pk_r_WeeklyPresentContributionPointRankingRewardGroup] PRIMARY KEY NONCLUSTERED 
(
	[groupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyPresentPopularityPointRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyPresentPopularityPointRankingReward](
	[groupNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyPresentPopularityPointRankingReward] PRIMARY KEY NONCLUSTERED 
(
	[groupNo] ASC,
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyPresentPopularityPointRankingRewardGroup]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyPresentPopularityPointRankingRewardGroup](
	[groupNo] [int] NOT NULL,
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
 CONSTRAINT [pk_r_WeeklyPresentPopularityPointRankingRewardGroup] PRIMARY KEY NONCLUSTERED 
(
	[groupNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuest](
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[roundCount] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[roundRefreshRequiredGold] [int] NOT NULL,
	[roundImmediateCompletionRequiredItemId] [int] NOT NULL,
	[tenRoundCompletionRequiredVipLevel] [int] NOT NULL,
	[tenRoundCompletionRewardFactor] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuest10RoundReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuest10RoundReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuest10RoundReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestExtraReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestExtraReward](
	[completionCount] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestExtraReward] PRIMARY KEY NONCLUSTERED 
(
	[completionCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestFeverStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestFeverStep](
	[feverStep] [int] NOT NULL,
	[nextStepUpCompletionCount] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestFeverStep] PRIMARY KEY NONCLUSTERED 
(
	[feverStep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestMission](
	[missionId] [int] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[targetDescriptionKey] [varchar](20) NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestMission] PRIMARY KEY NONCLUSTERED 
(
	[missionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestObjectivePool]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestObjectivePool](
	[poolId] [int] NOT NULL,
	[minLevel] [int] NOT NULL,
	[maxLevel] [int] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestObjectivePool] PRIMARY KEY NONCLUSTERED 
(
	[poolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestObjectivePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestObjectivePoolEntry](
	[poolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[objectiveCount] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestObjectivePoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[poolId] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestReward](
	[level] [int] NOT NULL,
	[step] [int] NOT NULL,
	[exp] [bigint] NOT NULL,
	[gold] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestReward] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC,
	[step] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestRoundReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestRoundReward](
	[roundNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestRoundReward] PRIMARY KEY NONCLUSTERED 
(
	[roundNo] ASC,
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WeeklyQuestTenRoundReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WeeklyQuestTenRoundReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WeeklyQuestTenRoundReward] PRIMARY KEY NONCLUSTERED 
(
	[rewardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_Wing]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_Wing](
	[wingId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [nvarchar](20) NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
	[_acquisitionText] [nvarchar](20) NOT NULL,
	[acquisitionTextKey] [varchar](20) NOT NULL,
	[memoryPieceInstallationEnabled] [bit] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingEnchantCountPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingEnchantCountPoolEntry](
	[entryId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingMemoryPieceCriticalCountPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingMemoryPieceCriticalCountPoolEntry](
	[wingId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [pk_r_WingMemoryPieceCriticalCountPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[wingId] ASC,
	[step] ASC,
	[type] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingMemoryPieceSlot]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingMemoryPieceSlot](
	[wingId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[openStep] [int] NOT NULL,
 CONSTRAINT [pk_r_WingMemoryPieceSlot] PRIMARY KEY NONCLUSTERED 
(
	[wingId] ASC,
	[slotIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingMemoryPieceSlotStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingMemoryPieceSlotStep](
	[wingId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[step] [int] NOT NULL,
	[attrMaxValue] [int] NOT NULL,
	[attrIncBaseValue] [int] NOT NULL,
	[attrDecValue] [int] NOT NULL,
 CONSTRAINT [pk_r_WingMemoryPieceSlotStep] PRIMARY KEY NONCLUSTERED 
(
	[wingId] ASC,
	[slotIndex] ASC,
	[step] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingMemoryPieceStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingMemoryPieceStep](
	[wingId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[requiredMemoryPieceCount] [int] NOT NULL,
 CONSTRAINT [pk_r_WingMemoryPieceStep] PRIMARY KEY NONCLUSTERED 
(
	[wingId] ASC,
	[step] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingMemoryPieceSuccessFactorPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingMemoryPieceSuccessFactorPoolEntry](
	[wingId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[factor] [int] NOT NULL,
 CONSTRAINT [pk_r_WingMemoryPieceSuccessFactorPoolEntry] PRIMARY KEY NONCLUSTERED 
(
	[wingId] ASC,
	[step] ASC,
	[type] ASC,
	[entryNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingMemoryPieceType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingMemoryPieceType](
	[type] [int] NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[successRate] [int] NOT NULL,
	[criticalRate] [int] NOT NULL,
	[criticalFactor] [int] NOT NULL,
 CONSTRAINT [pk_r_WingMemoryPieceType] PRIMARY KEY NONCLUSTERED 
(
	[type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingPart]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingPart](
	[partId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingStep](
	[step] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[enchantMaterialItemCount] [int] NOT NULL,
	[rewardWingId] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingStepLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingStepLevel](
	[step] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
	[accEnchantLimitCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WingStepPart]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WingStepPart](
	[step] [int] NOT NULL,
	[partId] [int] NOT NULL,
	[increaseAttrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTemple]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTemple](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [float] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[guideImageName] [nvarchar](20) NOT NULL,
	[colorMatchingPoint] [int] NOT NULL,
	[colorMatchingObjectivePoint] [int] NOT NULL,
	[colorMatchingMonsterSpawnInterval] [int] NOT NULL,
	[colorMatchingMonsterArrangeId] [int] NOT NULL,
	[colorMatchingMonsterXPosition] [float] NOT NULL,
	[colorMatchingMonsterYPosition] [float] NOT NULL,
	[colorMatchingMonsterZPosition] [float] NOT NULL,
	[colorMatchingMonsterYRotationType] [int] NOT NULL,
	[colorMatchingMonsterYRotation] [float] NOT NULL,
	[colorMatchingMonsterKillPoint] [float] NOT NULL,
	[colorMatchingMonsterKillObjectId] [int] NOT NULL,
	[colorMatchingMonsterSpawnGuideTitleKey] [varchar](20) NOT NULL,
	[colorMatchingMonsterSpawnGuideContentKey] [varchar](20) NOT NULL,
	[findTreasureBoxMonsterArrangeId] [bigint] NOT NULL,
	[findTreasureBoxSuccessGuideTitleKey] [varchar](20) NOT NULL,
	[findTreasureBoxSuccessGuideContentKey] [varchar](20) NOT NULL,
	[puzzleRewardTargetTitleKey] [varchar](20) NOT NULL,
	[puzzleRewardTargetContentKey] [varchar](20) NOT NULL,
	[puzzleRewardGuideTitleKey] [varchar](20) NOT NULL,
	[puzzleRewardGuideContentKey] [varchar](20) NOT NULL,
	[puzzleRewardObjectPrefabName] [varchar](100) NOT NULL,
	[puzzleRewardObjectInteractionDuration] [int] NOT NULL,
	[puzzleRewardObjectInteractionMaxRange] [int] NOT NULL,
	[puzzleRewardObjectScale] [int] NOT NULL,
	[puzzleRewardObjectHeight] [int] NOT NULL,
	[puzzleRewardObjectRadius] [int] NOT NULL,
	[quizRightAnswerGuideTitleKey] [varchar](20) NOT NULL,
	[quizRightAnswerGuideContentKey] [varchar](20) NOT NULL,
	[quizWrongAnswerGuideTitleKey] [varchar](20) NOT NULL,
	[quizWrongAnswerGuideContentKey] [varchar](20) NOT NULL,
	[bossMonsterArrangeId] [bigint] NOT NULL,
	[bossMonsterXPosition] [float] NOT NULL,
	[bossMonsterYPosition] [float] NOT NULL,
	[bossMonsterZPosition] [float] NOT NULL,
	[bossMonsterYRotation] [float] NOT NULL,
	[bossMonsterTargetTitleKey] [varchar](20) NOT NULL,
	[bossMonsterTargetContentKey] [varchar](20) NOT NULL,
	[bossMonsterSpawnGuideTitleKey] [varchar](20) NOT NULL,
	[bossMonsterSpawnGuideContentKey] [varchar](20) NOT NULL,
	[bossMonsterKillItemRewardId] [bigint] NOT NULL,
	[sweepItemRewardId] [bigint] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[bossMonsterSpawnDelayTime] [int] NOT NULL,
	[availableRewardItemId] [bigint] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleArrangePosition]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleArrangePosition](
	[row] [int] NOT NULL,
	[col] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleColorMatchingObject]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleColorMatchingObject](
	[objectId] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[scale] [float] NOT NULL,
	[height] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleFindTreasureBoxCount]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleFindTreasureBoxCount](
	[count] [int] NOT NULL,
	[rewardCount] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [int] NOT NULL,
	[offenseFactor] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTemplePuzzle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTemplePuzzle](
	[puzzleId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTemplePuzzleReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTemplePuzzleReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
 CONSTRAINT [pk_r_WisdomTemplePuzzleReward] PRIMARY KEY NONCLUSTERED 
(
	[level] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTemplePuzzleRewardobjectOffset]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTemplePuzzleRewardobjectOffset](
	[rewardCount] [int] NOT NULL,
	[offsetNo] [int] NOT NULL,
	[xOffset] [int] NOT NULL,
	[yOffset] [int] NOT NULL,
	[zOffset] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTemplePuzzleRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTemplePuzzleRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleQuizMonsterPosition]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleQuizMonsterPosition](
	[stepNo] [int] NOT NULL,
	[row] [int] NOT NULL,
	[col] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleQuizPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleQuizPoolEntry](
	[stepNo] [int] NOT NULL,
	[quizNo] [int] NOT NULL,
	[questionKey] [varchar](40) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleQuizRightAnswerPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleQuizRightAnswerPoolEntry](
	[quizNo] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleQuizWrongAnswerPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleQuizWrongAnswerPoolEntry](
	[quizNo] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleStep](
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleStepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleStepReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WisdomTempleSweepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WisdomTempleSweepReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[r_WorldLevelExpFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[r_WorldLevelExpFactor](
	[levelGap] [int] NOT NULL,
	[expFactor] [int] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_BlackIp]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_BlackIp](
	[startIpNo] [bigint] NOT NULL,
	[endIpNo] [bigint] NOT NULL,
	[startIp] [varchar](15) NOT NULL,
	[endIp] [varchar](15) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_s_BlackIp] PRIMARY KEY NONCLUSTERED 
(
	[startIpNo] ASC,
	[endIpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_ClientText]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_ClientText](
	[name] [varchar](20) NOT NULL,
	[value] [nvarchar](max) NULL,
	[languageId] [int] NOT NULL,
 CONSTRAINT [pk_s_ClientText] PRIMARY KEY NONCLUSTERED 
(
	[languageId] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_Coupon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_Coupon](
	[couponId] [varchar](20) NOT NULL,
	[promotionId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_s_Coupon] PRIMARY KEY NONCLUSTERED 
(
	[couponId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_GameAssetBundle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_GameAssetBundle](
	[bundleNo] [int] NOT NULL,
	[fileName] [varchar](200) NOT NULL,
	[androidVer] [int] NOT NULL,
	[iosVer] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[isCommon] [tinyint] NOT NULL,
 CONSTRAINT [pk_s_GameAssetBundle] PRIMARY KEY NONCLUSTERED 
(
	[bundleNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_GameServer]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_GameServer](
	[serverId] [int] NOT NULL,
	[name] [nvarchar](20) NULL,
	[groupId] [int] NULL,
	[apiUrl] [varchar](200) NOT NULL,
	[proxyServer] [varchar](200) NOT NULL,
	[proxyServerPort] [int] NOT NULL,
	[gameDBConnection] [varchar](200) NOT NULL,
	[currentUserCount] [int] NOT NULL,
	[status] [int] NOT NULL,
	[isNew] [bit] NOT NULL,
	[isMaintenance] [bit] NOT NULL,
	[sortNo] [int] NOT NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[openTime] [datetimeoffset](7) NOT NULL,
	[gameLogDBConnection] [varchar](200) NOT NULL,
	[recommendable] [tinyint] NOT NULL,
	[isPublic] [tinyint] NOT NULL,
 CONSTRAINT [pk_s_GameServer] PRIMARY KEY NONCLUSTERED 
(
	[serverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_GameServerGroup]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_GameServerGroup](
	[groupId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[regionId] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
	[recommendServerAuto] [bit] NOT NULL,
	[recommendServerConditionType] [int] NOT NULL,
	[isAccessRestriction] [bit] NOT NULL,
 CONSTRAINT [pk_s_GameServerGroup] PRIMARY KEY NONCLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_GameServerGroupAllowedCountry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_GameServerGroupAllowedCountry](
	[groupId] [int] NOT NULL,
	[countryCode] [varchar](2) NOT NULL,
 CONSTRAINT [pk_s_GameServerGroupAllowedCountry] PRIMARY KEY NONCLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_GameServerRegion]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_GameServerRegion](
	[regionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sortNo] [int] NOT NULL,
 CONSTRAINT [pk_s_GameServerRegion] PRIMARY KEY NONCLUSTERED 
(
	[regionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_GeoIp]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_GeoIp](
	[beginIp] [varchar](15) NULL,
	[endIp] [varchar](15) NULL,
	[beginIpNum] [bigint] NULL,
	[endIpNum] [bigint] NULL,
	[countryCode] [varchar](2) NULL,
	[countryName] [varchar](50) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_Promotion]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_Promotion](
	[promotionId] [uniqueidentifier] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[couponCount] [int] NOT NULL,
	[mailTitleType] [int] NOT NULL,
	[mailTitle] [nvarchar](100) NOT NULL,
	[mailContentType] [int] NOT NULL,
	[mailContent] [nvarchar](max) NOT NULL,
	[enabled] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_s_Promotion] PRIMARY KEY NONCLUSTERED 
(
	[promotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_PromotionItem]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_PromotionItem](
	[promotionId] [uniqueidentifier] NOT NULL,
	[no] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
 CONSTRAINT [pk_s_PromotionItem] PRIMARY KEY NONCLUSTERED 
(
	[promotionId] ASC,
	[no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_PromotionTarget]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_PromotionTarget](
	[targetRegionId] [int] NOT NULL,
	[targetGroupId] [int] NOT NULL,
	[targetServerId] [int] NOT NULL,
	[promotionId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_s_PromotionTarget] PRIMARY KEY NONCLUSTERED 
(
	[targetRegionId] ASC,
	[targetGroupId] ASC,
	[targetServerId] ASC,
	[promotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_SupportedLanguage]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_SupportedLanguage](
	[languageId] [int] NOT NULL,
	[maintenanceInfoUrl] [varchar](200) NULL,
 CONSTRAINT [pk_s_SupportedLanguage] PRIMARY KEY NONCLUSTERED 
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_SystemGameConfig]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_SystemGameConfig](
	[nameRegex] [nvarchar](100) NOT NULL,
	[defaultLanguageId] [int] NOT NULL,
	[partyNameRegex] [nvarchar](100) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_SystemSetting]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_SystemSetting](
	[assetBundleUrl] [varchar](200) NOT NULL,
	[termsOfServiceUrl] [varchar](200) NOT NULL,
	[privacyPolicyUrl] [varchar](200) NOT NULL,
	[clientVersion] [varchar](12) NOT NULL,
	[clientTextVersion] [int] NOT NULL,
	[metaDataVersion] [int] NOT NULL,
	[isMaintenance] [bit] NOT NULL,
	[recommendGameServerId] [int] NOT NULL,
	[googlePublicKey] [nvarchar](1000) NOT NULL,
	[statusLoggingUrl] [varchar](200) NOT NULL,
	[statusLoggingInterval] [int] NOT NULL,
	[helpshiftSdkEnabled] [bit] NOT NULL,
	[helpshiftWebViewEnabled] [bit] NOT NULL,
	[helpshiftUrl] [varchar](200) NOT NULL,
	[appStoreId] [varchar](40) NOT NULL,
	[heroNameRegex] [varchar](200) NOT NULL,
	[guildNameRegex] [varchar](200) NOT NULL,
	[maxUserConnectionCount] [int] NOT NULL,
	[defaultLanguageId] [int] NOT NULL,
	[maintenanceInfoUrl] [varchar](200) NOT NULL,
	[authApiUrl] [varchar](200) NOT NULL,
	[loggingUrl] [varchar](200) NOT NULL,
	[loggingEnabled] [bit] NOT NULL,
	[recommendServerAuto] [int] NOT NULL,
	[recommendServerConditionType] [int] NOT NULL,
	[authUrl] [varchar](200) NULL,
	[csUrl] [varchar](200) NULL,
	[homepageUrl] [varchar](200) NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_VirtualGameServer]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_VirtualGameServer](
	[virtualGameServerId] [int] NOT NULL,
	[serverId] [int] NOT NULL,
	[displayName] [nvarchar](20) NOT NULL,
	[displayNo] [nvarchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[s_WhiteIp]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_WhiteIp](
	[startIpNo] [nvarchar](20) NOT NULL,
	[endIpNo] [nvarchar](20) NOT NULL,
	[startIp] [nvarchar](20) NOT NULL,
	[endIp] [nvarchar](20) NOT NULL,
	[name] [nvarchar](20) NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_Announcement]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Announcement](
	[announcementId] [uniqueidentifier] NULL,
	[title] [nchar](100) NULL,
	[contentUrl] [varchar](100) NULL,
	[startTime] [varchar](50) NULL,
	[endTime] [varchar](100) NULL,
	[SortNo] [varchar](50) NULL,
	[visible] [varchar](50) NULL,
	[regTime] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_AnnouncementLog]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_AnnouncementLog](
	[logId] [uniqueidentifier] NOT NULL,
	[announcementId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[title] [nvarchar](100) NULL,
	[contentUrl] [nvarchar](200) NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[SortNo] [int] NULL,
	[visible] [bit] NULL,
	[regTime] [datetimeoffset](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[logId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_CouponUse]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_CouponUse](
	[useId] [uniqueidentifier] NOT NULL,
	[gameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[couponId] [varchar](20) NOT NULL,
	[promotionId] [uniqueidentifier] NOT NULL,
	[status] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_CouponUse] PRIMARY KEY NONCLUSTERED 
(
	[useId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_EntermateUser]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_EntermateUser](
	[userId] [uniqueidentifier] NOT NULL,
	[entermateUserId] [varchar](100) NOT NULL,
 CONSTRAINT [pk_t_EntermateUser] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_FacebookUser]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_FacebookUser](
	[userId] [uniqueidentifier] NOT NULL,
	[facebookAppId] [varchar](100) NOT NULL,
	[facebookUserId] [varchar](100) NOT NULL,
 CONSTRAINT [pk_t_FacebookUser] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GlobalNotice]    Script Date: 2023/4/7 16:13:45 ******/
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
/****** Object:  Table [dbo].[t_GoogleUser]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GoogleUser](
	[userId] [uniqueidentifier] NOT NULL,
	[googleUserId] [varchar](100) NOT NULL,
 CONSTRAINT [pk_t_GoogleUser] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuestUser]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuestUser](
	[userId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_t_GuestUser] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_GuildName]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_GuildName](
	[name] [nvarchar](max) NULL,
	[guildId] [uniqueidentifier] NULL,
	[virtualGameServerId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_HeroName]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_HeroName](
	[name] [nvarchar](50) NULL,
	[heroId] [uniqueidentifier] NULL,
	[virtualGameServerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_LoginLog]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_LoginLog](
	[logNo] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[ip] [varchar](15) NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_LoginLog] PRIMARY KEY CLUSTERED 
(
	[logNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_INDEX]
GO
/****** Object:  Table [dbo].[t_Purchase]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Purchase](
	[purchaseId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
	[storeType] [int] NOT NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[receipt] [nvarchar](max) NULL,
	[failReason] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_Purchase] PRIMARY KEY NONCLUSTERED 
(
	[purchaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_PurchaseException]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PurchaseException](
	[exceptionId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[storeType] [int] NOT NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_PurchaseException] PRIMARY KEY NONCLUSTERED 
(
	[exceptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_PurchaseExceptional]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PurchaseExceptional](
	[exceptionId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[storeType] [int] NOT NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_PurchaseExceptional] PRIMARY KEY NONCLUSTERED 
(
	[exceptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA] TEXTIMAGE_ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_PurchaseExceptionalLog]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PurchaseExceptionalLog](
	[userId] [uniqueidentifier] NULL,
	[gameServerId] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[storeType] [int] NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_PurchaseLog]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_PurchaseLog](
	[logId] [uniqueidentifier] NULL,
	[userId] [uniqueidentifier] NULL,
	[gameServerId] [int] NULL,
	[heroId] [uniqueidentifier] NULL,
	[storeType] [int] NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[updateTime] [datetimeoffset](7) NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_SharingEventReceiver]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SharingEventReceiver](
	[eventId] [int] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[inviteCode] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewarded] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completionTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_SharingEventReceiver] PRIMARY KEY NONCLUSTERED 
(
	[eventId] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_SharingEventSender]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_SharingEventSender](
	[inviteCode] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [pk_t_SharingEventSender] PRIMARY KEY NONCLUSTERED 
(
	[inviteCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_User]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_User](
	[userId] [uniqueidentifier] NOT NULL,
	[type] [int] NOT NULL,
	[secret] [varchar](20) NOT NULL,
	[accessSecret] [varchar](20) NULL,
	[lastLoginTime] [datetimeoffset](7) NULL,
	[lastLoginIp] [varchar](15) NULL,
	[lastGameServerId1] [int] NOT NULL,
	[lastGameServerId2] [int] NOT NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[languageId] [int] NOT NULL,
	[lastVirtualGameServerId1] [int] NOT NULL,
	[lastVirtualGameServerId2] [int] NOT NULL,
 CONSTRAINT [pk_t_User] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_UserBlock]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_UserBlock](
	[blockId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[reason] [nvarchar](100) NOT NULL,
	[blocked] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[revocationReason] [nvarchar](100) NULL,
	[revocationTime] [datetimeoffset](7) NULL,
 CONSTRAINT [pk_t_UserBlock] PRIMARY KEY NONCLUSTERED 
(
	[blockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_UserGameServer]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_UserGameServer](
	[userId] [uniqueidentifier] NOT NULL,
	[serverId] [int] NOT NULL,
	[heroCount] [int] NOT NULL,
 CONSTRAINT [pk_t_UserGameServer] PRIMARY KEY NONCLUSTERED 
(
	[userId] ASC,
	[serverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [RZ_INDEX]
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[t_UserHero]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_UserHero](
	[heroId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[name] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AbnormalState]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AbnormalState](
	[abnormalStateId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[isOverlap] [int] NOT NULL,
	[sourceType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AbnormalStateDetail]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AbnormalStateDetail](
	[abnormalStateId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[skillLevel] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AbnormalStateLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AbnormalStateLevel](
	[abnormalStateId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[value4] [int] NOT NULL,
	[value5] [int] NOT NULL,
	[value6] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AbnormalStateRankSkillLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AbnormalStateRankSkillLevel](
	[abnormalStateId] [int] NOT NULL,
	[skillLevel] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[value4] [int] NOT NULL,
	[value5] [int] NOT NULL,
	[value6] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AccessRewardEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AccessRewardEntry](
	[entryId] [int] NOT NULL,
	[accessTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AccessRewardItem]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AccessRewardItem](
	[entryId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Accomplishment]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Accomplishment](
	[accomplishmentId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_objectiveText] [nvarchar](40) NOT NULL,
	[objectiveTextKey] [varchar](40) NOT NULL,
	[objectiveValue] [bigint] NOT NULL,
	[point] [int] NOT NULL,
	[rewardType] [int] NOT NULL,
	[rewardTitleId] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AccomplishmentCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AccomplishmentCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AchievementReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AchievementReward](
	[rewardNo] [int] NOT NULL,
	[requiredAchievementPoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AchievementRewardEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AchievementRewardEntry](
	[rewardNo] [int] NOT NULL,
	[rewardEntryNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelic]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelic](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [float] NOT NULL,
	[waveIntervalTime] [float] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[trapActivateStartStep] [int] NOT NULL,
	[trapPenaltyMoveSpeed] [int] NOT NULL,
	[trapPenaltyDuration] [int] NOT NULL,
	[trapDamage] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicMonsterArrange](
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[routeId] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicMonsterAttrFactor](
	[averageHeroLevel] [int] NOT NULL,
	[trapDamageFactor] [float] NOT NULL,
	[normalMonsterMaxHpFactor] [float] NOT NULL,
	[normalMonsterOffenseFactor] [float] NOT NULL,
	[bossMonsterMaxHpFactor] [float] NOT NULL,
	[bossMonsterOffenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicRoute]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicRoute](
	[routeId] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicStep](
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](30) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](30) NOT NULL,
	[targetPoint] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](30) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicStepRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicStepRewardPoolEntry](
	[step] [int] NOT NULL,
	[level] [int] NOT NULL,
	[poolId] [int] NOT NULL,
	[entryId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicStepRoute]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicStepRoute](
	[step] [int] NOT NULL,
	[routeId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[targetRadius] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicStepWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicStepWave](
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[isGuideDisplay] [tinyint] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AncientRelicTrap]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AncientRelicTrap](
	[trapId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[regenInterval] [int] NOT NULL,
	[duration] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AnkouTomb]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AnkouTomb](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[enterCount] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[waveCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[monsterSpawnXPosition] [float] NOT NULL,
	[monsterSpawnYPosition] [float] NOT NULL,
	[monsterSpawnZPosition] [float] NOT NULL,
	[monsterSpawnRadius] [float] NOT NULL,
	[bossMonsterSpawnRate] [int] NOT NULL,
	[monsterPoint] [int] NOT NULL,
	[bossMonsterPoint] [int] NOT NULL,
	[clearPoint] [int] NOT NULL,
	[exp2xRewardRequiredUnOwnDia] [int] NOT NULL,
	[exp3xRewardRequiredUnOwnDia] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AnkouTombAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AnkouTombAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AnkouTombDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AnkouTombDifficulty](
	[difficulty] [int] NOT NULL,
	[recommendBattlePower] [bigint] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[pointGoldRewardId] [bigint] NOT NULL,
	[pointExpRewardId] [bigint] NOT NULL,
	[maxAdditionalExp] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AnkouTombMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AnkouTombMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterType] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AnkouTombRewardPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AnkouTombRewardPoolEntry](
	[difficulty] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AnkouTombSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AnkouTombSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Artifact]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Artifact](
	[artifactNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactAttr](
	[artifactNo] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactLevel](
	[artifactNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactLevelAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactLevelAttr](
	[artifactNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactLevelUpMaterial]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactLevelUpMaterial](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[exp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactRoom]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactRoom](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[continuationChallengeWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactRoomFloor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactRoomFloor](
	[floor] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[recommendBattlePower] [bigint] NOT NULL,
	[sweepDuration] [int] NOT NULL,
	[sweepDia] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ArtifactRoomMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ArtifactRoomMonsterArrange](
	[floor] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AttainmentEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AttainmentEntry](
	[entryNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AttainmentEntryReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AttainmentEntryReward](
	[entryNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Attr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Attr](
	[attrId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[battlePowerFactor] [int] NOT NULL,
	[attrCategoryId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AttrCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AttrCategory](
	[attrCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_AttrValue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_AttrValue](
	[attrValueId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BanWord]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BanWord](
	[type] [int] NOT NULL,
	[word] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BattlefieldSupportEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BattlefieldSupportEvent](
	[supplySupportQuestExploitPointFactor] [float] NOT NULL,
	[killExploitPointFactor] [float] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Biography]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Biography](
	[biographyId] [int] NOT NULL,
	[_title] [nvarchar](20) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[openConditionTextKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BiographyQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BiographyQuest](
	[biographyId] [int] NOT NULL,
	[questNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetDungeonId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BiographyQuestDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BiographyQuestDungeon](
	[dungeonId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BiographyQuestDungeonWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BiographyQuestDungeonWave](
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetType] [int] NOT NULL,
	[targetArrangeKey] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BiographyQuestMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BiographyQuestMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BiographyQuestStartDialogue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BiographyQuestStartDialogue](
	[biographyId] [int] NOT NULL,
	[questNo] [int] NOT NULL,
	[dialogueNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BiographyReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BiographyReward](
	[biographyId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Blessing]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Blessing](
	[blessingId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [int] NOT NULL,
	[senderItemRewardId] [bigint] NOT NULL,
	[receiverGoldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BlessingTargetLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BlessingTargetLevel](
	[targetLevelId] [int] NOT NULL,
	[targetHeroLevel] [int] NOT NULL,
	[prospectQuestObjectiveLevel] [int] NOT NULL,
	[prospectQuestObjectiveLimitTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BountyHunterQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BountyHunterQuest](
	[questId] [int] NOT NULL,
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_content] [nvarchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetMonsterMinLevel] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[completionGuideContentKey] [varchar](40) NOT NULL,
	[startGuideContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_BountyHunterQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_BountyHunterQuestReward](
	[questItemGrade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Cart]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Cart](
	[cartId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[prefabName] [varchar](40) NOT NULL,
	[grade] [int] NOT NULL,
	[ridableRange] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CartGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CartGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CashProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CashProduct](
	[productId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[inAppProductKey] [varchar](100) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[type] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL,
	[vipPoint] [int] NOT NULL,
	[firstPurchaseBonusUnOwnDia] [int] NOT NULL,
	[saleable] [bit] NOT NULL,
	[sortNo] [int] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Chapter]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Chapter](
	[chapterNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[contentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ChargeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ChargeEvent](
	[eventId] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ChargeEventMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ChargeEventMission](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[requiredUnOwnDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ChargeEventMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ChargeEventMissionReward](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ChattingType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ChattingType](
	[chattingType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ClientTutorialStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ClientTutorialStep](
	[tutorialId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[textKey] [varchar](40) NOT NULL,
	[textxPosition] [float] NOT NULL,
	[textyPosition] [float] NOT NULL,
	[arrowxPosition] [float] NOT NULL,
	[arrowyPosition] [float] NOT NULL,
	[arrowyRotation] [float] NOT NULL,
	[clickxPosition] [float] NOT NULL,
	[clickyPosition] [float] NOT NULL,
	[clickWidth] [int] NOT NULL,
	[clickHeight] [int] NOT NULL,
	[effectName] [varchar](100) NOT NULL,
	[effectxPosition] [float] NOT NULL,
	[effectyPosition] [float] NOT NULL,
	[effectWidth] [int] NOT NULL,
	[effectHeight] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Constellation]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Constellation](
	[constellationId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredConditionValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConstellationCycle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConstellationCycle](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConstellationCycleBuff]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConstellationCycleBuff](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConstellationEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConstellationEntry](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[requiredStarEssense] [int] NOT NULL,
	[requiredGold] [bigint] NOT NULL,
	[successRate] [int] NOT NULL,
	[failPoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConstellationEntryBuff]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConstellationEntryBuff](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[cycle] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConstellationStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConstellationStep](
	[constellationId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConsumeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConsumeEvent](
	[eventId] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConsumeEventMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConsumeEventMission](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ConsumeEventMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ConsumeEventMissionReward](
	[eventId] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Content]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Content](
	[contentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[iconId] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Continent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Continent](
	[continentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[isNationTerritory] [tinyint] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[isNationWarTarget] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentMapMonster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentMapMonster](
	[continentId] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentMonsterArrange](
	[continentId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[regenTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentMonsterArrangePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentMonsterArrangePoolEntry](
	[continentId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[monsterId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentObject]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentObject](
	[objectId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[interactionDuration] [float] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[regenTime] [int] NOT NULL,
	[isPublic] [tinyint] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[interactionTextKey] [varchar](40) NOT NULL,
	[interactionCompletionAnimationEnabled] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentObjectArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentObjectArrange](
	[continentId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[objectId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentPaidRevival]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentPaidRevival](
	[revivalCount] [int] NOT NULL,
	[dia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentRevivalPoint]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentRevivalPoint](
	[continentId] [int] NOT NULL,
	[pointNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ContinentTransmissionExit]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ContinentTransmissionExit](
	[npcId] [int] NOT NULL,
	[exitNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Costume]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Costume](
	[costumeId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[periodLimitDay] [int] NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeAttr](
	[costumeId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeCollection]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeCollection](
	[costumeCollectionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[activationItemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeCollectionAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeCollectionAttr](
	[costumeCollectionId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeCollectionEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeCollectionEntry](
	[costumeCollectionId] [int] NOT NULL,
	[costumeId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeDisplay]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeDisplay](
	[costumeId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[hairPrefabName] [varchar](100) NOT NULL,
	[facePrefabName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeEffect]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeEffect](
	[costumeEffectId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[requiredItemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeEnchantLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeEnchantLevel](
	[enchantLevel] [int] NOT NULL,
	[step] [int] NOT NULL,
	[nextLevelUpSuccessRate] [int] NOT NULL,
	[nextLevelUpRequiredItemCount] [int] NOT NULL,
	[nextLevelUpMaxLuckyValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CostumeEnchantLevelAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CostumeEnchantLevelAttr](
	[costumeId] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Creature]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Creature](
	[creatureId] [int] NOT NULL,
	[creatureCharacterId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[minQuality] [int] NOT NULL,
	[maxQuality] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureAdditionalAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureAdditionalAttr](
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureAdditionalAttrValue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureAdditionalAttrValue](
	[attrId] [int] NOT NULL,
	[injectionLevel] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureBaseAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureBaseAttr](
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureBaseAttrValue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureBaseAttrValue](
	[creatureId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[minAttrValue] [int] NOT NULL,
	[maxAttrValue] [int] NOT NULL,
	[incAttrValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCard]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCard](
	[creatureCardId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[categoryId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[attack] [int] NOT NULL,
	[life] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardCollection]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardCollection](
	[collectionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[categoryId] [int] NOT NULL,
	[grade] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardCollectionAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardCollectionAttr](
	[collectionId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardCollectionCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardCollectionCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardCollectionEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardCollectionEntry](
	[collectionId] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardCollectionGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardCollectionGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[collectionFamePoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[saleSoulPowder] [int] NOT NULL,
	[disassembleSoulPowder] [int] NOT NULL,
	[compositionSoulPowder] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardLuckyShop]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardLuckyShop](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[freePickCount] [int] NOT NULL,
	[freePickWaitingTime] [int] NOT NULL,
	[pick1TimeDia] [int] NOT NULL,
	[pick5TimeDia] [int] NOT NULL,
	[pick5TimeSpecialPickCount] [int] NOT NULL,
	[pick1TimeGoldRewardId] [bigint] NOT NULL,
	[pick5TimeGoldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardLuckyShopNormalPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardLuckyShopNormalPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardLuckyShopSpecialPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardLuckyShopSpecialPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardShopFixedProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardShopFixedProduct](
	[productId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[saleSoulPowder] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardShopRandomProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardShopRandomProduct](
	[productId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCardShopRefreshSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCardShopRefreshSchedule](
	[scheduleId] [int] NOT NULL,
	[refreshTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCharacter]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCharacter](
	[creatureCharacterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[imageName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureCharacterSkillPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureCharacterSkillPoolEntry](
	[creatureCharacterId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[skillId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureFarmQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureFarmQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureFarmQuestExpReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureFarmQuestExpReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureFarmQuestItemReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureFarmQuestItemReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureFarmQuestMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureFarmQuestMission](
	[missionNo] [int] NOT NULL,
	[targetType] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetAutoCompletionTime] [int] NOT NULL,
	[targetCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureFarmQuestMissionMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureFarmQuestMissionMonsterArrange](
	[missionNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureFarmQuestMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureFarmQuestMissionReward](
	[missionNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[colorCode] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureInjectionLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureInjectionLevel](
	[injectionLevel] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
	[requiredGold] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureInjectionLevelUpEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureInjectionLevelUpEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[isCritical] [bit] NOT NULL,
	[minInjectionExp] [int] NOT NULL,
	[maxInjectionExp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureLevel](
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
	[maxInjectionLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureSkill]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureSkill](
	[skillId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[effectTextKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureSkillAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureSkillAttr](
	[skillId] [int] NOT NULL,
	[skillGrade] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureSkillCountPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureSkillCountPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[skillCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureSkillGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureSkillGrade](
	[skillGrade] [int] NOT NULL,
	[point] [int] NOT NULL,
	[colorCode] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureSkillSlotOpenRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureSkillSlotOpenRecipe](
	[slotCount] [int] NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_CreatureSkillSlotProtection]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_CreatureSkillSlotProtection](
	[protectionCount] [int] NOT NULL,
	[requiredSkillCount] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyAttendRewardEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyAttendRewardEntry](
	[day] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyChargeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyChargeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyChargeEventMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyChargeEventMission](
	[missionNo] [int] NOT NULL,
	[requiredUnOwnDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyChargeEventMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyChargeEventMissionReward](
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyConsumeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyConsumeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyConsumeEventMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyConsumeEventMission](
	[missionNo] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyConsumeEventMissionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyConsumeEventMissionReward](
	[missionNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuest](
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[playCount] [int] NOT NULL,
	[freeRefreshCount] [int] NOT NULL,
	[refreshRequiredGold] [int] NOT NULL,
	[slotCount] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestExtraReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestExtraReward](
	[completionCount] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestGrade](
	[grade] [int] NOT NULL,
	[point] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[immediateCompletionRequiredGold] [int] NOT NULL,
	[autoCompletionRequiredTime] [int] NOT NULL,
	[rewardVipPoint] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[availableItemRewardId1] [int] NOT NULL,
	[availableItemRewardId2] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestLevelReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestLevelReward](
	[objectiveType] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[rewardExp] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestMission]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestMission](
	[missionId] [int] NOT NULL,
	[_title] [nvarchar](20) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosotion] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[targetDescriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestObjective]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestObjective](
	[objectiveType] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[pickPoint] [int] NOT NULL,
	[objectiveCount] [int] NOT NULL,
	[rewardGold] [int] NOT NULL,
	[completionGold] [int] NOT NULL,
	[autoCompletionDuration] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestObjectiveType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestObjectiveType](
	[objectiveType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DailyQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DailyQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DialogueMainQuestDialogueEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DialogueMainQuestDialogueEntry](
	[nationId] [int] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[_content] [nvarchar](400) NOT NULL,
	[contentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DiaShopCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DiaShopCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredVipLevel] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DiaShopProduct]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DiaShopProduct](
	[productId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[costumeProductType] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[tagType] [int] NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyItemId] [int] NOT NULL,
	[originalPrice] [int] NOT NULL,
	[price] [int] NOT NULL,
	[buyLimitType] [int] NOT NULL,
	[buyLimitCount] [int] NOT NULL,
	[periodType] [int] NOT NULL,
	[periodStartTime] [datetime] NULL,
	[periodEndTime] [datetime] NULL,
	[periodDayOfWeek] [int] NOT NULL,
	[recommended] [bit] NOT NULL,
	[isLimitEdition] [bit] NOT NULL,
	[sellable] [bit] NOT NULL,
	[categorySortNo] [int] NOT NULL,
	[limitEditionSortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DimensionInfiltrationEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DimensionInfiltrationEvent](
	[secretLetterQuestExploitPointFactor] [float] NOT NULL,
	[killExploitPointFactor] [float] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DimensionRaidQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DimensionRaidQuest](
	[_content] [varchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[targetInteractionDuration] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DimensionRaidQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DimensionRaidQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DimensionRaidQuestStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DimensionRaidQuestStep](
	[step] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[_targetInteractionText] [varchar](100) NOT NULL,
	[targetInteractionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[enterRequiredItemId] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[baseMaxStep] [int] NOT NULL,
	[additionalStepOpenRate] [int] NOT NULL,
	[areaEffectPrefabName] [varchar](100) NOT NULL,
	[areaEffectScale] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[trapPenaltyMoveSpeed] [int] NOT NULL,
	[trapPenaltyDuration] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestMonsterArrange](
	[stepNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL,
	[trapDamageFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestObstacle]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[scale] [float] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestStep](
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[targetAreaDisplayed] [bit] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestStepReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestStepReward](
	[stepNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DragonNestTrap]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DragonNestTrap](
	[trapId] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[damage] [int] NOT NULL,
	[activationStepNo] [int] NOT NULL,
	[deactivationStepNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DropCountPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DropCountPoolEntry](
	[dropCountPoolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DropGearGradePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DropGearGradePoolEntry](
	[dropGearGradePoolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[grade] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DropObjectPoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DropObjectPoolEntry](
	[dropObjectPoolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[type] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DungeonArea]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DungeonArea](
	[dungeonAreaId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_DungeonAreaEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_DungeonAreaEntry](
	[dungeonAreaId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Elemental]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Elemental](
	[elementalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_EliteDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_EliteDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](100) NOT NULL,
	[_description] [int] NOT NULL,
	[descriptionKey] [varchar](100) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[baseEnterCount] [int] NOT NULL,
	[enterCountAddInterval] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[monsterxPosition] [float] NOT NULL,
	[monsteryPosition] [float] NOT NULL,
	[monsterzPosition] [float] NOT NULL,
	[monsteryRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_EliteMonster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_EliteMonster](
	[eliteMonsterId] [int] NOT NULL,
	[eliteMonsterMasterId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[starGrade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_EliteMonsterCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_EliteMonsterCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[recommendMinHeroLevel] [int] NOT NULL,
	[recommendMaxHeroLevel] [int] NOT NULL,
	[continentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_EliteMonsterKillAttrValue]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_EliteMonsterKillAttrValue](
	[eliteMonsterId] [int] NOT NULL,
	[killCount] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_EliteMonsterMaster]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_EliteMonsterMaster](
	[eliteMonsterMasterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[level] [int] NOT NULL,
	[displayMonsterId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_EliteMonsterSpawnSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_EliteMonsterSpawnSchedule](
	[eliteMonsterMasterId] [int] NOT NULL,
	[scheduleNo] [int] NOT NULL,
	[spawnTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Episode]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Episode](
	[chapterNo] [int] NOT NULL,
	[episodeNo] [int] NOT NULL,
	[_name] [nvarchar](20) NULL,
	[nameKey] [varchar](20) NOT NULL,
	[rewardExp] [int] NOT NULL,
	[rewardGold] [int] NOT NULL,
	[additionalRewardItemId] [int] NOT NULL,
	[additionalRewardItemCount] [int] NOT NULL,
	[additionalRewardOwned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExchangePoolEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExchangePoolEntry](
	[poolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[gearGrade] [int] NOT NULL,
	[gearOwned] [bit] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[readyMadeGearId] [int] NOT NULL,
	[readyMadeGearOwned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[waveIntervalTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[sweepExpRewardFactor] [float] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[startGuideContentKey] [varchar](40) NOT NULL,
	[lakChargeMonsterAppearContentKey] [varchar](40) NOT NULL,
	[lakChargeMonsterKillContentKey] [varchar](40) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpDungeonDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpDungeonDifficulty](
	[difficulty] [int] NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[_ObjectiveTitle] [nvarchar](80) NOT NULL,
	[objectiveTitleKey] [varchar](20) NOT NULL,
	[recommendLevel] [int] NOT NULL,
	[baseRewardExp] [bigint] NOT NULL,
	[additionalRewardExp] [bigint] NOT NULL,
	[penaltyRewardMinExp] [bigint] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpDungeonDifficultyWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpDungeonDifficultyWave](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[waveLimitTime] [int] NOT NULL,
	[lakChargeMonsterRate] [int] NOT NULL,
	[lakChargeAmount] [int] NOT NULL,
	[lakChargeMonsterArrangeId] [bigint] NOT NULL,
	[lakChargeMonsterxPosition] [float] NOT NULL,
	[lakChargeMonsteryPosition] [float] NOT NULL,
	[lakChargeMonsterzPosition] [float] NOT NULL,
	[lakChargeMonsterYRotationType] [int] NOT NULL,
	[lakChargeMonsteryRotation] [float] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpDungeonDifficultyWaveArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpDungeonDifficultyWaveArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[spawnXPosition] [float] NOT NULL,
	[spawnYPosition] [float] NOT NULL,
	[spawnZPosition] [float] NOT NULL,
	[spawnRadius] [float] NOT NULL,
	[spawnYRotationType] [int] NOT NULL,
	[spawnYRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpDungeonFreeRevival]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpDungeonFreeRevival](
	[revivalCount] [int] NOT NULL,
	[revivalDelayTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpDungeonMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpDungeonMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExploitPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExploitPointReward](
	[exploitPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ExpReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ExpReward](
	[expRewardId] [bigint] NOT NULL,
	[value] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltar]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltar](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[halidomMonsterLifetime] [int] NOT NULL,
	[halidomMonsterSpawnTextKey] [varchar](20) NOT NULL,
	[halidomDisplayDuration] [int] NOT NULL,
	[halidomAcquisitionRate] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarHalidom]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarHalidom](
	[halidomId] [int] NOT NULL,
	[halidomElementalId] [int] NOT NULL,
	[halidomLevel] [int] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarHalidomCollectionReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarHalidomCollectionReward](
	[rewardNo] [int] NOT NULL,
	[collectionCount] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarHalidomElemental]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarHalidomElemental](
	[halidomElementalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[collectionItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarHalidomLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarHalidomLevel](
	[halidomLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarStage]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarStage](
	[stageId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarStageWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarStageWave](
	[stageId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL,
	[halidomMonsterSpawnRate] [int] NOT NULL,
	[halidomMonsterXPosition] [float] NOT NULL,
	[halidomMonsterYPosition] [float] NOT NULL,
	[halidomMonsterZPosition] [float] NOT NULL,
	[halidomMonsterYRotationType] [int] NOT NULL,
	[halidomMonsterYRotation] [float] NOT NULL,
	[targetArrangeKey] [int] NOT NULL,
	[type] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FearAltarStageWaveMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FearAltarStageWaveMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[stageId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterType] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldBoss]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldBoss](
	[fieldBossId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
	[sortNo] [int] NOT NULL,
	[imageName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldBossEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldBossEvent](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[rewardRadius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldBossEventAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldBossEventAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldBossEventSchedule]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldBossEventSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldOfHonor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldOfHonor](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetYRotation] [float] NOT NULL,
	[winnerHonorPointRewardId] [bigint] NOT NULL,
	[loserHonorPointRewardId] [bigint] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldOfHonorLevelReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldOfHonorLevelReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldOfHonorRankingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldOfHonorRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FieldOfHonorTarget]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FieldOfHonorTarget](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[targetHighRankingGap] [int] NOT NULL,
	[targetLowRankingGap] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FirstChargeEvent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FirstChargeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FirstChargeEventReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FirstChargeEventReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FishingQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FishingQuest](
	[npcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[castingCount] [int] NOT NULL,
	[castingInterval] [int] NOT NULL,
	[partyRadius] [float] NOT NULL,
	[partyExpRewardFactor] [float] NOT NULL,
	[partyRecommendPopUpDisplayDuration] [int] NOT NULL,
	[partyRecommendPopUpHideDuration] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[guildExpRewardFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FishingQuestCastingReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FishingQuestCastingReward](
	[baitItemId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FishingQuestGuildTerritorySpot]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FishingQuestGuildTerritorySpot](
	[spotId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_FishingQuestSpot]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_FishingQuestSpot](
	[spotId] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GameConfig]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GameConfig](
	[maxHeroCount] [int] NOT NULL,
	[startContinentId] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[floatstartYRotation] [int] NOT NULL,
	[mainGearOptionAttrMinCount] [int] NOT NULL,
	[mainGearOptionAttrMaxCount] [int] NOT NULL,
	[mailRetentionDay] [int] NOT NULL,
	[mainGearRefinementItemId] [int] NOT NULL,
	[battleModeDuration] [float] NOT NULL,
	[specialSkillId] [int] NOT NULL,
	[specialSkillMaxLak] [int] NOT NULL,
	[freeImmediateRevivalDailyCount] [int] NOT NULL,
	[autoSaftyRevivalWatingTime] [int] NOT NULL,
	[startContinentSaftyRevivalXPosition] [float] NOT NULL,
	[startContinentSaftyRevivalYPosition] [float] NOT NULL,
	[startContinentSaftyRevivalZPosition] [float] NOT NULL,
	[startContinentSaftyRevivalRadius] [float] NOT NULL,
	[startContinentSaftyRevivalYRotationType] [int] NOT NULL,
	[startContinentSaftyRevivalYRotation] [int] NOT NULL,
	[saftyRevivalContinentId] [int] NOT NULL,
	[saftyRevivalXPosition] [float] NOT NULL,
	[saftyRevivalYPosition] [float] NOT NULL,
	[saftyRevivalZPosition] [float] NOT NULL,
	[saftyRevivalRadius] [float] NOT NULL,
	[saftyRevivalYRotationType] [int] NOT NULL,
	[saftyRevivalYRotation] [float] NOT NULL,
	[simpleShopSellSlotCount] [int] NOT NULL,
	[mainGearDisassembleSlotCount] [int] NOT NULL,
	[restRewardGoldReceiveExpRate] [int] NOT NULL,
	[restRewardDiaReceiveExpRate] [int] NOT NULL,
	[partyMemberMaxCount] [int] NOT NULL,
	[partyMemberLogOutDuration] [int] NOT NULL,
	[partyInvitationLifetime] [int] NOT NULL,
	[partyApplicationLifetime] [int] NOT NULL,
	[partyCallCoolTime] [int] NOT NULL,
	[chattingMaxLength] [int] NOT NULL,
	[chattingMinInterval] [int] NOT NULL,
	[worldChattingDisplayDuration] [float] NOT NULL,
	[chattingSendHistoryMaxCount] [int] NOT NULL,
	[worldChattingItemId] [int] NOT NULL,
	[weekendAttendItemRewardId] [bigint] NOT NULL,
	[mountQualityUpRequiredLevelUpCount] [int] NOT NULL,
	[equippedMountAttrFactor] [float] NOT NULL,
	[unequippedMountAttrFactor] [float] NOT NULL,
	[mountGearOptionAttrCount] [int] NOT NULL,
	[mountGearRefinementItemId] [int] NOT NULL,
	[mountLevelUpItemId] [int] NOT NULL,
	[chattingBubbleDisplayDuration] [int] NOT NULL,
	[dungeonFreeSweepDailyCount] [int] NOT NULL,
	[dungeonSweepItemId] [int] NOT NULL,
	[chattingDisplayMaxCount] [int] NOT NULL,
	[wingEnchantItemId] [int] NOT NULL,
	[wingEnchantExp] [int] NOT NULL,
	[maxStamina] [int] NOT NULL,
	[staminaRecoveryTime] [int] NOT NULL,
	[defaultToastDisplayDuration] [float] NOT NULL,
	[defaultToastDisplayCount] [int] NOT NULL,
	[itemToastDisplayDuration] [float] NOT NULL,
	[battlePowerToastDisplayDuration] [float] NOT NULL,
	[contentOpenToastDisplayDuration] [float] NOT NULL,
	[locationAreaToastDisplayDuration] [float] NOT NULL,
	[wingVisibleMinVipLevel] [int] NOT NULL,
	[hpPotionAutoUseHpRate] [int] NOT NULL,
	[standingBattleRange] [float] NOT NULL,
	[shortDistanceBattleRange] [float] NOT NULL,
	[optimizationModeWaitingTime] [int] NOT NULL,
	[deadWarningDisplayHpRate] [int] NOT NULL,
	[pvpMinHeroLevel] [int] NOT NULL,
	[cartNormalSpeed] [int] NOT NULL,
	[cartHighSpeed] [int] NOT NULL,
	[cartAccelSuccessRate] [int] NOT NULL,
	[cartHighSpeedDuration] [int] NOT NULL,
	[cartHighSpeedDurationExtension] [int] NOT NULL,
	[cartAccelCoolTime] [int] NOT NULL,
	[worldLevelExpBuffMinHeroLevel] [int] NOT NULL,
	[nationTransmissionExitXPosition] [float] NOT NULL,
	[nationTransmissionExitYPosition] [float] NOT NULL,
	[nationTransmissionExitZPosition] [float] NOT NULL,
	[nationTransmissionExitRadius] [float] NOT NULL,
	[nationTransmissionExitYRotationType] [int] NOT NULL,
	[nationTransmissionExitYRotation] [float] NOT NULL,
	[guideToastDisplayDuration] [int] NOT NULL,
	[nationTransmissionRequiredHeroLevel] [int] NOT NULL,
	[bountyHunterQuestMaxCount] [int] NOT NULL,
	[todayMissionCount] [int] NOT NULL,
	[fieldOfHonorDisplayMaxRanking] [int] NOT NULL,
	[fieldOfHonorDisplayHistoryCount] [int] NOT NULL,
	[rankingDisplayMaxCount] [int] NOT NULL,
	[guildRequiredHeroLevel] [int] NOT NULL,
	[guildCreationRequiredVipLevel] [int] NOT NULL,
	[guildCreationRequiredDia] [int] NOT NULL,
	[guildRejoinIntervalTime] [int] NOT NULL,
	[guildDailyApplicationMaxCount] [int] NOT NULL,
	[guildDailyBanishmentMaxCount] [int] NOT NULL,
	[guildInvitationLifetime] [int] NOT NULL,
	[guildNoticeMaxLength] [int] NOT NULL,
	[guildApplicationReceptionMaxCount] [int] NOT NULL,
	[guildViceMasterCount] [int] NOT NULL,
	[guildLordCount] [int] NOT NULL,
	[guildRankingDisplayMaxCount] [int] NOT NULL,
	[rankOpenRequiredMainQuestNo] [int] NOT NULL,
	[wingOpenRequiredHeroLevel] [int] NOT NULL,
	[wingOpenProvideWingId] [int] NOT NULL,
	[guildCallLifetime] [int] NOT NULL,
	[guildCallRadius] [float] NOT NULL,
	[nationCallLifeTime] [int] NOT NULL,
	[nationCallRadius] [float] NOT NULL,
	[guildDailyObjectiveNoticeTextKey] [varchar](20) NOT NULL,
	[guildDailyObjectiveNoticeCoolTime] [int] NOT NULL,
	[guildHuntingDonationMaxCount] [int] NOT NULL,
	[guildHuntingDonationItemId] [int] NOT NULL,
	[guildHuntingDonationItemRewardId] [int] NOT NULL,
	[guildHuntingDonationCompletionItemRewardId] [int] NOT NULL,
	[defaultGuildWeeklyObjectiveId] [int] NOT NULL,
	[nationWarMonsterBattleModeDuration] [int] NOT NULL,
	[signBoardDisplayDuration] [int] NOT NULL,
	[noticeBoardDisplayDuration] [int] NOT NULL,
	[creatureCardShopRandomProductCount] [int] NOT NULL,
	[creatureCardShopPaidRefreshDia] [int] NOT NULL,
	[restRewardRequiredHeroLevel] [int] NOT NULL,
	[guideActivationRequiredHeroLevel] [int] NOT NULL,
	[accelerationRequiredMoveDuration] [int] NOT NULL,
	[accelerationMoveSpeed] [int] NOT NULL,
	[sceneryQuestRequiredMainQuestNo] [int] NOT NULL,
	[menuContentOpenPreviewRequiredHeroLevel] [int] NOT NULL,
	[monsterGroggyDuration] [int] NOT NULL,
	[monsterStealDuration] [int] NOT NULL,
	[rookieGiftScratchOpenDuration] [int] NOT NULL,
	[openGiftRequiredHeroLevel] [int] NOT NULL,
	[bountyHunterQuestRequiredHeroLevel] [int] NOT NULL,
	[open7DayEventRequiredMainQuestNo] [int] NOT NULL,
	[taskConsignmentRequiredVipLevel] [int] NOT NULL,
	[eliteMonsterKillApplicationRequiredHeroLevel] [int] NOT NULL,
	[nationAllianceUnavailableStartTime] [int] NOT NULL,
	[nationAllianceUnavailableEndTime] [int] NOT NULL,
	[nationAllianceRequiredFund] [bigint] NOT NULL,
	[nationAllianceRenounceUnavailableDuration] [int] NOT NULL,
	[nationBasePower] [int] NOT NULL,
	[costumeEnchantItemId] [int] NOT NULL,
	[costumeCollectionActivationItemId] [int] NOT NULL,
	[costumeCollectionShuffleItemId] [int] NOT NULL,
	[costumeCollectionShuffleItemCount] [int] NOT NULL,
	[mountAwakeningRequiredHeroLevel] [int] NOT NULL,
	[mountAwakeningItemId] [int] NOT NULL,
	[mountPotionAttrItemId] [int] NOT NULL,
	[artifactRequiredConditionType] [int] NOT NULL,
	[artifactRequiredConditionValue] [int] NOT NULL,
	[artifactMaxLevel] [int] NOT NULL,
	[chargeEventRequiredHeroLevel] [int] NOT NULL,
	[consumeEventRequiredHeroLevel] [int] NOT NULL,
	[jobChangeRequiredHeroLevel] [int] NOT NULL,
	[jobChangeRequiredItemId] [int] NOT NULL,
	[jobChangeQuestCompletionClientTutorialId] [int] NOT NULL,
	[warehouseRequiredVipLevel] [int] NOT NULL,
	[freeWarehouseSlotCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Gear]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Gear](
	[gearId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[jobId] [int] NOT NULL,
	[gearType] [int] NOT NULL,
	[tier] [int] NOT NULL,
	[sellingPrice] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearBaseAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearBaseAttr](
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearCategory]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[socketCount] [int] NOT NULL,
	[royalOptionEnabled] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearCompositionRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearCompositionRecipe](
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
	[compositedGearId] [int] NOT NULL,
	[unOwnDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearDisassembleRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearDisassembleRecipe](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[no] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearEnchantRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearEnchantRecipe](
	[gearType] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemCount] [int] NOT NULL,
	[luckyMaterialItemId] [int] NOT NULL,
	[luckyMaterialItemCount] [int] NOT NULL,
	[penaltyPreventionItemId] [int] NOT NULL,
	[penaltyPreventionItemCount] [int] NOT NULL,
	[gold] [bigint] NOT NULL,
	[successRate] [int] NOT NULL,
	[luckyMaxIncreaseEnchantLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearLevelBaseAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearLevelBaseAttr](
	[jobId] [int] NOT NULL,
	[gearType] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[gearLevel] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearOptionAttrGrade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearOptionAttrGrade](
	[gearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[pickPoint] [int] NOT NULL,
	[minValue] [int] NOT NULL,
	[maxValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearOptionAttrInheritRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearOptionAttrInheritRecipe](
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[gold] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearPassiveAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearPassiveAttr](
	[gearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearRefinementRecipe]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearRefinementRecipe](
	[gearType] [int] NOT NULL,
	[level] [int] NOT NULL,
	[material1ItemId] [int] NOT NULL,
	[material1ItemCount] [int] NOT NULL,
	[material2ItemId] [int] NOT NULL,
	[material2ItemCount] [int] NOT NULL,
	[gold] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearRoyalType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearRoyalType](
	[royalType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearTier]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearTier](
	[tier] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[maxGearLevel] [int] NOT NULL,
	[maxEnchantLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearTierRoyalAttr]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearTierRoyalAttr](
	[tier] [int] NOT NULL,
	[royalType] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
	[compositeValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearType]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearType](
	[gearType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[categoryId] [int] NOT NULL,
	[gearSlotIndex] [int] NOT NULL,
	[inventoryCategoryId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearTypeEnchantLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearTypeEnchantLevel](
	[gearType] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[baseAttrFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GearTypeSocket]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GearTypeSocket](
	[gearType] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GoldDungeon]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GoldDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[monsterEscapexPosition] [float] NOT NULL,
	[monsterEscapeyPosition] [float] NOT NULL,
	[monsterEscapezPosition] [float] NOT NULL,
	[monsterEscapeRadius] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GoldDungeonDifficulty]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GoldDungeonDifficulty](
	[difficulty] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GoldDungeonStep]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GoldDungeonStep](
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GoldDungeonStepMonsterArrange]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GoldDungeonStepMonsterArrange](
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[isFugitive] [tinyint] NOT NULL,
	[activationWaveNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GoldDungeonStepWave]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GoldDungeonStepWave](
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[limitTime] [int] NOT NULL,
	[nextWaveIntervalTime] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GoldReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GoldReward](
	[goldRewardId] [bigint] NOT NULL,
	[value] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Grade]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Grade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[gearOptionAttrCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildAltar]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildAltar](
	[guildTerritoryNpcId] [int] NOT NULL,
	[dailyHeroMaxMoralPoint] [int] NOT NULL,
	[dailyGuildMaxMoralPoint] [int] NOT NULL,
	[donationGold] [int] NOT NULL,
	[donationRewardMoralPoint] [int] NOT NULL,
	[spellInjectionDuration] [int] NOT NULL,
	[spellInjectionRewardMoralPoint] [int] NOT NULL,
	[defenseMonsterArrangeId] [bigint] NOT NULL,
	[defenseRewardMoralPoint] [int] NOT NULL,
	[defenseCooltime] [int] NOT NULL,
	[defenseLimitTime] [int] NOT NULL,
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL,
	[guildBuildingPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildAltarDefenseMonsterAttrFactor]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildAltarDefenseMonsterAttrFactor](
	[heroLevel] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildAltarReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildAltarReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildBlessingBuff]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildBlessingBuff](
	[buffId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[expRewardFactor] [float] NOT NULL,
	[duration] [int] NOT NULL,
	[dia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildBuilding]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildBuilding](
	[buildingId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildBuildingLevel]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildBuildingLevel](
	[buildingId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpGuildBuildingPoint] [int] NOT NULL,
	[nextLevelUpGuildFund] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildBuildingPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildBuildingPointReward](
	[guildBuildingPointRewardId] [bigint] NOT NULL,
	[value] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildContent]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildContent](
	[guildContentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[_rewardText] [varchar](100) NOT NULL,
	[rewardTextKey] [varchar](40) NOT NULL,
	[_eventTimeText] [varchar](100) NOT NULL,
	[eventTimeTextKey] [varchar](40) NOT NULL,
	[_lockText] [varchar](100) NOT NULL,
	[lockTextKey] [varchar](40) NOT NULL,
	[achievementPoint] [int] NOT NULL,
	[isDailyObjective] [tinyint] NOT NULL,
	[sortNo] [int] NOT NULL,
	[taskId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildContentAvailableReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildContentAvailableReward](
	[guildContentId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildContributionPointReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildContributionPointReward](
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildDailyObjectiveReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildDailyObjectiveReward](
	[rewardNo] [int] NOT NULL,
	[completionMemberCount] [int] NOT NULL,
	[itemReward1Id] [bigint] NOT NULL,
	[itemReward2Id] [bigint] NOT NULL,
	[itemReward3Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildDonationEntry]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildDonationEntry](
	[entryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [bigint] NOT NULL,
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildFarmQuest]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildFarmQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[questGuildTerritoryNpcId] [int] NOT NULL,
	[targetGuildTerritoryNpcId] [int] NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[interactionTextKey] [varchar](40) NOT NULL,
	[completionItemRewardId] [bigint] NOT NULL,
	[questStartDialogueKey] [varchar](40) NOT NULL,
	[questCompletionDialogueKey] [varchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetCompletionKey] [varchar](40) NOT NULL,
	[completionGuildContributionPointRewardId] [bigint] NOT NULL,
	[completionGuildBuildingPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildFarmQuestReward]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildFarmQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildFoodWarehouse]    Script Date: 2023/4/7 16:13:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildFoodWarehouse](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[limitCount] [int] NOT NULL,
	[guildTerritoryNpcId] [int] NOT NULL,
	[levelUpRequiredItemType] [int] NOT NULL,
	[fullLevelItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildFoodWarehouseLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildFoodWarehouseLevel](
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildFoodWarehouseStockReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildFoodWarehouseStockReward](
	[itemId] [int] NOT NULL,
	[heroLevel] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildFundReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildFundReward](
	[guildFundRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildHuntingQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildHuntingQuest](
	[limitCount] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[completionDialogueKey] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildHuntingQuestObjective]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildHuntingQuestObjective](
	[objectiveId] [int] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[point] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[_targetDescription] [int] NOT NULL,
	[targetDescriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildLevel](
	[level] [int] NOT NULL,
	[maxMemberCount] [int] NOT NULL,
	[dailyItemRewardId] [bigint] NOT NULL,
	[altarItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildMemberGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildMemberGrade](
	[memberGrade] [int] NOT NULL,
	[applicationAcceptanceEnabled] [tinyint] NOT NULL,
	[invitationEnabled] [tinyint] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[guildFoodWarehouseRewardCollectionEnabled] [tinyint] NOT NULL,
	[guildSupplySupportQuestEnabled] [tinyint] NOT NULL,
	[guildBuildingLevelUpEnabled] [tinyint] NOT NULL,
	[guildCallEnabled] [tinyint] NOT NULL,
	[weeklyObjectiveSettingEnabled] [tinyint] NOT NULL,
	[guildBlessingBuffEnabled] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildMission](
	[missionId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetSummonMonsterArrangeId] [bigint] NOT NULL,
	[targetSummonMonsterRadius] [bigint] NOT NULL,
	[targetSummonMonsterKillLimitTime] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[guildContributionPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL,
	[guildBuildingPointRewardId] [bigint] NOT NULL,
	[_targetDescription] [int] NOT NULL,
	[targetDescriptionKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildMissionQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildMissionQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[limitCount] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[completionItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildMissionQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildMissionQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildPointReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildPointReward](
	[guildPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildSkill](
	[guildSkillId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildSkillAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildSkillAttr](
	[guildSkillId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildSkillLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildSkillLevel](
	[guildSkillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[requiredGuildContributionPoint] [int] NOT NULL,
	[requiredLaboratoryLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildSkillLevelAttrValue]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildSkillLevelAttrValue](
	[guildSkillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildSupplySupportQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildSupplySupportQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[limitTime] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[cartId] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[guildBuildingPointRewardId] [bigint] NOT NULL,
	[guildFundRewardId] [bigint] NOT NULL,
	[completionRewardableRadius] [float] NOT NULL,
	[completionGuildContributionPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildSupplySupportQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildSupplySupportQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildTerritory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildTerritory](
	[sceneName] [varchar](100) NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startRadius] [int] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildTerritoryNpc]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildTerritoryNpc](
	[npcId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_dialogue] [varchar](100) NOT NULL,
	[dialogueKey] [varchar](40) NOT NULL,
	[dialogueEnabled] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_GuildWeeklyObjective]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_GuildWeeklyObjective](
	[objectiveId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](20) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[completionMemberCount] [int] NOT NULL,
	[itemReward1Id] [bigint] NOT NULL,
	[itemReward2Id] [bigint] NOT NULL,
	[itemReward3Id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Hideout]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Hideout](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
	[enterCount] [int] NOT NULL,
	[chargeCount] [int] NOT NULL,
	[chargeDia] [int] NOT NULL,
	[maxMemberCount] [int] NOT NULL,
	[waveCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[waveIntervalTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[rewardDuration] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[directEnterItemId] [int] NOT NULL,
	[paidRevivalDia] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[resultDelayTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutClearRank]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutClearRank](
	[rank] [int] NOT NULL,
	[starCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutDifficulty](
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[recommendLevel] [int] NOT NULL,
	[exceptionalRewardItemId] [int] NOT NULL,
	[exceptionalRewardCount] [int] NOT NULL,
	[exceptionalRewardOwned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutDifficultyAdditionalReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutDifficultyAdditionalReward](
	[difficulty] [int] NOT NULL,
	[rank] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutDifficultyBaseReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutDifficultyBaseReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutDifficultyWaveArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutDifficultyWaveArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutPenalty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutPenalty](
	[rank] [int] NOT NULL,
	[revivalDelayTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HideoutSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HideoutSchedule](
	[scheduleId] [int] NOT NULL,
	[openTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HolyWarQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HolyWarQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HolyWarQuestGloryLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HolyWarQuestGloryLevel](
	[gloryLevel] [int] NOT NULL,
	[requiredKillCount] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HolyWarQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HolyWarQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HolyWarQuestSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HolyWarQuestSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HonorPointReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HonorPointReward](
	[honorPointRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HonorShopProduct]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HonorShopProduct](
	[productId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[requiredHonorPoint] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HuntingDungeon]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HuntingDungeon](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
	[consumeLakPerSec] [int] NOT NULL,
	[lakExpFactor] [float] NOT NULL,
	[lakGoldFactor] [float] NOT NULL,
	[teleportGoldPerFloor] [int] NOT NULL,
	[directEnterItemId] [int] NOT NULL,
	[defaultEnterFloor] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[paidRevivalDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HuntingDungeonFloor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HuntingDungeonFloor](
	[floor] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[recommendLevel] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[questNpcNameKey] [varchar](20) NOT NULL,
	[questNpcXPosition] [float] NOT NULL,
	[questNpcYPosition] [float] NOT NULL,
	[questNpcZPosition] [float] NOT NULL,
	[questNpcYRotation] [float] NOT NULL,
	[questNpcInteractionMaxRange] [float] NOT NULL,
	[questNpcPrefabName] [varchar](100) NOT NULL,
	[questNpcScale] [float] NOT NULL,
	[questNpcHeight] [int] NOT NULL,
	[questNpcDialogueKey] [varchar](20) NOT NULL,
	[questTitleKey] [varchar](20) NOT NULL,
	[questObjectiveKey] [varchar](20) NOT NULL,
	[questobjectiveMonsterCount] [int] NOT NULL,
	[questCompletionRewardExp] [int] NOT NULL,
	[questCompletionRewardGold] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[questNpcRadius] [float] NOT NULL,
	[questNpcCameraPivotY] [float] NOT NULL,
	[questNpcCameraUad] [float] NOT NULL,
	[questNpcCameraRal] [float] NOT NULL,
	[questNpcCameraZoom] [float] NOT NULL,
	[questNpcCameraTime] [float] NOT NULL,
	[questNpcSafetyzoneRadius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HuntingDungeonFloorMapMonster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HuntingDungeonFloorMapMonster](
	[floor] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HuntingDungeonFloorMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HuntingDungeonFloorMonsterArrange](
	[floor] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[regenTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HuntingDungeonFloorQuestRewardItem]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HuntingDungeonFloorQuestRewardItem](
	[floor] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_HuntingDungeonPortal]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_HuntingDungeonPortal](
	[portalId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[exitXPosition] [float] NOT NULL,
	[exitYPosition] [float] NOT NULL,
	[exitZPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exitYRotation] [float] NOT NULL,
	[linkedPortalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBook]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBook](
	[illustratedBookId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](140) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[explorationPoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookAttr](
	[illustratedBookId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
	[grade] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookAttrGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookAttrGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookExplorationStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookExplorationStep](
	[stepNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[activationExplorationPoint] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookExplorationStepAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookExplorationStepAttr](
	[stepNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookExplorationStepReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookExplorationStepReward](
	[stepNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_IllustratedBookType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_IllustratedBookType](
	[type] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[categoryId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementContent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementContent](
	[contentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[isAchievementDisplay] [bit] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementContentAchievement]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementContentAchievement](
	[achievement] [int] NOT NULL,
	[achievementRate] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[colorCode] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementContentAchievementLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementContentAchievementLevel](
	[contentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[achievementValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementMainCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementMainCategory](
	[mainCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementMainCategoryContent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementMainCategoryContent](
	[mainCategoryId] [int] NOT NULL,
	[contentId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementSubCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementSubCategory](
	[subCategoryId] [int] NOT NULL,
	[mainCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ImprovementSubCategoryContent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ImprovementSubCategoryContent](
	[subCategoryId] [int] NOT NULL,
	[contentId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InAppProduct]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InAppProduct](
	[inAppProductKey] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InAppProductPrice]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InAppProductPrice](
	[inAppProductKey] [varchar](100) NOT NULL,
	[storeType] [int] NOT NULL,
	[currencyCode] [varchar](10) NOT NULL,
	[displayPrice] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWar]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWar](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[enterCount] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMemberCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[startGuideTitleKey] [varchar](20) NOT NULL,
	[startGuideContentKey] [varchar](20) NOT NULL,
	[monsterSpawnDelayTime] [int] NOT NULL,
	[monsterSpawnGuideTitleKey] [varchar](20) NOT NULL,
	[monsterSpawnGuideContentKey] [varchar](20) NOT NULL,
	[heroKillPoint] [int] NOT NULL,
	[buffBoxCreationInterval] [int] NOT NULL,
	[buffBoxCreationCount] [int] NOT NULL,
	[buffBoxXPosition] [float] NOT NULL,
	[buffBoxYPosition] [float] NOT NULL,
	[buffBoxZPosition] [float] NOT NULL,
	[buffBoxRadius] [float] NOT NULL,
	[buffBoxLifetime] [int] NOT NULL,
	[buffDuration] [int] NOT NULL,
	[buffCreationGuideTitleKey] [varchar](20) NOT NULL,
	[buffCreationGuideContentKey] [varchar](20) NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[buffBoxAcquisitionRange] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarBuffBox]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarBuffBox](
	[buffBoxId] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[offenseFactor] [float] NOT NULL,
	[defenseFactor] [float] NOT NULL,
	[hpRecoveryFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarMonsterArrange](
	[arrangeNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarMonsterAttrFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarOpenSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarOpenSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarRankingReward](
	[ranking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InfiniteWarStartPosition]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InfiniteWarStartPosition](
	[positionNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InventoryCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InventoryCategory](
	[inventoryCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_InventorySlotExtendRecipe]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_InventorySlotExtendRecipe](
	[slotCount] [int] NOT NULL,
	[dia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Item]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Item](
	[itemId] [int] NOT NULL,
	[itemType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[requiredMinHeroLevel] [int] NOT NULL,
	[requiredMaxHeroLevel] [int] NOT NULL,
	[saleable] [tinyint] NOT NULL,
	[saleGold] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[usingType] [int] NOT NULL,
	[usingRecommendationEnabled] [int] NOT NULL,
	[longValue1] [bigint] NOT NULL,
	[longValue2] [bigint] NOT NULL,
	[autoUsable] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemCompositionRecipe]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemCompositionRecipe](
	[itemId] [int] NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemCount] [int] NOT NULL,
	[gold] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemLuckyShop]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemLuckyShop](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[freePickCount] [int] NOT NULL,
	[freePickWaitingTime] [int] NOT NULL,
	[pick1TimeDia] [int] NOT NULL,
	[pick5TimeDia] [int] NOT NULL,
	[pick5TimeSpecialPickCount] [int] NOT NULL,
	[pick1TimeGoldRewardId] [bigint] NOT NULL,
	[pick5TimeGoldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemLuckyShopNormalPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemLuckyShopNormalPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemLuckyShopSpecialPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemLuckyShopSpecialPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemMainCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemMainCategory](
	[mainCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemReward](
	[itemRewardId] [bigint] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemSubCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemSubCategory](
	[mainCategoryId] [int] NOT NULL,
	[subCategoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ItemType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ItemType](
	[itemType] [int] NOT NULL,
	[maxCountPerInventorySlot] [int] NOT NULL,
	[mainCategoryId] [int] NOT NULL,
	[subCategoryId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Job]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Job](
	[jobId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[moveSpeed] [int] NOT NULL,
	[offenseType] [int] NOT NULL,
	[elementalId] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[walkMoveSpeed] [int] NOT NULL,
	[parentJobId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobChainSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobChainSkill](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[chainSkillId] [int] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [int] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[castConditionStartTime] [float] NOT NULL,
	[castConditionEndTIme] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobChainSkillHit]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobChainSkillHit](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[chainSkillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[damageFactor] [float] NOT NULL,
	[acquireLak] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobChainSkillHitRune]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobChainSkillHitRune](
	[skillId] [int] NOT NULL,
	[chainSkillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[abnormalStateHitRate] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobChangeQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobChangeQuest](
	[questNo] [int] NOT NULL,
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](100) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[questNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[isTargetOwnNation] [bit] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[targetMonsterArrangeId] [bigint] NOT NULL,
	[targetGuildTerritoryXPosition] [float] NOT NULL,
	[targetGuildTerritoryYPosition] [float] NOT NULL,
	[targetGuildTerritoryZPosition] [float] NOT NULL,
	[targetGuildTerritoryRadius] [float] NOT NULL,
	[targetGuildMonsterArrangeId] [bigint] NOT NULL,
	[completionItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobChangeQuestDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobChangeQuestDifficulty](
	[questNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[isTargetPlaceGuildTerritory] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobCommonSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobCommonSkill](
	[skillId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[formType] [int] NOT NULL,
	[isRequireTarget] [tinyint] NOT NULL,
	[castRange] [float] NOT NULL,
	[hitRange] [float] NOT NULL,
	[coolTime] [float] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [int] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[clientSkillIndex] [int] NOT NULL,
	[mentalStrengthDamage] [int] NOT NULL,
	[buffAbnormalStateId] [int] NOT NULL,
	[openRequiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobLevel](
	[jobId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[maxHpAttrValueId] [bigint] NOT NULL,
	[physicalOffenseAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAttrValueId] [bigint] NOT NULL,
	[physicalDefenseAttrValueId] [bigint] NOT NULL,
	[magicalDefenseAttrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobLevelMaster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobLevelMaster](
	[level] [int] NOT NULL,
	[nextLevelUpExp] [bigint] NOT NULL,
	[inventorySlotAccCount] [int] NOT NULL,
	[restMaxExpRewardId] [bigint] NOT NULL,
	[cartMaxHpAttrValueId] [bigint] NOT NULL,
	[potionAttrMaxCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkill](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[formType] [int] NOT NULL,
	[isRequireTarget] [tinyint] NOT NULL,
	[castRange] [float] NOT NULL,
	[hitRange] [float] NOT NULL,
	[coolTime] [float] NOT NULL,
	[heroHitType] [int] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [int] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[ssStartDelay] [float] NOT NULL,
	[ssDuration] [float] NOT NULL,
	[castingMoveType] [int] NOT NULL,
	[castingMoveValue1] [int] NOT NULL,
	[castingMoveValue2] [int] NOT NULL,
	[autoPriorityGroup] [int] NOT NULL,
	[autoWeight] [int] NOT NULL,
	[clientSkillIndex] [int] NOT NULL,
	[buffAbnormalStateId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillHit]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillHit](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[damageFactor] [float] NOT NULL,
	[acquireLak] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillHitAbnormalState]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillHitAbnormalState](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[hitRate] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillHitRune]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillHitRune](
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[abnormalStateHitRate] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillLevel](
	[jobId] [int] NOT NULL,
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[battlePower] [bigint] NOT NULL,
	[physicalOffenseAmpAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAmpAttrValueId] [bigint] NOT NULL,
	[offensePointAttrValueId] [bigint] NOT NULL,
	[_summary] [varchar](100) NOT NULL,
	[summaryKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillLevelMaster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillLevelMaster](
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpRequiredHeroLevel] [int] NOT NULL,
	[nextLevelUpGold] [bigint] NOT NULL,
	[nextLevelUpItemId] [int] NOT NULL,
	[nextLevelUpItemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillMaster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillMaster](
	[skillId] [int] NOT NULL,
	[openRequiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillRune]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillRune](
	[skillId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[elementalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[materialItemId] [int] NOT NULL,
	[materialItemCount] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[baseDamageType] [int] NOT NULL,
	[effectDescriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_JobSkillRuneLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_JobSkillRuneLevel](
	[skillId] [int] NOT NULL,
	[runeNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[offenseAmp] [int] NOT NULL,
	[offense] [int] NOT NULL,
	[effectDescArgumentCount] [int] NOT NULL,
	[effectDescValue1] [varchar](20) NOT NULL,
	[effectDescValue2] [varchar](20) NOT NULL,
	[effectDescValue3] [varchar](20) NOT NULL,
	[effectDescValue4] [varchar](20) NOT NULL,
	[effectDescValue5] [varchar](20) NOT NULL,
	[effectDescValue6] [varchar](20) NOT NULL,
	[effectDescValue7] [varchar](20) NOT NULL,
	[effectDescValue8] [varchar](20) NOT NULL,
	[effectDescValue9] [varchar](20) NOT NULL,
	[effectDescValue10] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LakEvent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LakEvent](
	[eventNo] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[lakFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Language]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Language](
	[languageId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LevelRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LevelRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LevelUpRewardEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LevelUpRewardEntry](
	[entryId] [int] NOT NULL,
	[level] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LevelUpRewardItem]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LevelUpRewardItem](
	[entryId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LimitationGift]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LimitationGift](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[scheduleTextKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LimitationGiftAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LimitationGiftAvailableReward](
	[scheduleId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LimitationGiftReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LimitationGiftReward](
	[scheduleId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LimitationGiftRewardDayOfWeek]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LimitationGiftRewardDayOfWeek](
	[dayOfWeek] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LimitationGiftRewardSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LimitationGiftRewardSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Location]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Location](
	[locationId] [int] NOT NULL,
	[defaultBgm] [varchar](40) NOT NULL,
	[minimapMagnification] [float] NOT NULL,
	[defaultBgmVolume] [float] NOT NULL,
	[accelerationEnabled] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_LocationArea]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_LocationArea](
	[locationId] [int] NOT NULL,
	[areaNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[bgm] [varchar](40) NOT NULL,
	[isMinimapDisplay] [bit] NOT NULL,
	[minimapX] [int] NOT NULL,
	[minimapY] [int] NOT NULL,
	[minimapTextColor] [varchar](20) NOT NULL,
	[bgmVolume] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGear]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGear](
	[mainGearId] [int] NOT NULL,
	[mainGearType] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[jobId] [int] NOT NULL,
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[saleGold] [int] NOT NULL,
	[prefabName] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearBaseAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearBaseAttr](
	[mainGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearBaseAttrEnchantLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearBaseAttrEnchantLevel](
	[mainGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[enchantLevel] [bigint] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [RZ_DATA]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[slotIndex] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearDisassembleAvailableResultEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearDisassembleAvailableResultEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearDisassembleResultCountPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearDisassembleResultCountPoolEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearDisassembleResultPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearDisassembleResultPoolEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearEnchantLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearEnchantLevel](
	[enchantLevel] [int] NOT NULL,
	[nextSuccessRate] [int] NOT NULL,
	[penaltyPreventEnabled] [tinyint] NOT NULL,
	[step] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearEnchantLevelSet]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearEnchantLevelSet](
	[setNo] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredTotalEnchantLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearEnchantLevelSetAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearEnchantLevelSetAttr](
	[setNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearEnchantStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearEnchantStep](
	[step] [int] NOT NULL,
	[nextEnchantMaterialItemId] [int] NOT NULL,
	[nextEnchantPenaltyPreventItemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearOptionAttrGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearOptionAttrGrade](
	[attrGrade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearOptionAttrPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearOptionAttrPoolEntry](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[attrGrade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearQuality]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearQuality](
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearRefinementRecipe]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearRefinementRecipe](
	[protectionCount] [int] NOT NULL,
	[protectionItemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearSet]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearSet](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearSetAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearSetAttr](
	[tier] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearTier]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearTier](
	[tier] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[weaponBoxItemId] [int] NOT NULL,
	[armorBoxItemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainGearType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainGearType](
	[mainGearType] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainMenu]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainMenu](
	[menuId] [int] NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[popupName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuest](
	[mainQuestNo] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[_title] [nvarchar](80) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[startTextKey] [varchar](20) NOT NULL,
	[targetTextKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetAcquisitionRate] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[completionTextKey] [varchar](20) NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[targetDungeonId] [int] NOT NULL,
	[cartId] [int] NOT NULL,
	[transformationMonsterId] [int] NOT NULL,
	[transformationLifetime] [int] NOT NULL,
	[transformationRestored] [bit] NOT NULL,
	[targetContentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestCompletionDialogue]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestCompletionDialogue](
	[mainQuestNo] [int] NOT NULL,
	[dialogueNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeon]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeon](
	[dungeonId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startxPosition] [float] NOT NULL,
	[startyPosition] [float] NOT NULL,
	[startzPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startyRotation] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[guideDisplayInterval] [int] NOT NULL,
	[completionExitPositionEnabled] [tinyint] NOT NULL,
	[completionExitxPosition] [float] NOT NULL,
	[completionExityPosition] [float] NOT NULL,
	[completionExitzPosition] [float] NOT NULL,
	[completionExityRotation] [float] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[locationId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonGuide]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonGuide](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[no] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_content] [varchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonMonsterArrange](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[summonMinHpFactor] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonObstacle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonObstacle](
	[dungeonId] [int] NOT NULL,
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonStep](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterArrangeNo] [int] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[directingDuration] [int] NOT NULL,
	[directingStartyRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonSummon]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonSummon](
	[dungeonId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[summonNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonWave]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonWave](
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[_objectiveTitle] [nvarchar](80) NOT NULL,
	[objectiveTitleKey] [varchar](20) NOT NULL,
	[_objectiveDescription] [nvarchar](80) NOT NULL,
	[objectiveDescriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestDungeonWaveArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestDungeonWaveArrange](
	[dungeonId] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[spawnXPosition] [float] NOT NULL,
	[spawnYPosition] [float] NOT NULL,
	[spawnZPosition] [float] NOT NULL,
	[spawnRadius] [float] NOT NULL,
	[spawnYRotationType] [int] NOT NULL,
	[spawnYRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestObject]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestObject](
	[objectId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[interactionDuration] [float] NOT NULL,
	[continentId] [int] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestObjectArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestObjectArrange](
	[objectId] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestReward](
	[mainQuestNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[subGearId] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL,
	[mountId] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestStartDialogue]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestStartDialogue](
	[mainQuestNo] [int] NOT NULL,
	[dialogueNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MainQuestStartDialogueEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MainQuestStartDialogueEntry](
	[nationId] [int] NOT NULL,
	[mainQuestNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[npcId] [int] NOT NULL,
	[_content] [nvarchar](400) NOT NULL,
	[contentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Menu]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Menu](
	[menuId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[menuGroup] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MenuContent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MenuContent](
	[contentId] [int] NOT NULL,
	[menuId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[isDisplay] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MenuContentOpenPreview]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MenuContentOpenPreview](
	[previewNo] [int] NOT NULL,
	[contentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MenuContentTutorialStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MenuContentTutorialStep](
	[contentId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[textKey] [varchar](40) NOT NULL,
	[textxPosition] [float] NOT NULL,
	[textyPosition] [float] NOT NULL,
	[arrowxPosition] [float] NOT NULL,
	[arrowyPosition] [float] NOT NULL,
	[arrowZRotation] [int] NOT NULL,
	[clickxPosition] [float] NOT NULL,
	[clickyPosition] [float] NOT NULL,
	[clickWidth] [int] NOT NULL,
	[clickHeight] [int] NOT NULL,
	[effectName] [varchar](100) NOT NULL,
	[effectxPosition] [float] NOT NULL,
	[effectyPosition] [float] NOT NULL,
	[effectWidth] [int] NOT NULL,
	[effectHeight] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MoneyBuff]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MoneyBuff](
	[buffId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[lifetime] [int] NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MoneyBuffAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MoneyBuffAttr](
	[buffId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Monster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Monster](
	[monsterId] [int] NOT NULL,
	[monsterCharacterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[level] [int] NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[moveSpeed] [int] NOT NULL,
	[battleMoveSpeed] [int] NOT NULL,
	[skillCastingInterval] [float] NOT NULL,
	[maxHp] [int] NOT NULL,
	[physicalOffense] [int] NOT NULL,
	[dropCountPoolId] [int] NOT NULL,
	[dropObjectPoolId] [int] NOT NULL,
	[questAreaRadius] [float] NOT NULL,
	[exp] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[visibilityRange] [float] NOT NULL,
	[patrolRange] [int] NOT NULL,
	[activeAreaRadius] [float] NOT NULL,
	[moveEnabled] [tinyint] NOT NULL,
	[attackEnabled] [tinyint] NOT NULL,
	[attackStopRange] [int] NOT NULL,
	[returnCompletionRadius] [float] NOT NULL,
	[tamingEnabled] [tinyint] NOT NULL,
	[mentalStrength] [int] NOT NULL,
	[stealSuccessRate] [int] NOT NULL,
	[stealItemRewardId] [bigint] NOT NULL,
	[stealRadius] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterAbnormalStateDetail]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterAbnormalStateDetail](
	[monsterAbnormalStateDetailId] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[value1] [int] NOT NULL,
	[value2] [int] NOT NULL,
	[value3] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterArrange](
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterId] [int] NOT NULL,
	[_description] [nvarchar](80) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterAttr](
	[monsterId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterCharacter]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterCharacter](
	[monsterCharacterId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[prefabName] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterKillExpFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterKillExpFactor](
	[levelGap] [int] NOT NULL,
	[expFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterLevelPenaltyEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterLevelPenaltyEntry](
	[levelGap] [int] NOT NULL,
	[expRate] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterOwnSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterOwnSkill](
	[monsterId] [int] NOT NULL,
	[skillId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterSkill](
	[skillId] [int] NOT NULL,
	[baseDamageType] [int] NOT NULL,
	[type] [int] NOT NULL,
	[elementalId] [int] NOT NULL,
	[formType] [int] NOT NULL,
	[isRequiredTarget] [tinyint] NOT NULL,
	[castRange] [float] NOT NULL,
	[hitRange] [float] NOT NULL,
	[coolTime] [float] NOT NULL,
	[hitAreaType] [int] NOT NULL,
	[hitAreaValue1] [float] NOT NULL,
	[hitAreaValue2] [float] NOT NULL,
	[hitAreaOffsetType] [float] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[ssStartDelay] [float] NOT NULL,
	[ssDuration] [float] NOT NULL,
	[autoPriorityGroup] [int] NOT NULL,
	[autoWeight] [int] NOT NULL,
	[sound] [varchar](100) NOT NULL,
	[soundVolume] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MonsterSkillHit]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MonsterSkillHit](
	[skillId] [int] NOT NULL,
	[hitId] [int] NOT NULL,
	[damageFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Mount]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Mount](
	[mountId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[moveSpeed] [int] NOT NULL,
	[_acquisitionText] [varchar](100) NOT NULL,
	[acquisitionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountAwakeningLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountAwakeningLevel](
	[mountId] [int] NOT NULL,
	[awakeningLevel] [int] NOT NULL,
	[nextLevelUpRequiredAwakeningExp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountAwakeningLevelMaster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountAwakeningLevelMaster](
	[awakeningLevel] [int] NOT NULL,
	[unequippedAttrFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGear]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGear](
	[mountGearId] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[type] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[maxHpAttrValueId] [bigint] NOT NULL,
	[physicalOffenseAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAttrValueId] [bigint] NOT NULL,
	[physicalDefenseAttrValueId] [bigint] NOT NULL,
	[magicalDefenseAttrValueId] [bigint] NOT NULL,
	[saleGold] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearOptionAttrGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearOptionAttrGrade](
	[attrGrade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearOptionAttrPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearOptionAttrPoolEntry](
	[mountGearId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[attrGrade] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearPickBoxRecipe]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearPickBoxRecipe](
	[itemId] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[gold] [int] NOT NULL,
	[owned] [tinyint] NOT NULL,
	[materialItem1Id] [int] NOT NULL,
	[materialItem1Count] [int] NOT NULL,
	[materialItem2Id] [int] NOT NULL,
	[materialItem2Count] [int] NOT NULL,
	[materialItem3Id] [int] NOT NULL,
	[materialItem3Count] [int] NOT NULL,
	[materialItem4Id] [int] NOT NULL,
	[materialItem4Count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearQuality]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearQuality](
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearSlot]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearSlot](
	[slotIndex] [int] NOT NULL,
	[openHeroLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountGearType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountGearType](
	[type] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[slotIndex] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountLevel](
	[mountId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[maxHpAttrValueId] [bigint] NOT NULL,
	[physicalOffenseAttrValueId] [bigint] NOT NULL,
	[magicalOffenseAttrValueId] [bigint] NOT NULL,
	[physicalDefenseAttrValueId] [bigint] NOT NULL,
	[magicalDefenseAttrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountLevelMaster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountLevelMaster](
	[level] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[qualityLevel] [int] NOT NULL,
	[nextLevelUpRequiredSatiety] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountPotionAttrCount]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountPotionAttrCount](
	[count] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountQuality]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountQuality](
	[mountId] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[potionAttrMaxCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MountQualityMaster]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MountQualityMaster](
	[quality] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MysteryBoxGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MysteryBoxGrade](
	[grade] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MysteryBoxGradePoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MysteryBoxGradePoolEntry](
	[poolId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MysteryBoxQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MysteryBoxQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[defaultBoxGradePoolId] [int] NOT NULL,
	[vipBoostMinPickCount] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_MysteryBoxQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_MysteryBoxQuestReward](
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Nation]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Nation](
	[nationId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationDonationEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationDonationEntry](
	[entryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[moneyType] [int] NOT NULL,
	[moneyAmount] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
	[nationFundRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationFundReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationFundReward](
	[nationFundRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationNoblesse]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationNoblesse](
	[noblesseId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[nationWarDeclarationEnabled] [tinyint] NOT NULL,
	[nationCallEnabled] [tinyint] NOT NULL,
	[nationWarCallEnabled] [tinyint] NOT NULL,
	[nationWarConvergingAttackEnabled] [tinyint] NOT NULL,
	[nationAllianceEnabled] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationNoblesseAppointmentAuthority]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationNoblesseAppointmentAuthority](
	[noblesseId] [int] NOT NULL,
	[targetNoblesseId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationNoblesseAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationNoblesseAttr](
	[noblesseId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWar]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWar](
	[declarationAvailableServerOpenDaycount] [int] NOT NULL,
	[declarationStartTime] [int] NOT NULL,
	[declarationEndTime] [int] NOT NULL,
	[declarationRequiredNationFund] [int] NOT NULL,
	[weeklyDeclarationMaxCount] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL,
	[resultDisplayEndTime] [int] NOT NULL,
	[joinPopupDisplayDuration] [int] NOT NULL,
	[offenseStartContinentId] [int] NOT NULL,
	[offenseStartXPosition] [float] NOT NULL,
	[offenseStartYPosition] [float] NOT NULL,
	[offenseStartZPosition] [float] NOT NULL,
	[offenseStartYRotationType] [int] NOT NULL,
	[offenseStartYRotation] [float] NOT NULL,
	[offenseStartRadius] [float] NOT NULL,
	[defenseStartContinentId] [int] NOT NULL,
	[defenseStartXPosition] [float] NOT NULL,
	[defenseStartYPosition] [float] NOT NULL,
	[defenseStartZPosition] [float] NOT NULL,
	[defenseStartYRotationType] [int] NOT NULL,
	[defenseStartYRotation] [float] NOT NULL,
	[defenseStartRadius] [float] NOT NULL,
	[freeTransmissionCount] [int] NOT NULL,
	[nationCallCount] [int] NOT NULL,
	[nationCallCoolTime] [int] NOT NULL,
	[nationCallLifetime] [int] NOT NULL,
	[nationCallRadius] [float] NOT NULL,
	[convergingAttackCount] [int] NOT NULL,
	[convergingAttackCoolTime] [int] NOT NULL,
	[winNationItemRewardId1] [bigint] NOT NULL,
	[winNationItemRewardId2] [bigint] NOT NULL,
	[loseNationItemRewardId1] [bigint] NOT NULL,
	[loseNationItemRewardId2] [bigint] NOT NULL,
	[winNationExploitPointRewardId] [bigint] NOT NULL,
	[loseNationExploitPointRewardId] [bigint] NOT NULL,
	[luckyRewardHighRanking] [int] NOT NULL,
	[luckyRewardLowRanking] [int] NOT NULL,
	[luckyRewardHeroCount] [int] NOT NULL,
	[luckyItemRewardId] [bigint] NOT NULL,
	[convergingAttackLifeTime] [int] NOT NULL,
	[winNationAllianceItemRewardId] [bigint] NOT NULL,
	[loseNationAllianceItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarAvailableDayOfWeek]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarAvailableDayOfWeek](
	[dayOfWeek] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarExpReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarExpReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarHeroObjectiveEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarHeroObjectiveEntry](
	[entryNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[objectiveCount] [int] NOT NULL,
	[rewardType] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL,
	[ownDiaRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarMonsterArrange](
	[arrangeId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[type] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[nationWarNpcId] [int] NOT NULL,
	[regenTime] [int] NOT NULL,
	[transmissionxPosition] [float] NOT NULL,
	[transmissionyPosition] [float] NOT NULL,
	[transmissionzPosition] [float] NOT NULL,
	[transmissionRadius] [float] NOT NULL,
	[transmissionYRotationType] [int] NOT NULL,
	[transmissionyRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarNpc]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarNpc](
	[npcId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](100) NOT NULL,
	[_nick] [varchar](100) NOT NULL,
	[nickKey] [varchar](100) NOT NULL,
	[_dialogue] [int] NOT NULL,
	[dialogueKey] [varchar](100) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarPaidTransmission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarPaidTransmission](
	[transmissionCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarPointReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarPointReward](
	[ratingDifference] [int] NOT NULL,
	[winNationWarPoint] [int] NOT NULL,
	[loseNationWarPoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarRevivalPoint]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarRevivalPoint](
	[revivalPointId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[priority] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarRevivalPointActivationCondition]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarRevivalPointActivationCondition](
	[revivalPointId] [int] NOT NULL,
	[arrangeId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NationWarTransmissionExit]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NationWarTransmissionExit](
	[npcId] [int] NOT NULL,
	[exitNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](100) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Npc]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Npc](
	[npcId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_nick] [nvarchar](20) NOT NULL,
	[nickKey] [varchar](20) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [int] NOT NULL,
	[radius] [float] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[_dialogue] [nvarchar](20) NOT NULL,
	[dialogueKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[soundName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NpcShop]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NpcShop](
	[shopId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[npcId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NpcShopCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NpcShopCategory](
	[shopId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NpcShopProduct]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NpcShopProduct](
	[productId] [int] NOT NULL,
	[shopId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_NpcVisibleBoundary]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_NpcVisibleBoundary](
	[npcId] [int] NOT NULL,
	[startCompletedMainQuestNo] [int] NOT NULL,
	[endCompletedMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Open7DayEventDay]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Open7DayEventDay](
	[day] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Open7DayEventMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Open7DayEventMission](
	[missionId] [int] NOT NULL,
	[day] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetValue] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Open7DayEventMissionReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Open7DayEventMissionReward](
	[missionId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Open7DayEventProduct]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Open7DayEventProduct](
	[productId] [int] NOT NULL,
	[day] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OpenGiftReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OpenGiftReward](
	[day] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OrdealQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OrdealQuest](
	[questNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[availableRewardItemId] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OrdealQuestMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OrdealQuestMission](
	[questNo] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[missionNo] [int] NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[autoCompletionRequiredTime] [int] NOT NULL,
	[availableRewardItemId] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OsirisRoom]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OsirisRoom](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[waveInterval] [int] NOT NULL,
	[monsterSpawnInterval] [int] NOT NULL,
	[monsterSpawnXPosition] [float] NOT NULL,
	[monsterSpawnYPosition] [float] NOT NULL,
	[monsterSpawnZPosition] [float] NOT NULL,
	[monsterSpawnYRotation] [float] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OsirisRoomAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OsirisRoomAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OsirisRoomDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OsirisRoomDifficulty](
	[difficulty] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OsirisRoomDifficultyWave]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OsirisRoomDifficultyWave](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OsirisRoomMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OsirisRoomMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[killGoldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_OwnDiaReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_OwnDiaReward](
	[ownDiaRewardId] [bigint] NOT NULL,
	[value] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PaidImmediateRevival]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PaidImmediateRevival](
	[revivalCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PartyAdventureEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PartyAdventureEntry](
	[entryId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PartyBuff]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PartyBuff](
	[memberCount] [int] NOT NULL,
	[expFactor] [float] NOT NULL,
	[goldFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PartyExpFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PartyExpFactor](
	[memberCount] [int] NOT NULL,
	[expFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PickPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PickPoolEntry](
	[poolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[type] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[mainGearId] [int] NOT NULL,
	[mainGearOwned] [tinyint] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemCount] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[mountGearId] [int] NOT NULL,
	[mountGearOwned] [tinyint] NOT NULL,
	[creatureCardId] [int] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[creatureId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Portal]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Portal](
	[portalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[exitxPosition] [float] NOT NULL,
	[exityPosition] [float] NOT NULL,
	[exitzPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exityRotation] [float] NOT NULL,
	[linkedPortalId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PotionAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PotionAttr](
	[potionAttrId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[incAttrValueId] [bigint] NOT NULL,
	[requiredItemId] [int] NOT NULL,
 CONSTRAINT [uniq_tmp_r_PotionAttr__attrId] UNIQUE NONCLUSTERED 
(
	[attrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Present]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Present](
	[presentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredVipLevel] [int] NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[displayCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL,
	[popularityPoint] [int] NOT NULL,
	[contributionPoint] [int] NOT NULL,
	[isMessageSend] [bit] NOT NULL,
	[messageTextKey] [varchar](20) NOT NULL,
	[isEffectDisplay] [bit] NOT NULL,
	[effectPrefabName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValor](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[dailyFreeRefreshCount] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[guideImageName] [nvarchar](20) NOT NULL,
	[startGuideTitleKey] [varchar](20) NOT NULL,
	[startGuideContentKey] [varchar](20) NOT NULL,
	[buffBoxCreationGuideTitleKey] [varchar](20) NOT NULL,
	[buffBoxCreationGuideContentKey] [varchar](20) NOT NULL,
	[buffBoxCreationInterval] [int] NOT NULL,
	[buffBoxLifeTime] [int] NOT NULL,
	[buffDuration] [int] NOT NULL,
	[failureRewardSoulPowder] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[buffBoxCreationTime] [int] NOT NULL,
	[dailyPaidRefreshCount] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorBossMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorBossMonsterArrange](
	[proofOfValorBossMonsterArrangeId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[isSpecial] [tinyint] NOT NULL,
	[starGrade] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[creatureCardPoolId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[rewardSoulPowder] [int] NOT NULL,
	[specialRewardSoulPowder] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorBuffBox]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorBuffBox](
	[buffBoxId] [int] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[offenseFactor] [int] NOT NULL,
	[physicalDefenseFactor] [int] NOT NULL,
	[hpRecoveryFactor] [int] NOT NULL,
	[useGuideTitleKey] [varchar](40) NOT NULL,
	[useGuideContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorBuffBoxArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorBuffBoxArrange](
	[arrangeId] [int] NOT NULL,
	[buffBoxId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[acquisitionRange] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorClearGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorClearGrade](
	[clearGrade] [int] NOT NULL,
	[minRemainTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorCreatureCardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorCreatureCardPoolEntry](
	[creatureCardPoolId] [int] NOT NULL,
	[entryId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[creatureCardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorMonsterAttrFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorMonsterAttrFactor](
	[heroLevel] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorNormalMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorNormalMonsterArrange](
	[proofOfValorBossMonsterArrangeId] [int] NOT NULL,
	[proofOfValorNormalMonsterArrangeId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorPaidRefresh]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorPaidRefresh](
	[refreshCount] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorRefreshSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorRefreshSchedule](
	[scheduleId] [int] NOT NULL,
	[refreshTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProofOfValorReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProofOfValorReward](
	[heroLevel] [int] NOT NULL,
	[successExpRewardId] [bigint] NOT NULL,
	[failureExpRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProspectQuestOwnerReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProspectQuestOwnerReward](
	[targetLevelId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ProspectQuestTargetReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ProspectQuestTargetReward](
	[targetLevelId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_PvpExploit]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_PvpExploit](
	[levelGap] [int] NOT NULL,
	[killExploitPointRewardId] [bigint] NOT NULL,
	[assistExploitPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_QuickMenu]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_QuickMenu](
	[menuId] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[itemType] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Rank]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Rank](
	[rankNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[requiredExploitPoint] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankActiveSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankActiveSkill](
	[skillId] [int] NOT NULL,
	[requiredRankNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[coolTime] [int] NOT NULL,
	[castRange] [int] NOT NULL,
	[abnormalStateId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankActiveSkillLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankActiveSkillLevel](
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[_effectDescription] [nvarchar](40) NOT NULL,
	[effectDescriptionKey] [varchar](40) NOT NULL,
	[nextLevelUpRequiredGold] [int] NOT NULL,
	[nextLevelUpRequiredItemId] [int] NOT NULL,
	[nextLevelUpRequiredItemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankAttr](
	[rankNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankPassiveSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankPassiveSkill](
	[skillId] [int] NOT NULL,
	[requiredRankNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](30) NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankPassiveSkillAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankPassiveSkillAttr](
	[skillId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankPassiveSkillAttrLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankPassiveSkillAttrLevel](
	[skillId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankPassiveSkillLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankPassiveSkillLevel](
	[skillId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[_effectDescription] [varchar](100) NOT NULL,
	[effectDescriptionKey] [varchar](30) NOT NULL,
	[nextLevelUpRequiredGold] [int] NOT NULL,
	[nextLevelUpRequiredSpiritStone] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RankReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RankReward](
	[rankNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ReadyMadeGear]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ReadyMadeGear](
	[readyMadeGearId] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[enchantLevel] [int] NOT NULL,
	[level] [int] NOT NULL,
	[royalType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ReadyMadeGearOptionAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ReadyMadeGearOptionAttr](
	[readyMadeGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL,
	[optionIndex] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RechargeEvent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RechargeEvent](
	[nameKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredUnOwnDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RechargeEventReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RechargeEventReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RecommendBattlePowerLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RecommendBattlePowerLevel](
	[level] [int] NOT NULL,
	[sRankBattlePower] [bigint] NOT NULL,
	[aRankBattlePower] [bigint] NOT NULL,
	[bRankBattlePower] [bigint] NOT NULL,
	[cRankBattlePower] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RestRewardTime]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RestRewardTime](
	[restTime] [int] NOT NULL,
	[requiredGold] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Retrieval]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Retrieval](
	[retrievalId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[rewardDisplayType] [int] NOT NULL,
	[goldRetrievalTextKey] [varchar](20) NOT NULL,
	[goldRetrievalRequiredGold] [bigint] NOT NULL,
	[diaRetrievalTextKey] [varchar](20) NOT NULL,
	[diaRetrievalRequiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RetrievalReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RetrievalReward](
	[retrievalId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[goldExpRewardId] [bigint] NOT NULL,
	[goldItemRewardId] [bigint] NOT NULL,
	[diaExpRewardId] [bigint] NOT NULL,
	[diaItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RookieGift]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RookieGift](
	[giftNo] [int] NOT NULL,
	[waitingTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RookieGiftReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RookieGiftReward](
	[giftNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaim]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaim](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[freeEnterCount] [int] NOT NULL,
	[enterRequiredItemId] [int] NOT NULL,
	[enterMemberCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[debuffAreaActivationStepNo] [int] NOT NULL,
	[debuffAreaDeactivationStepNo] [int] NOT NULL,
	[debuffAreaXPosition] [float] NOT NULL,
	[debuffAreaYPosition] [float] NOT NULL,
	[debuffAreaZPosition] [float] NOT NULL,
	[debuffAreaYRotation] [float] NOT NULL,
	[debuffAreaWidth] [int] NOT NULL,
	[debuffAreaHeight] [int] NOT NULL,
	[debuffAreaOffenseFactor] [float] NOT NULL,
	[summonMonsterHpRecoveryInterval] [int] NOT NULL,
	[summonMonsterHpRecoveryGuideImageName] [varchar](100) NOT NULL,
	[summonMonsterHpRecoveryGuideTitleKey] [varchar](20) NOT NULL,
	[summonMonsterHpRecoveryGuideContentKey] [varchar](20) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[summonMinHpFactor] [float] NOT NULL,
	[monsterCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimMonsterAttrFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimMonsterTerminatorRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimMonsterTerminatorRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimObjectArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimObjectArrange](
	[stepNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[objectInteractionDuration] [float] NOT NULL,
	[objectInteractionMaxRange] [float] NOT NULL,
	[objectScale] [float] NOT NULL,
	[objectHeight] [int] NOT NULL,
	[objectRadius] [float] NOT NULL,
	[objectInteractionTextKey] [varchar](20) NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimObstacle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimOpenSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimOpenSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimPartyVolunteerRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimPartyVolunteerRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimPortal]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimPortal](
	[portalId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[exitXPosition] [float] NOT NULL,
	[exitYPosition] [float] NOT NULL,
	[exitZPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exitYRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimRandomRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimRandomRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimRevivalPoint]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimRevivalPoint](
	[revivalPointId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimStep](
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[activationPortalId] [int] NOT NULL,
	[deactivationPortalId] [int] NOT NULL,
	[revivalPointId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimStepReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimStepReward](
	[stepNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimStepWave]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimStepWave](
	[stepNo] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[targetType] [int] NOT NULL,
	[targetArrangeKey] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimStepWaveSkill]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimStepWaveSkill](
	[stepNo] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[castingInterval] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[transformationMonsterId] [int] NOT NULL,
	[transformationLifetime] [int] NOT NULL,
	[objectPrefabName] [varchar](100) NOT NULL,
	[objectInteractionDuration] [float] NOT NULL,
	[objectInteractionMaxRange] [float] NOT NULL,
	[objectScale] [float] NOT NULL,
	[objectHeight] [int] NOT NULL,
	[objectRadius] [float] NOT NULL,
	[objectInteractionTextKey] [varchar](20) NOT NULL,
	[objectLifetime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimSummonMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimSummonMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[summonNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[bossMonsterHpRecoveryFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimTrap]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimTrap](
	[trapId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[damage] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimUltimateAtackKingRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimUltimateAtackKingRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuinsReclaimUltimateAttackKingRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuinsReclaimUltimateAttackKingRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_RuneDisassembleResult]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_RuneDisassembleResult](
	[itemId] [int] NOT NULL,
	[resultItemId] [int] NOT NULL,
	[resultItemCount] [int] NOT NULL,
	[resultItemOwned] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SafeTimeEvent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SafeTimeEvent](
	[requiredAutoDuration] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SceneryQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SceneryQuest](
	[questId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[waitingTime] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ScheduleNotice]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ScheduleNotice](
	[noticeId] [int] NOT NULL,
	[beforeStartNoticeTime] [int] NOT NULL,
	[beforeStartNoticeKey] [varchar](20) NOT NULL,
	[startNoticeKey] [varchar](20) NOT NULL,
	[endNoticeKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SecretLetterGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SecretLetterGrade](
	[grade] [int] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SecretLetterGradePoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SecretLetterGradePoolEntry](
	[poolId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SecretLetterQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SecretLetterQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [nvarchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[targetNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[defaultLetterGradePoolId] [int] NOT NULL,
	[vipBoostMinPickCount] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SecretLetterQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SecretLetterQuestReward](
	[grade] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SeriesMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SeriesMission](
	[missionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SeriesMissionStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SeriesMissionStep](
	[missionId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[targetCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SeriesMissionStepReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SeriesMissionStepReward](
	[missionId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SharingEvent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SharingEvent](
	[eventId] [int] NOT NULL,
	[contentType] [int] NOT NULL,
	[content] [nvarchar](100) NOT NULL,
	[rewardRange] [int] NOT NULL,
	[senderRewardLimitCount] [int] NOT NULL,
	[targetLevel] [int] NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[rewardMailTitleType] [int] NOT NULL,
	[rewardMailTitle] [nvarchar](100) NOT NULL,
	[rewardMailContentType] [int] NOT NULL,
	[rewardMailContent] [nvarchar](max) NOT NULL,
	[imageName] [varchar](100) NOT NULL,
	[descriptionKey1] [varchar](20) NOT NULL,
	[descriptionKey2] [varchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SharingEventReceiverReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SharingEventReceiverReward](
	[eventId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SharingEventSenderReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SharingEventSenderReward](
	[eventId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [bit] NOT NULL,
	[itemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SideMenu]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SideMenu](
	[menuId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SimpleShopProduct]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SimpleShopProduct](
	[productId] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[itemOwned] [tinyint] NOT NULL,
	[saleGold] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Skin]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Skin](
	[skinId] [int] NOT NULL,
	[jobId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SkinActivationConditionEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SkinActivationConditionEntry](
	[skinId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[gearId] [int] NOT NULL,
	[minGrade] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SkinAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SkinAttr](
	[skinId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveter]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveter](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[memberCount] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [float] NOT NULL,
	[waveIntervalTime] [float] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveterAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveterAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveterDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveterDifficulty](
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveterDifficultyReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveterDifficultyReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveterDifficultyWave]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveterDifficultyWave](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[targetArrangeNo] [int] NOT NULL,
	[guideImageName] [nvarchar](40) NOT NULL,
	[_guideTitle] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[_guideContent] [nvarchar](40) NOT NULL,
	[guideContentKey] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveterMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveterMonsterArrange](
	[difficulty] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulCoveterObstacle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulCoveterObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SoulStoneItemAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SoulStoneItemAttr](
	[itemId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StaminaBuyCount]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StaminaBuyCount](
	[buyCount] [int] NOT NULL,
	[stamina] [int] NOT NULL,
	[requiredDia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StaminaRecoverySchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StaminaRecoverySchedule](
	[scheduleId] [int] NOT NULL,
	[recoveryTime] [int] NOT NULL,
	[recoveryStamina] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeon]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeon](
	[dungeonNo] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[enterCount] [int] NOT NULL,
	[requiredHeroMinLevel] [int] NOT NULL,
	[requiredHeroMaxLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[guideDisplayInterval] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[subNameKey] [varchar](20) NOT NULL,
	[clearXPosition] [float] NOT NULL,
	[clearYPosition] [float] NOT NULL,
	[clearZPosition] [float] NOT NULL,
	[clearYRotation] [float] NOT NULL,
	[comboDuration] [int] NOT NULL,
	[accelerationRequiredMoveDuration] [int] NOT NULL,
	[accelerationMoveSpeed] [int] NOT NULL,
	[tamingXPosition] [float] NOT NULL,
	[tamingYPosition] [float] NOT NULL,
	[tamingZPosition] [float] NOT NULL,
	[tamingYRotation] [float] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonAvailableReward](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonDifficulty](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[recommendBattlePower] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonGuide]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonGuide](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[no] [int] NOT NULL,
	[ImageName] [nvarchar](40) NOT NULL,
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_content] [varchar](100) NOT NULL,
	[contentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonMonsterArrange](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonObstacle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonObstacle](
	[dungeonNo] [int] NOT NULL,
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonReward](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonStep](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[isCompletionRemoveTaming] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonSweepReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonSweepReward](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_StoryDungeonTrap]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_StoryDungeonTrap](
	[dungeonNo] [int] NOT NULL,
	[difficulty] [int] NOT NULL,
	[trapId] [int] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[prefabscale] [float] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[width] [float] NOT NULL,
	[height] [float] NOT NULL,
	[hitAreaOffset] [float] NOT NULL,
	[startDelay] [float] NOT NULL,
	[castingStartDelay] [float] NOT NULL,
	[castingDuration] [int] NOT NULL,
	[hitCount] [int] NOT NULL,
	[castingTerm] [float] NOT NULL,
	[damage] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGear]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGear](
	[subGearId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearAttr](
	[subGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearAttrValue]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearAttrValue](
	[subGearId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearGrade](
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearLevel](
	[subGearId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[nextLevelUpRequiredGold] [int] NOT NULL,
	[nextGradeUpItem1Id] [int] NOT NULL,
	[nextGradeUpItem1Count] [int] NOT NULL,
	[nextGradeUpItem2Id] [int] NOT NULL,
	[nextGradeUpItem2Count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearLevelQuality]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearLevelQuality](
	[subGearId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[nextQualityUpItem1Id] [int] NOT NULL,
	[nextQualityUpItem1Count] [int] NOT NULL,
	[nextQualityUpItem2Id] [int] NOT NULL,
	[nextQualityUpItem2Count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearName]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearName](
	[subGearId] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearRuneSocket]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearRuneSocket](
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[requiredSubGearLevel] [int] NOT NULL,
	[_enableText] [varchar](100) NOT NULL,
	[enableTextKey] [varchar](40) NOT NULL,
	[backgroundImageName] [nvarchar](40) NOT NULL,
	[miniBackgroundImageName] [nvarchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearRuneSocketAvailableItemType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearRuneSocketAvailableItemType](
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearSoulstoneLevelSet]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearSoulstoneLevelSet](
	[setNo] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[requiredTotalLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearSoulstoneLevelSetAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearSoulstoneLevelSetAttr](
	[setNo] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubGearSoulstoneSocket]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubGearSoulstoneSocket](
	[subGearId] [int] NOT NULL,
	[socketIndex] [int] NOT NULL,
	[itemType] [int] NOT NULL,
	[requiredSubGearGrade] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubMenu]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubMenu](
	[menuId] [int] NOT NULL,
	[subMenuId] [int] NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[prefab1] [varchar](100) NOT NULL,
	[prefab2] [varchar](100) NOT NULL,
	[prefab3] [varchar](100) NOT NULL,
	[layout] [int] NOT NULL,
	[isDefault] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
	[contentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubQuest](
	[questId] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredConditionValue] [int] NOT NULL,
	[_title] [nvarchar](20) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[targetTextKey] [varchar](20) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetAcquisitionRate] [int] NOT NULL,
	[targetContentId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[completionKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[abandonmentEnabled] [bit] NOT NULL,
	[reacceptanceEnabled] [bit] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SubQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SubQuestReward](
	[questId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuest](
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[_targetContent] [varchar](100) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[startNpcId] [int] NOT NULL,
	[completionNpcId] [int] NOT NULL,
	[limitCount] [int] NOT NULL,
	[guaranteeGold] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL,
	[failGuideImageName] [nvarchar](40) NOT NULL,
	[failGuideTitleKey] [varchar](40) NOT NULL,
	[failGuideContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuestCart]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuestCart](
	[cartId] [int] NOT NULL,
	[destructionItemRewardId] [bigint] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuestCartPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuestCartPoolEntry](
	[orderId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[acquisitionCartId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuestChangeCartPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuestChangeCartPoolEntry](
	[cartId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[acquisitionCartId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuestOrder]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuestOrder](
	[orderId] [int] NOT NULL,
	[orderItemId] [int] NOT NULL,
	[failRefundGoldRewardId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuestReward](
	[cartId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SupplySupportQuestWayPoint]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SupplySupportQuestWayPoint](
	[wayPoint] [int] NOT NULL,
	[cartChangeNpcId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SystemMessage]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SystemMessage](
	[messageId] [int] NOT NULL,
	[_message] [nvarchar](40) NOT NULL,
	[messageKey] [varchar](20) NOT NULL,
	[conditionValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_SystemNationWarDeclaration]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_SystemNationWarDeclaration](
	[serverOpenDayCount] [int] NOT NULL,
	[offenseNationId] [int] NOT NULL,
	[defenseNationid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Task]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Task](
	[taskId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[rewardSymbolId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TaskCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TaskCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TaskCategoryEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TaskCategoryEntry](
	[categoryId] [int] NOT NULL,
	[taskId] [int] NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TaskConsignment]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TaskConsignment](
	[consignmentId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[requiredItemCount] [int] NOT NULL,
	[completionRequiredTime] [int] NOT NULL,
	[immediateCompletionRequiredGold] [int] NOT NULL,
	[immediateCompletionRequiredGoldReduceInterval] [int] NOT NULL,
	[todayTaskId] [int] NOT NULL,
	[rewardGuildContributionPointRewardId] [bigint] NOT NULL,
	[rewardGuildBuildingPointRewardId] [bigint] NOT NULL,
	[rewardGuildFundRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TaskConsignmentAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TaskConsignmentAvailableReward](
	[consignmentId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TaskConsignmentExpReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TaskConsignmentExpReward](
	[consignmentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TaskConsignmentItemReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TaskConsignmentItemReward](
	[consignmentId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDen]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDen](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[rewardSymbolId] [int] NOT NULL,
	[enterCount] [int] NOT NULL,
	[chargeCount] [int] NOT NULL,
	[chargeDia] [int] NOT NULL,
	[waveCount] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[waveIntervalTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[rewardDuration] [int] NOT NULL,
	[deadPenaltyPointFactor] [float] NOT NULL,
	[deadPenaltyPointMaxFactor] [float] NOT NULL,
	[itemRewardPenaltyFactor] [float] NOT NULL,
	[itemRewardPenaltyExpFactor] [float] NOT NULL,
	[itemRewardPenaltyMaxFactor] [float] NOT NULL,
	[exceptionalItemRewardFactor] [float] NOT NULL,
	[monsterRegenCount] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[directEnterItemId] [int] NOT NULL,
	[directEnterItemCount] [int] NOT NULL,
	[directEnterWaitingDuration] [int] NOT NULL,
	[freeRevivalDelayTime] [int] NOT NULL,
	[paidRevivalDia] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[resultDelayTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenClearGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenClearGrade](
	[clearGrade] [int] NOT NULL,
	[requiredPoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenDifficulty](
	[difficulty] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](80) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[recommendLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenMonsterArrange](
	[difficulty] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[point] [int] NOT NULL,
	[stepId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenObject]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenObject](
	[difficulty] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[stepId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenObstacle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenReward](
	[difficulty] [int] NOT NULL,
	[clearGrade] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[additionalCount] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_ThievesDenStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_ThievesDenStep](
	[difficulty] [int] NOT NULL,
	[stepId] [int] NOT NULL,
	[_objectiveTitle] [nvarchar](40) NOT NULL,
	[objectiveTitleKey] [varchar](20) NOT NULL,
	[_objectiveContent] [nvarchar](80) NOT NULL,
	[objectiveContentKey] [varchar](20) NOT NULL,
	[objectiveMonsterId] [int] NOT NULL,
	[objectiveMonsterCount] [int] NOT NULL,
	[objectiveXPosition] [float] NOT NULL,
	[objectiveYPosition] [float] NOT NULL,
	[objectiveZPosition] [float] NOT NULL,
	[removeObstacleId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TimeDesignationEvent]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TimeDesignationEvent](
	[eventId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[mailTitleType] [int] NOT NULL,
	[mailTitle] [nvarchar](100) NOT NULL,
	[mailContentType] [int] NOT NULL,
	[mailContent] [nvarchar](max) NOT NULL,
	[startTime] [datetime] NOT NULL,
	[endTime] [datetime] NOT NULL,
	[deleted] [bit] NOT NULL,
	[delTime] [datetimeoffset](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TimeDesignationEventReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TimeDesignationEventReward](
	[eventId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Title]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Title](
	[titleId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[type] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[acquisitionTextKey] [varchar](40) NOT NULL,
	[backgroundImageName] [varchar](100) NOT NULL,
	[lifetime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TitleActiveAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TitleActiveAttr](
	[titleId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TitleCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TitleCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TitleGrade]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TitleGrade](
	[grade] [int] NOT NULL,
	[colorCode] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TitlePassiveAttr]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TitlePassiveAttr](
	[titleId] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TitleType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TitleType](
	[type] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TodayMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TodayMission](
	[missionId] [int] NOT NULL,
	[heroMinLevel] [int] NOT NULL,
	[point] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TodayMissionReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TodayMissionReward](
	[missionId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TodayTask]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TodayTask](
	[taskId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](40) NOT NULL,
	[_rewardText] [varchar](100) NOT NULL,
	[rewardTextKey] [varchar](40) NOT NULL,
	[_eventTimeText] [varchar](100) NOT NULL,
	[eventTimeTextKey] [varchar](40) NOT NULL,
	[rank] [int] NOT NULL,
	[achievementPoint] [int] NOT NULL,
	[sortNo] [int] NOT NULL,
	[_lockText] [varchar](100) NOT NULL,
	[lockTextKey] [varchar](40) NOT NULL,
	[isRecommend] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TodayTaskAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TodayTaskAvailableReward](
	[taskId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TodayTaskCategory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TodayTaskCategory](
	[categoryId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShip]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShip](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[monsterRegenTime] [int] NOT NULL,
	[clearPointPerRemainTime] [int] NOT NULL,
	[exp2xRewardRequiredUnOwnDia] [int] NOT NULL,
	[exp3xRewardRequiredUnOwnDia] [int] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipAdditionalMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipAdditionalMonsterArrange](
	[difficulty] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipAdditionalMonsterArrangePoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipAdditionalMonsterArrangePoolEntry](
	[difficulty] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipAvailableReward](
	[difficulty] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipDifficulty]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipDifficulty](
	[difficulty] [int] NOT NULL,
	[recommendBattlePower] [bigint] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[goldRewardId] [bigint] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[pointGoldRewardId] [bigint] NOT NULL,
	[pointExpRewardId] [bigint] NOT NULL,
	[maxAdditionalExp] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipMonsterArrange](
	[difficulty] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipObject]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipObject](
	[difficulty] [int] NOT NULL,
	[objectId] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[activationStepNo] [int] NOT NULL,
	[hitMessageDisplayable] [bit] NOT NULL,
	[hitMessageDisplayInterval] [int] NOT NULL,
	[point] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipObjectDestroyerReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipObjectDestroyerReward](
	[difficulty] [int] NOT NULL,
	[objectId] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipObstacle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipObstacle](
	[obstacleId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[scale] [float] NOT NULL,
	[removeStepNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipRewardPoolEntry](
	[difficulty] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipSchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipSchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TradeShipStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TradeShipStep](
	[stepNo] [int] NOT NULL,
	[targetMonsterKillCount] [int] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TreatOfFarmQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TreatOfFarmQuest](
	[requiredHeroLevel] [int] NOT NULL,
	[_title] [varchar](100) NOT NULL,
	[titleKey] [varchar](40) NOT NULL,
	[_targetMovingText] [nvarchar](40) NOT NULL,
	[targetMovingTextKey] [varchar](40) NOT NULL,
	[_targetKillText] [nvarchar](40) NOT NULL,
	[targetKillTextKey] [varchar](40) NOT NULL,
	[limitCount] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[monsterKillLimitTime] [int] NOT NULL,
	[_targetMovingDescription] [varchar](100) NOT NULL,
	[targetMovingDescriptionKey] [varchar](40) NOT NULL,
	[_targetKillDescription] [varchar](100) NOT NULL,
	[targetKillDescriptionKey] [varchar](40) NOT NULL,
	[startDialogueKey] [varchar](40) NOT NULL,
	[completionDialogueKey] [varchar](40) NOT NULL,
	[completionTextKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TreatOfFarmQuestMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TreatOfFarmQuestMission](
	[missionId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[_targetPositionName] [varchar](100) NOT NULL,
	[targetPositionNameKey] [varchar](40) NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetxPosition] [float] NOT NULL,
	[targetyPosition] [float] NOT NULL,
	[targetzPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[monsterSpawnxPosition] [float] NOT NULL,
	[monsterSpawnyPosition] [float] NOT NULL,
	[monsterSpawnzPosition] [float] NOT NULL,
	[monsterYRotationType] [int] NOT NULL,
	[monsteryRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TreatOfFarmQuestMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TreatOfFarmQuestMonsterArrange](
	[missionId] [int] NOT NULL,
	[heroMinLevel] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TreatOfFarmQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TreatOfFarmQuestReward](
	[level] [int] NOT NULL,
	[missionCompletionExpRewardId] [bigint] NOT NULL,
	[missionCompletionItemRewardId] [bigint] NOT NULL,
	[questCompletionItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TrueHeroQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TrueHeroQuest](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](40) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[_targetContent] [nvarchar](100) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[requiredVipLevel] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[questNpcId] [int] NOT NULL,
	[startDialogueKey] [varchar](20) NOT NULL,
	[completionDialogueKey] [varchar](20) NOT NULL,
	[completionTextKey] [varchar](20) NOT NULL,
	[targetObjectPrefabName] [varchar](100) NOT NULL,
	[targetObjectInteractionDuration] [float] NOT NULL,
	[targetObjectInteractionMaxRange] [float] NOT NULL,
	[targetObjectScale] [float] NOT NULL,
	[targetObjectHeight] [int] NOT NULL,
	[targetObjectRadius] [float] NOT NULL,
	[targetObjectInteractionTextKey] [varchar](20) NOT NULL,
	[chattingMessageKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TrueHeroQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TrueHeroQuestReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[exploitPointRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_TrueHeroQuestStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_TrueHeroQuestStep](
	[stepNo] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetObjectXPosition] [float] NOT NULL,
	[targetObjectYPosition] [float] NOT NULL,
	[targetObjectZPosition] [float] NOT NULL,
	[objectiveWaitingTime] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMaze]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMaze](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startRadius] [float] NOT NULL,
	[startYRotationType] [int] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[_targetTitle] [nvarchar](20) NOT NULL,
	[_targetContent] [nvarchar](20) NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMazeEntrance]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMazeEntrance](
	[floor] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMazeFloor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMazeFloor](
	[floor] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMazeMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMazeMonsterArrange](
	[floor] [int] NOT NULL,
	[arrangeNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[regenTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMazeNpc]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMazeNpc](
	[npcId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[_dialogue] [varchar](100) NOT NULL,
	[dialogueKey] [varchar](40) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[prefabName] [varchar](20) NOT NULL,
	[scale] [float] NOT NULL,
	[height] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMazeNpcTransmissionEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMazeNpcTransmissionEntry](
	[npcId] [int] NOT NULL,
	[floor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_UndergroundMazePortal]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_UndergroundMazePortal](
	[portalId] [int] NOT NULL,
	[floor] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotation] [float] NOT NULL,
	[exitxPosition] [float] NOT NULL,
	[exityPosition] [float] NOT NULL,
	[exitzPosition] [float] NOT NULL,
	[exitRadius] [float] NOT NULL,
	[exitYRotationType] [int] NOT NULL,
	[exityRotation] [float] NOT NULL,
	[linkedPortalId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_VipLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_VipLevel](
	[vipLevel] [int] NOT NULL,
	[requiredAccVipPoint] [bigint] NOT NULL,
	[mainGearEnchantMaxCount] [int] NOT NULL,
	[mainGearRefinementMaxCount] [int] NOT NULL,
	[mountGearRefinementMaxCount] [int] NOT NULL,
	[expPotionUseMaxCount] [int] NOT NULL,
	[staminaBuyMaxCount] [int] NOT NULL,
	[expDungeonEnterCount] [int] NOT NULL,
	[goldDungeonEnterCount] [int] NOT NULL,
	[ExpScrollUseMaxCount] [int] NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[secretLetterBoostGradePoolId] [int] NOT NULL,
	[mysteryBoxBoostGradePoolId] [int] NOT NULL,
	[dailyMaxExploitPoint] [int] NOT NULL,
	[artifactRoomInitMaxCount] [int] NOT NULL,
	[ancientRelicEnterCount] [int] NOT NULL,
	[fieldOfHonorEnterCount] [int] NOT NULL,
	[distortionScrollUseMaxCount] [int] NOT NULL,
	[guildDonationMaxCount] [int] NOT NULL,
	[nationDonationMaxCount] [int] NOT NULL,
	[soulCoveterWeeklyEnterCount] [int] NOT NULL,
	[creatureCardCompositionEnabled] [tinyint] NOT NULL,
	[CreatureCardShopPaidRefreshMaxCount] [int] NOT NULL,
	[proofOfValorEnterCount] [int] NOT NULL,
	[trueHeroQuestStepNo] [int] NOT NULL,
	[fearAltarEnterCount] [int] NOT NULL,
	[expDungeonAdditionalExpRewardFactor] [float] NOT NULL,
	[osirisRoomEnterCount] [int] NOT NULL,
	[luckyShopPickMaxCount] [int] NOT NULL,
	[reatureVariationMaxCount] [int] NOT NULL,
	[tradeShipEnterCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_VipLevelReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_VipLevelReward](
	[vipLevel] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarehouseSlotExtendRecipe]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarehouseSlotExtendRecipe](
	[slotCount] [int] NOT NULL,
	[dia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemory]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemory](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](100) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[freeEnterCount] [int] NOT NULL,
	[enterRequiredItemId] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [int] NOT NULL,
	[transformationGuideImageName] [varchar](100) NOT NULL,
	[transformationGuideTitleKey] [varchar](20) NOT NULL,
	[transformationGuideContentKey] [varchar](20) NOT NULL,
	[monsterSummonGuideTitleKey] [varchar](20) NOT NULL,
	[monsterSummonGuideContentKey] [varchar](20) NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[safeRevivalWaitingTime] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL,
	[matchingWaitingTime] [int] NOT NULL,
	[enterWaitingTime] [int] NOT NULL,
	[enterMinMemberCount] [int] NOT NULL,
	[enterMaxMemberCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryAvailableReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryAvailableReward](
	[rewardNo] [int] NOT NULL,
	[itemId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[waveNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[type] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL,
	[monsterCount] [int] NOT NULL,
	[killPoint] [int] NOT NULL,
	[assistPoint] [int] NOT NULL,
	[summonMinHpFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryMonsterAttrFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [float] NOT NULL,
	[offenseFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemorySchedule]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemorySchedule](
	[scheduleId] [int] NOT NULL,
	[startTime] [int] NOT NULL,
	[endTime] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryStartPosition]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryStartPosition](
	[positionId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemorySummonMonsterArrange]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemorySummonMonsterArrange](
	[arrangeKey] [int] NOT NULL,
	[summonNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotationType] [int] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryTransformationObject]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryTransformationObject](
	[waveNo] [int] NOT NULL,
	[transformationObjectId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL,
	[objectPrefabName] [varchar](100) NOT NULL,
	[objectInteractionDuration] [float] NOT NULL,
	[objectInteractionMaxRange] [float] NOT NULL,
	[objectScale] [float] NOT NULL,
	[objectHeight] [int] NOT NULL,
	[objectRadius] [float] NOT NULL,
	[objectInteractionTextKey] [varchar](20) NOT NULL,
	[objectLifetime] [int] NOT NULL,
	[transformationMonsterId] [int] NOT NULL,
	[transformationLifetime] [int] NOT NULL,
	[transformationPoint] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WarMemoryWave]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WarMemoryWave](
	[waveNo] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[clearPoint] [int] NOT NULL,
	[targetType] [int] NOT NULL,
	[targetArrangeKey] [int] NOT NULL,
	[guideImageName] [varchar](100) NOT NULL,
	[guideTitleKey] [varchar](20) NOT NULL,
	[guideContentKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeekendAttendRewardAvailableDayOfWeek]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeekendAttendRewardAvailableDayOfWeek](
	[dayOfWeek] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeekendReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeekendReward](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[scheduleTextKey] [varchar](20) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[itemRewardRate] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeekendRewardNumberPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeekendRewardNumberPoolEntry](
	[selectionNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[number] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeekendRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeekendRewardPoolEntry](
	[selectionNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyContributionPointRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyContributionPointRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyPopularityPointRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyPopularityPointRankingReward](
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyPresentContributionPointRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyPresentContributionPointRankingReward](
	[groupNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyPresentContributionPointRankingRewardGroup]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyPresentContributionPointRankingRewardGroup](
	[groupNo] [int] NOT NULL,
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyPresentPopularityPointRankingReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyPresentPopularityPointRankingReward](
	[groupNo] [int] NOT NULL,
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyPresentPopularityPointRankingRewardGroup]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyPresentPopularityPointRankingRewardGroup](
	[groupNo] [int] NOT NULL,
	[highRanking] [int] NOT NULL,
	[lowRanking] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuest]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuest](
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[roundCount] [int] NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[roundRefreshRequiredGold] [int] NOT NULL,
	[roundImmediateCompletionRequiredItemId] [int] NOT NULL,
	[tenRoundCompletionRequiredVipLevel] [int] NOT NULL,
	[tenRoundCompletionRewardFactor] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuest10RoundReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuest10RoundReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestExtraReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestExtraReward](
	[completionCount] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestFeverStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestFeverStep](
	[feverStep] [int] NOT NULL,
	[nextStepUpCompletionCount] [int] NOT NULL,
	[duration] [int] NOT NULL,
	[itemId] [int] NOT NULL,
	[count] [int] NOT NULL,
	[owned] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestMission]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestMission](
	[missionId] [int] NOT NULL,
	[minHeroLevel] [int] NOT NULL,
	[maxHeroLevel] [int] NOT NULL,
	[_title] [nvarchar](40) NOT NULL,
	[titleKey] [varchar](20) NOT NULL,
	[targetTitleKey] [varchar](20) NOT NULL,
	[targetContentKey] [varchar](20) NOT NULL,
	[type] [int] NOT NULL,
	[targetContinentId] [int] NOT NULL,
	[targetXPosition] [float] NOT NULL,
	[targetYPosition] [float] NOT NULL,
	[targetZPosition] [float] NOT NULL,
	[targetRadius] [float] NOT NULL,
	[targetMonsterId] [int] NOT NULL,
	[targetContinentObjectId] [int] NOT NULL,
	[targetCount] [int] NOT NULL,
	[targetDescriptionKey] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestObjectivePool]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestObjectivePool](
	[poolId] [int] NOT NULL,
	[minLevel] [int] NOT NULL,
	[maxLevel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestObjectivePoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestObjectivePoolEntry](
	[poolId] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[monsterId] [int] NOT NULL,
	[objectiveCount] [int] NOT NULL,
	[continentId] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestReward](
	[level] [int] NOT NULL,
	[step] [int] NOT NULL,
	[exp] [bigint] NOT NULL,
	[gold] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestRoundReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestRoundReward](
	[roundNo] [int] NOT NULL,
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL,
	[goldRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WeeklyQuestTenRoundReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WeeklyQuestTenRoundReward](
	[rewardNo] [int] NOT NULL,
	[itemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_Wing]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_Wing](
	[wingId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[prefabName] [nvarchar](20) NOT NULL,
	[attrId] [int] NOT NULL,
	[attrValueId] [bigint] NOT NULL,
	[_acquisitionText] [nvarchar](20) NOT NULL,
	[acquisitionTextKey] [varchar](20) NOT NULL,
	[memoryPieceInstallationEnabled] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingEnchantCountPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingEnchantCountPoolEntry](
	[entryId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingMemoryPieceCriticalCountPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingMemoryPieceCriticalCountPoolEntry](
	[wingId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingMemoryPieceSlot]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingMemoryPieceSlot](
	[wingId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[attrId] [int] NOT NULL,
	[openStep] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingMemoryPieceSlotStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingMemoryPieceSlotStep](
	[wingId] [int] NOT NULL,
	[slotIndex] [int] NOT NULL,
	[step] [int] NOT NULL,
	[attrMaxValue] [int] NOT NULL,
	[attrIncBaseValue] [int] NOT NULL,
	[attrDecValue] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingMemoryPieceStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingMemoryPieceStep](
	[wingId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[requiredMemoryPieceCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingMemoryPieceSuccessFactorPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingMemoryPieceSuccessFactorPoolEntry](
	[wingId] [int] NOT NULL,
	[step] [int] NOT NULL,
	[type] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[factor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingMemoryPieceType]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingMemoryPieceType](
	[type] [int] NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[requiredItemId] [int] NOT NULL,
	[successRate] [int] NOT NULL,
	[criticalRate] [int] NOT NULL,
	[criticalFactor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingPart]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingPart](
	[partId] [int] NOT NULL,
	[attrId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingStep](
	[step] [int] NOT NULL,
	[_name] [nvarchar](40) NOT NULL,
	[nameKey] [varchar](40) NOT NULL,
	[colorCode] [varchar](20) NOT NULL,
	[enchantMaterialItemCount] [int] NOT NULL,
	[rewardWingId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingStepLevel]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingStepLevel](
	[step] [int] NOT NULL,
	[level] [int] NOT NULL,
	[nextLevelUpRequiredExp] [int] NOT NULL,
	[accEnchantLimitCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WingStepPart]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WingStepPart](
	[step] [int] NOT NULL,
	[partId] [int] NOT NULL,
	[increaseAttrValueId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTemple]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTemple](
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[_description] [nvarchar](40) NOT NULL,
	[descriptionKey] [varchar](20) NOT NULL,
	[sceneName] [varchar](100) NOT NULL,
	[requiredHeroLevel] [int] NOT NULL,
	[requiredStamina] [int] NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[limitTime] [int] NOT NULL,
	[exitDelayTime] [float] NOT NULL,
	[startXPosition] [float] NOT NULL,
	[startYPosition] [float] NOT NULL,
	[startZPosition] [float] NOT NULL,
	[startYRotation] [float] NOT NULL,
	[guideImageName] [nvarchar](20) NOT NULL,
	[colorMatchingPoint] [int] NOT NULL,
	[colorMatchingObjectivePoint] [int] NOT NULL,
	[colorMatchingMonsterSpawnInterval] [int] NOT NULL,
	[colorMatchingMonsterArrangeId] [int] NOT NULL,
	[colorMatchingMonsterXPosition] [float] NOT NULL,
	[colorMatchingMonsterYPosition] [float] NOT NULL,
	[colorMatchingMonsterZPosition] [float] NOT NULL,
	[colorMatchingMonsterYRotationType] [int] NOT NULL,
	[colorMatchingMonsterYRotation] [float] NOT NULL,
	[colorMatchingMonsterKillPoint] [float] NOT NULL,
	[colorMatchingMonsterKillObjectId] [int] NOT NULL,
	[colorMatchingMonsterSpawnGuideTitleKey] [varchar](20) NOT NULL,
	[colorMatchingMonsterSpawnGuideContentKey] [varchar](20) NOT NULL,
	[findTreasureBoxMonsterArrangeId] [int] NOT NULL,
	[findTreasureBoxSuccessGuideTitleKey] [varchar](20) NOT NULL,
	[findTreasureBoxSuccessGuideContentKey] [varchar](20) NOT NULL,
	[puzzleRewardTargetTitleKey] [varchar](20) NOT NULL,
	[puzzleRewardTargetContentKey] [varchar](20) NOT NULL,
	[puzzleRewardGuideTitleKey] [varchar](20) NOT NULL,
	[puzzleRewardGuideContentKey] [varchar](20) NOT NULL,
	[puzzleRewardObjectPrefabName] [varchar](100) NOT NULL,
	[puzzleRewardObjectInteractionDuration] [int] NOT NULL,
	[puzzleRewardObjectInteractionMaxRange] [int] NOT NULL,
	[puzzleRewardObjectScale] [int] NOT NULL,
	[puzzleRewardObjectHeight] [int] NOT NULL,
	[puzzleRewardObjectRadius] [int] NOT NULL,
	[quizRightAnswerGuideTitleKey] [varchar](20) NOT NULL,
	[quizRightAnswerGuideContentKey] [varchar](20) NOT NULL,
	[quizWrongAnswerGuideTitleKey] [varchar](20) NOT NULL,
	[quizWrongAnswerGuideContentKey] [varchar](20) NOT NULL,
	[bossMonsterArrangeId] [int] NOT NULL,
	[bossMonsterXPosition] [float] NOT NULL,
	[bossMonsterYPosition] [float] NOT NULL,
	[bossMonsterZPosition] [float] NOT NULL,
	[bossMonsterYRotation] [float] NOT NULL,
	[bossMonsterTargetTitleKey] [varchar](20) NOT NULL,
	[bossMonsterTargetContentKey] [varchar](20) NOT NULL,
	[bossMonsterSpawnGuideTitleKey] [varchar](20) NOT NULL,
	[bossMonsterSpawnGuideContentKey] [varchar](20) NOT NULL,
	[bossMonsterKillItemRewardId] [bigint] NOT NULL,
	[sweepItemRewardId] [bigint] NOT NULL,
	[locationId] [int] NOT NULL,
	[x] [float] NOT NULL,
	[y] [float] NOT NULL,
	[z] [float] NOT NULL,
	[xSize] [float] NOT NULL,
	[ySize] [float] NOT NULL,
	[zSize] [float] NOT NULL,
	[bossMonsterSpawnDelayTime] [int] NOT NULL,
	[availableRewardItemId] [int] NOT NULL,
	[requiredConditionType] [int] NOT NULL,
	[requiredMainQuestNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleArrangePosition]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleArrangePosition](
	[row] [int] NOT NULL,
	[col] [int] NOT NULL,
	[xPosition] [float] NOT NULL,
	[yPosition] [float] NOT NULL,
	[zPosition] [float] NOT NULL,
	[yRotation] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleColorMatchingObject]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleColorMatchingObject](
	[objectId] [int] NOT NULL,
	[prefabName] [varchar](100) NOT NULL,
	[interactionDuration] [int] NOT NULL,
	[interactionMaxRange] [float] NOT NULL,
	[scale] [float] NOT NULL,
	[height] [float] NOT NULL,
	[radius] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleFindTreasureBoxCount]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleFindTreasureBoxCount](
	[count] [int] NOT NULL,
	[rewardCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleMonsterAttrFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleMonsterAttrFactor](
	[level] [int] NOT NULL,
	[maxHpFactor] [int] NOT NULL,
	[offenseFactor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTemplePuzzle]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTemplePuzzle](
	[puzzleId] [int] NOT NULL,
	[point] [int] NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTemplePuzzleReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTemplePuzzleReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTemplePuzzleRewardobjectOffset]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTemplePuzzleRewardobjectOffset](
	[rewardCount] [int] NOT NULL,
	[offsetNo] [int] NOT NULL,
	[xOffset] [int] NOT NULL,
	[yOffset] [int] NOT NULL,
	[zOffset] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTemplePuzzleRewardPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTemplePuzzleRewardPoolEntry](
	[entryNo] [int] NOT NULL,
	[point] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleQuizMonsterPosition]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleQuizMonsterPosition](
	[stepNo] [int] NOT NULL,
	[row] [int] NOT NULL,
	[col] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleQuizPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleQuizPoolEntry](
	[stepNo] [int] NOT NULL,
	[quizNo] [int] NOT NULL,
	[questionKey] [varchar](40) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleQuizRightAnswerPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleQuizRightAnswerPoolEntry](
	[quizNo] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleQuizWrongAnswerPoolEntry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleQuizWrongAnswerPoolEntry](
	[quizNo] [int] NOT NULL,
	[stepNo] [int] NOT NULL,
	[entryNo] [int] NOT NULL,
	[monsterArrangeId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleStep]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleStep](
	[stepNo] [int] NOT NULL,
	[type] [int] NOT NULL,
	[targetTitleKey] [varchar](40) NOT NULL,
	[targetContentKey] [varchar](40) NOT NULL,
	[guideTitleKey] [varchar](40) NOT NULL,
	[guideContentKey] [varchar](40) NOT NULL,
	[startDelayTime] [int] NOT NULL,
	[ItemRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleStepReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleStepReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WisdomTempleSweepReward]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WisdomTempleSweepReward](
	[level] [int] NOT NULL,
	[expRewardId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_r_WorldLevelExpFactor]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_r_WorldLevelExpFactor](
	[levelGap] [int] NOT NULL,
	[expFactor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_s_BlackIp]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_s_BlackIp](
	[startIpNo] [bigint] NOT NULL,
	[endIpNo] [bigint] NOT NULL,
	[startIp] [varchar](15) NOT NULL,
	[endIp] [varchar](15) NOT NULL,
	[name] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_s_ClientText]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_s_ClientText](
	[name] [varchar](20) NOT NULL,
	[value] [nvarchar](max) NULL,
	[languageId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_s_GameServerGroupAllowedCountry]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_s_GameServerGroupAllowedCountry](
	[groupId] [int] NOT NULL,
	[countryCode] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_s_GameServerRegion]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_s_GameServerRegion](
	[regionId] [int] NOT NULL,
	[_name] [nvarchar](20) NOT NULL,
	[nameKey] [varchar](20) NOT NULL,
	[sortNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_s_GeoIp]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_s_GeoIp](
	[beginIp] [varchar](15) NULL,
	[endIp] [varchar](15) NULL,
	[beginIpNum] [bigint] NULL,
	[endIpNum] [bigint] NULL,
	[countryCode] [varchar](2) NULL,
	[countryName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_t_Purchase]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_t_Purchase](
	[purchaseId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[accountId] [uniqueidentifier] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[productId] [int] NOT NULL,
	[storeType] [int] NOT NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[receipt] [nvarchar](max) NULL,
	[failReason] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
	[statusUpdateTime] [datetimeoffset](7) NULL,
	[regTime] [datetimeoffset](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_t_PurchaseException]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_t_PurchaseException](
	[exceptionId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[storeType] [int] NOT NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[regTime] [datetimeoffset](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_t_PurchaseExceptional]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_t_PurchaseExceptional](
	[exceptionId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[storeType] [int] NOT NULL,
	[orderId] [varchar](64) NULL,
	[signature] [nvarchar](max) NULL,
	[purchaseData] [nvarchar](max) NULL,
	[regTime] [datetimeoffset](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_t_SharingEventReceiver]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_t_SharingEventReceiver](
	[eventId] [int] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[inviteCode] [uniqueidentifier] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[rewarded] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[completionTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_t_SharingEventSender]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_t_SharingEventSender](
	[inviteCode] [uniqueidentifier] NOT NULL,
	[eventId] [int] NOT NULL,
	[virtualGameServerId] [int] NOT NULL,
	[heroId] [uniqueidentifier] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tmp_t_UserBlock]    Script Date: 2023/4/7 16:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_t_UserBlock](
	[blockId] [uniqueidentifier] NOT NULL,
	[userId] [uniqueidentifier] NOT NULL,
	[reason] [nvarchar](100) NOT NULL,
	[blocked] [bit] NOT NULL,
	[regTime] [datetimeoffset](7) NOT NULL,
	[revocationReason] [nvarchar](100) NULL,
	[revocationTime] [datetimeoffset](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[r_AbnormalState] ADD  DEFAULT ((0)) FOR [isOverlap]
GO
ALTER TABLE [dbo].[r_AbnormalState] ADD  DEFAULT ((0)) FOR [sourceType]
GO
ALTER TABLE [dbo].[r_AncientRelic] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_AncientRelic] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_AnkouTomb] ADD  DEFAULT ((0)) FOR [enterMaxMemberCount]
GO
ALTER TABLE [dbo].[r_AnkouTomb] ADD  DEFAULT ((0)) FOR [requiredStamina]
GO
ALTER TABLE [dbo].[r_AnkouTomb] ADD  DEFAULT ('') FOR [targetTitleKey]
GO
ALTER TABLE [dbo].[r_AnkouTomb] ADD  DEFAULT ('') FOR [targetContentKey]
GO
ALTER TABLE [dbo].[r_ArtifactRoom] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_ArtifactRoom] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_Costume] ADD  DEFAULT ('') FOR [_description]
GO
ALTER TABLE [dbo].[r_Costume] ADD  DEFAULT ('') FOR [descriptionKey]
GO
ALTER TABLE [dbo].[r_CreatureInjectionLevel] ADD  DEFAULT ((0)) FOR [requiredGold]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [trapPenaltyMoveSpeed]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [trapPenaltyDuration]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [startXPosition]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [startYPosition]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [startZPosition]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [startRadius]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [startYRotationType]
GO
ALTER TABLE [dbo].[r_DragonNest] ADD  DEFAULT ((0)) FOR [startYRotation]
GO
ALTER TABLE [dbo].[r_DragonNestObstacle] ADD  DEFAULT ((0)) FOR [yRotation]
GO
ALTER TABLE [dbo].[r_ExpDungeonDifficulty] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_ExpDungeonDifficulty] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_ExpDungeonDifficulty] ADD  DEFAULT ('0') FOR [requiredHeroLevel]
GO
ALTER TABLE [dbo].[r_ExpDungeonDifficulty] ADD  DEFAULT ('0') FOR [expRewardId]
GO
ALTER TABLE [dbo].[r_FearAltar] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_FearAltar] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_FearAltar] ADD  DEFAULT ((0)) FOR [enterWaitingTime]
GO
ALTER TABLE [dbo].[r_FearAltarStageWave] ADD  DEFAULT ((0)) FOR [targetArrangeKey]
GO
ALTER TABLE [dbo].[r_FearAltarStageWave] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[r_FieldBoss] ADD  DEFAULT ('') FOR [imageName]
GO
ALTER TABLE [dbo].[r_FieldOfHonor] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_FieldOfHonor] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_FishingQuest] ADD  DEFAULT ((0)) FOR [guildExpRewardFactor]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF_r_GameConfig_maxHeroCount]  DEFAULT ((0)) FOR [maxHeroCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF_r_GameConfig_startContinentId]  DEFAULT ((1)) FOR [startContinentId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF_r_GameConfig_startXPosition]  DEFAULT ((26.55)) FOR [startXPosition]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF_r_GameConfig_startYPosition]  DEFAULT ((23.95)) FOR [startYPosition]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF_r_GameConfig_startZPosition]  DEFAULT ((44.95)) FOR [startZPosition]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF__r_GameCon__bount__0BF1ACC7]  DEFAULT ((0)) FOR [bountyHunterQuestRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF__r_GameCon__open7__0915401C]  DEFAULT ((0)) FOR [open7DayEventRequiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF__r_GameCon__taskC__09A01B58]  DEFAULT ((0)) FOR [taskConsignmentRequiredVipLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [DF__r_GameCon__elite__11413D20]  DEFAULT ((0)) FOR [eliteMonsterKillApplicationRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [nationAllianceUnavailableStartTime]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [nationAllianceUnavailableEndTime]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [nationAllianceRequiredFund]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [nationAllianceRenounceUnavailableDuration]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [nationBasePower]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [costumeEnchantItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [costumeCollectionActivationItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [costumeCollectionShuffleItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [costumeCollectionShuffleItemCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [mountAwakeningRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [mountAwakeningItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [mountPotionAttrItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [artifactRequiredConditionType]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [artifactRequiredConditionValue]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [artifactMaxLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [chargeEventRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [consumeEventRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [jobChangeRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [jobChangeRequiredItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [jobChangeQuestCompletionClientTutorialId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [warehouseRequiredVipLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [freeWarehouseSlotCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  DEFAULT ((0)) FOR [startYRotation]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp6]  DEFAULT ((0)) FOR [wingMemoryPieceInstallationRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp7]  DEFAULT ((0)) FOR [ordealQuestSlotCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp10]  DEFAULT ((0)) FOR [friendMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp11]  DEFAULT ((0)) FOR [tempFriendMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp12]  DEFAULT ((0)) FOR [tempFriendKeepDay]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp13]  DEFAULT ((0)) FOR [deadRecordMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp14]  DEFAULT ((0)) FOR [blacklistEntryMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp15]  DEFAULT ((0)) FOR [blessingQuestListMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp16]  DEFAULT ((0)) FOR [blessingQuestLimitTime]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp17]  DEFAULT ((0)) FOR [blessingQuestRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp18]  DEFAULT ((0)) FOR [blessingListMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp19]  DEFAULT ((0)) FOR [blessingLimitTime]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp20]  DEFAULT ((0)) FOR [creatureRequiredHeroLevel]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp21]  DEFAULT ((0)) FOR [creatureMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp22]  DEFAULT ((0)) FOR [creatureCheerMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp23]  DEFAULT ((0)) FOR [creatureCheerAttrFactor]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp24]  DEFAULT ((0)) FOR [creatureEvaluationFactor]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp25]  DEFAULT ((0)) FOR [creatureAdditionalAttrCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp26]  DEFAULT ((0)) FOR [creatureSkillSlotMaxCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp27]  DEFAULT ((0)) FOR [creatureSkillSlotBaseOpenCount]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp28]  DEFAULT ((0)) FOR [creatureCompositionExpRetrievalRate]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp29]  DEFAULT ((0)) FOR [creatureCompositionExpRetrievalResultItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp30]  DEFAULT ((0)) FOR [creatureCompositionSkillProtectionItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp31]  DEFAULT ((0)) FOR [creatureInjectionExpRetrievalRate]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp32]  DEFAULT ((0)) FOR [creatureInjectionExpRetrievalResultItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp33]  DEFAULT ((0)) FOR [creatureAdditionalAttrSwitchRequiredItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp34]  DEFAULT ((0)) FOR [creatureReleaseExpRetrievalRate]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp35]  DEFAULT ((0)) FOR [creatureReleaseExpRetrievalResultItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp37]  DEFAULT ((0)) FOR [creatureVariationRequiredItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp40]  DEFAULT ((0)) FOR [guildBlessingGuildTerritoryNpcId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp41]  DEFAULT ((0)) FOR [open7DayEventCostumeItemRewardId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp42]  DEFAULT ((0)) FOR [open7DayEventCostumeRewardRequiredItemId]
GO
ALTER TABLE [dbo].[r_GameConfig] ADD  CONSTRAINT [df_tmp43]  DEFAULT ((0)) FOR [open7DayEventCostumeRewardRequiredItemCount]
GO
ALTER TABLE [dbo].[r_GuildMemberGrade] ADD  DEFAULT ((0)) FOR [guildBlessingBuffEnabled]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [buffBoxAcquisitionRange]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [matchingWaitingTime]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [enterWaitingTime]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [enterMinMemberCount]
GO
ALTER TABLE [dbo].[r_InfiniteWar] ADD  DEFAULT ((0)) FOR [enterMaxMemberCount]
GO
ALTER TABLE [dbo].[r_Item] ADD  DEFAULT ((0)) FOR [autoUsable]
GO
ALTER TABLE [dbo].[r_Job] ADD  DEFAULT ((0)) FOR [walkMoveSpeed]
GO
ALTER TABLE [dbo].[r_Job] ADD  DEFAULT ((0)) FOR [parentJobId]
GO
ALTER TABLE [dbo].[r_JobLevelMaster] ADD  DEFAULT ((0)) FOR [potionAttrMaxCount]
GO
ALTER TABLE [dbo].[r_Location] ADD  DEFAULT ((0)) FOR [accelerationEnabled]
GO
ALTER TABLE [dbo].[r_MainQuest] ADD  DEFAULT ((0)) FOR [transformationMonsterId]
GO
ALTER TABLE [dbo].[r_MainQuest] ADD  DEFAULT ((0)) FOR [transformationLifetime]
GO
ALTER TABLE [dbo].[r_MainQuest] ADD  DEFAULT ((0)) FOR [transformationRestored]
GO
ALTER TABLE [dbo].[r_MainQuest] ADD  DEFAULT ((0)) FOR [targetContentId]
GO
ALTER TABLE [dbo].[r_MountQuality] ADD  DEFAULT ((0)) FOR [potionAttrMaxCount]
GO
ALTER TABLE [dbo].[r_NationNoblesse] ADD  DEFAULT ((0)) FOR [nationAllianceEnabled]
GO
ALTER TABLE [dbo].[r_NationWar] ADD  DEFAULT ((0)) FOR [winNationAllianceItemRewardId]
GO
ALTER TABLE [dbo].[r_NationWar] ADD  DEFAULT ((0)) FOR [loseNationAllianceItemRewardId]
GO
ALTER TABLE [dbo].[r_Npc] ADD  DEFAULT ('') FOR [imageName]
GO
ALTER TABLE [dbo].[r_Npc] ADD  DEFAULT ('') FOR [_dialogue]
GO
ALTER TABLE [dbo].[r_Npc] ADD  DEFAULT ('') FOR [dialogueKey]
GO
ALTER TABLE [dbo].[r_Npc] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[r_Npc] ADD  DEFAULT ('') FOR [soundName]
GO
ALTER TABLE [dbo].[r_Open7DayEventProduct] ADD  DEFAULT ((0)) FOR [itemId]
GO
ALTER TABLE [dbo].[r_Open7DayEventProduct] ADD  DEFAULT ((0)) FOR [itemOwned]
GO
ALTER TABLE [dbo].[r_Open7DayEventProduct] ADD  DEFAULT ((0)) FOR [itemCount]
GO
ALTER TABLE [dbo].[r_OsirisRoomDifficulty] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_OsirisRoomDifficulty] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_PickPoolEntry] ADD  DEFAULT ((0)) FOR [minHeroLevel]
GO
ALTER TABLE [dbo].[r_PickPoolEntry] ADD  DEFAULT ((0)) FOR [maxHeroLevel]
GO
ALTER TABLE [dbo].[r_PickPoolEntry] ADD  DEFAULT ((0)) FOR [creatureId]
GO
ALTER TABLE [dbo].[r_ProofOfValor] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_ProofOfValor] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [safeRevivalWaitingTime]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [matchingWaitingTime]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [enterWaitingTime]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [enterMinMemberCount]
GO
ALTER TABLE [dbo].[r_RuinsReclaim] ADD  DEFAULT ((0)) FOR [enterMaxMemberCount]
GO
ALTER TABLE [dbo].[r_RuinsReclaimMonsterArrange] ADD  DEFAULT ((0)) FOR [monsterCount]
GO
ALTER TABLE [dbo].[r_SharingEvent] ADD  DEFAULT ('') FOR [descriptionKey1]
GO
ALTER TABLE [dbo].[r_SharingEvent] ADD  DEFAULT ('') FOR [descriptionKey2]
GO
ALTER TABLE [dbo].[r_SoulCoveter] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_SoulCoveter] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_SoulCoveter] ADD  DEFAULT ((0)) FOR [enterMinMemberCount]
GO
ALTER TABLE [dbo].[r_SoulCoveter] ADD  DEFAULT ((0)) FOR [enterMaxMemberCount]
GO
ALTER TABLE [dbo].[r_SoulCoveter] ADD  DEFAULT ((0)) FOR [matchingWaitingTime]
GO
ALTER TABLE [dbo].[r_TaskConsignment] ADD  DEFAULT ((0)) FOR [rewardGuildContributionPointRewardId]
GO
ALTER TABLE [dbo].[r_TaskConsignment] ADD  DEFAULT ((0)) FOR [rewardGuildBuildingPointRewardId]
GO
ALTER TABLE [dbo].[r_TaskConsignment] ADD  DEFAULT ((0)) FOR [rewardGuildFundRewardId]
GO
ALTER TABLE [dbo].[r_TradeShipStep] ADD  DEFAULT ('') FOR [targetTitleKey]
GO
ALTER TABLE [dbo].[r_TradeShipStep] ADD  DEFAULT ('') FOR [targetContentKey]
GO
ALTER TABLE [dbo].[r_TrueHeroQuestStep] ADD  DEFAULT ('') FOR [targetContentKey]
GO
ALTER TABLE [dbo].[r_UndergroundMaze] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_UndergroundMaze] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_VipLevel] ADD  DEFAULT ((0)) FOR [fearAltarEnterCount]
GO
ALTER TABLE [dbo].[r_VipLevel] ADD  DEFAULT ((0)) FOR [expDungeonAdditionalExpRewardFactor]
GO
ALTER TABLE [dbo].[r_VipLevel] ADD  DEFAULT ((0)) FOR [osirisRoomEnterCount]
GO
ALTER TABLE [dbo].[r_VipLevel] ADD  DEFAULT ((0)) FOR [luckyShopPickMaxCount]
GO
ALTER TABLE [dbo].[r_VipLevel] ADD  DEFAULT ((0)) FOR [reatureVariationMaxCount]
GO
ALTER TABLE [dbo].[r_VipLevel] ADD  DEFAULT ((0)) FOR [tradeShipEnterCount]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [safeRevivalWaitingTime]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [matchingWaitingTime]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [enterWaitingTime]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [enterMinMemberCount]
GO
ALTER TABLE [dbo].[r_WarMemory] ADD  DEFAULT ((0)) FOR [enterMaxMemberCount]
GO
ALTER TABLE [dbo].[r_WarMemoryWave] ADD  DEFAULT ('') FOR [guideImageName]
GO
ALTER TABLE [dbo].[r_WarMemoryWave] ADD  DEFAULT ('') FOR [guideTitleKey]
GO
ALTER TABLE [dbo].[r_WarMemoryWave] ADD  DEFAULT ('') FOR [guideContentKey]
GO
ALTER TABLE [dbo].[r_WeekendReward] ADD  DEFAULT ((0)) FOR [itemRewardRate]
GO
ALTER TABLE [dbo].[r_WeekendReward] ADD  DEFAULT ((0)) FOR [itemRewardId]
GO
ALTER TABLE [dbo].[r_WeeklyQuestMission] ADD  DEFAULT ('') FOR [targetDescriptionKey]
GO
ALTER TABLE [dbo].[r_Wing] ADD  DEFAULT ((0)) FOR [memoryPieceInstallationEnabled]
GO
ALTER TABLE [dbo].[r_WisdomTemple] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[r_WisdomTemple] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[s_GameAssetBundle] ADD  CONSTRAINT [DF__s_GameAss__isCom__0389B154]  DEFAULT ((0)) FOR [isCommon]
GO
ALTER TABLE [dbo].[s_GameServer] ADD  CONSTRAINT [df_s_GameServer__openTime]  DEFAULT (sysdatetimeoffset()) FOR [openTime]
GO
ALTER TABLE [dbo].[s_GameServer] ADD  DEFAULT ('') FOR [gameLogDBConnection]
GO
ALTER TABLE [dbo].[s_GameServer] ADD  DEFAULT ((0)) FOR [recommendable]
GO
ALTER TABLE [dbo].[s_GameServer] ADD  DEFAULT ((0)) FOR [isPublic]
GO
ALTER TABLE [dbo].[s_GameServerGroup] ADD  DEFAULT ((1)) FOR [regionId]
GO
ALTER TABLE [dbo].[s_GameServerGroup] ADD  DEFAULT ((1)) FOR [sortNo]
GO
ALTER TABLE [dbo].[s_GameServerGroup] ADD  DEFAULT ((0)) FOR [recommendServerAuto]
GO
ALTER TABLE [dbo].[s_GameServerGroup] ADD  DEFAULT ((1)) FOR [recommendServerConditionType]
GO
ALTER TABLE [dbo].[s_GameServerGroup] ADD  DEFAULT ((0)) FOR [isAccessRestriction]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  CONSTRAINT [df_tmp]  DEFAULT ('') FOR [googlePublicKey]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [statusLoggingUrl]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((2000)) FOR [statusLoggingInterval]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((0)) FOR [helpshiftSdkEnabled]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((0)) FOR [helpshiftWebViewEnabled]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [helpshiftUrl]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [appStoreId]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [heroNameRegex]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [guildNameRegex]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((1)) FOR [maxUserConnectionCount]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((40)) FOR [defaultLanguageId]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [maintenanceInfoUrl]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [authApiUrl]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ('') FOR [loggingUrl]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((1)) FOR [loggingEnabled]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((0)) FOR [recommendServerAuto]
GO
ALTER TABLE [dbo].[s_SystemSetting] ADD  DEFAULT ((0)) FOR [recommendServerConditionType]
GO
ALTER TABLE [dbo].[t_GuildName] ADD  DEFAULT (newid()) FOR [guildId]
GO
ALTER TABLE [dbo].[t_LoginLog] ADD  CONSTRAINT [df_t_LoginLog__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_PurchaseExceptional] ADD  CONSTRAINT [df_t_PurchaseExceptional__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_User] ADD  CONSTRAINT [df_t_User__type]  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[t_User] ADD  CONSTRAINT [df_t_User__lastGameServerId1]  DEFAULT ((0)) FOR [lastGameServerId1]
GO
ALTER TABLE [dbo].[t_User] ADD  CONSTRAINT [df_t_User__lastGameServerId2]  DEFAULT ((0)) FOR [lastGameServerId2]
GO
ALTER TABLE [dbo].[t_User] ADD  CONSTRAINT [df_t_User__deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[t_User] ADD  CONSTRAINT [df_t_User__regTime]  DEFAULT (sysdatetimeoffset()) FOR [regTime]
GO
ALTER TABLE [dbo].[t_User] ADD  CONSTRAINT [df_t_User__languageId]  DEFAULT ((22)) FOR [languageId]
GO
ALTER TABLE [dbo].[t_User] ADD  DEFAULT ((0)) FOR [lastVirtualGameServerId1]
GO
ALTER TABLE [dbo].[t_User] ADD  DEFAULT ((0)) FOR [lastVirtualGameServerId2]
GO
ALTER TABLE [dbo].[t_UserGameServer] ADD  CONSTRAINT [df_t_UserGameServer__heroCount]  DEFAULT ((0)) FOR [heroCount]
GO
ALTER TABLE [dbo].[tmp_r_AbnormalState] ADD  DEFAULT ((0)) FOR [isOverlap]
GO
ALTER TABLE [dbo].[tmp_r_AbnormalState] ADD  DEFAULT ((0)) FOR [sourceType]
GO
ALTER TABLE [dbo].[tmp_r_ExpDungeonDifficulty] ADD  DEFAULT ((0)) FOR [requiredMainQuestNo]
GO
ALTER TABLE [dbo].[tmp_r_ExpDungeonDifficulty] ADD  DEFAULT ((0)) FOR [requiredConditionType]
GO
ALTER TABLE [dbo].[tmp_r_Location] ADD  DEFAULT ((0)) FOR [accelerationEnabled]
GO
ALTER TABLE [dbo].[tmp_r_Npc] ADD  DEFAULT ('') FOR [imageName]
GO
ALTER TABLE [dbo].[tmp_r_Npc] ADD  DEFAULT ('') FOR [_dialogue]
GO
ALTER TABLE [dbo].[tmp_r_Npc] ADD  DEFAULT ('') FOR [dialogueKey]
GO
ALTER TABLE [dbo].[tmp_r_Npc] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[tmp_r_Npc] ADD  DEFAULT ('') FOR [soundName]
GO
