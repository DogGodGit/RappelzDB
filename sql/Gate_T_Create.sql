USE [Rappelz_Gate]
GO
/****** Object:  Table [dbo].[s_BlackIp]    Script Date: 2023/4/7 16:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_BlackIp](
	[startIpNo] [bigint] NULL,
	[endIpNo] [bigint] NULL,
	[startIp] [varchar](15) NULL,
	[endIp] [varchar](15) NULL,
	[name] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[s_Platform]    Script Date: 2023/4/7 16:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_Platform](
	[platformId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[downloadUrl] [varchar](200) NOT NULL,
 CONSTRAINT [pk_s_Platform] PRIMARY KEY NONCLUSTERED 
(
	[platformId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[s_StageFarm]    Script Date: 2023/4/7 16:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_StageFarm](
	[farmId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[serverUrl] [varchar](200) NOT NULL,
 CONSTRAINT [pk_s_StageFarm] PRIMARY KEY NONCLUSTERED 
(
	[farmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[s_StageFarmVersion]    Script Date: 2023/4/7 16:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_StageFarmVersion](
	[platformId] [int] NOT NULL,
	[versionName] [varchar](20) NOT NULL,
	[buildNo] [int] NOT NULL,
	[farmId] [int] NOT NULL,
	[enabled] [bit] NOT NULL,
	[internalFarmId] [int] NOT NULL,
 CONSTRAINT [pk_s_StageFarmVersion] PRIMARY KEY NONCLUSTERED 
(
	[platformId] ASC,
	[versionName] ASC,
	[buildNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[s_WhiteIp]    Script Date: 2023/4/7 16:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_WhiteIp](
	[startIpNo] [bigint] NOT NULL,
	[endIpNo] [bigint] NOT NULL,
	[startIp] [varchar](15) NULL,
	[endIp] [varchar](15) NULL,
	[name] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_s_WhiteIp] PRIMARY KEY NONCLUSTERED 
(
	[startIpNo] ASC,
	[endIpNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
