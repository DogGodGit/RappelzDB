USE [Rappelz_Gate]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_WhiteIps]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspApi_WhiteIps]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_StageFarmVersion]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspApi_StageFarmVersion]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_StageFarm]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspApi_StageFarm]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_Platform]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspApi_Platform]
GO
/****** Object:  StoredProcedure [dbo].[uspApi_BlackIps]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspApi_BlackIps]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_WhiteIps]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_WhiteIps]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_UpdateStageFarmVersion]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_UpdateStageFarmVersion]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_UpdatePlatform]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_UpdatePlatform]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_StageFarmVersions_Disabled]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_StageFarmVersions_Disabled]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_StageFarmVersions]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_StageFarmVersions]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_StageFarms]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_StageFarms]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_Platforms]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_Platforms]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_DeleteWhiteIp]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_DeleteWhiteIp]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_BlackIps]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_BlackIps]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddWhiteIp]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_AddWhiteIp]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddStageFarmVersion]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_AddStageFarmVersion]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddPlatform]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_AddPlatform]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddBlackIp]    Script Date: 2023/4/6 19:29:57 ******/
DROP PROCEDURE [dbo].[uspAdmin_AddBlackIp]
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddBlackIp]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=================================================================================================
  설  명 : 블랙IP 등록
  작성자 : 장재혁    
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_AddBlackIp]
	@bnStartIpNo bigint,
	@bnEndIpNo	 bigint,
	@sStartIp	 varchar(15),
	@sEndIp		 varchar(15),
	@sName		 nvarchar(20)
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO s_BlackIp(startIpNo, endIpNo, startIp, endIp, name)
	VALUES(@bnStartIpNo, @bnEndIpNo, @sStartIp, @sEndIp, @sName)
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
		
	RETURN 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddPlatform]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : 플랫폼 정보 추가
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_AddPlatform]
	@nPlatformId	int,
	@sName			nvarchar(20),
	@sDownloadUrl	varchar(200)
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO s_Platform(platformId, name, downloadUrl)
	VALUES(@nPlatformId, @sName, @sDownloadUrl)

	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddStageFarmVersion]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=============================================================================
  설  명 : [관리자] 스테이지팜버전 등록
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_AddStageFarmVersion]
	@nPlatformId	int,
	@sVersionName	varchar(20),
	@nBuildNo		int,
	@nFarmId		int,
	@enabled		bit
AS
BEGIN
	SET NOCOUNT ON
	
	INSERT INTO s_StageFarmVersion(platformId, versionName, buildNo, farmId, enabled, internalFarmId)
	VALUES(@nPlatformId, @sVersionName, @nBuildNo, @nFarmId, @enabled, 0)
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_AddWhiteIp]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=================================================================================================
  설  명 : 화이트IP 등록
  작성자 : 김동완    
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_AddWhiteIp]
	@bnStartIpNo	bigint,
	@bnEndIpNo		bigint,
	@sStartIp		varchar(15),
	@sEndIp			varchar(15),
	@sName			nvarchar(20)
AS
BEGIN

	SET NOCOUNT ON
	
	INSERT INTO s_WhiteIp(startIpNo, endIpNo, startIp, endIp, name)
	VALUES(@bnStartIpNo, @bnEndIpNo, @sStartIp, @sEndIp, @sName)
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_BlackIps]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=================================================================================================
  설  명 : 블랙IP 목록
  작성자 : 장재혁    
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_BlackIps]
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_BlackIp WITH(NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_DeleteWhiteIp]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=================================================================================================
  설  명 : 화이트IP 삭제
  작성자 : 김동완    
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_DeleteWhiteIp]
	@bnStartIpNo	bigint,
	@bnEndIpNo		bigint
AS
BEGIN
	SET NOCOUNT ON
	
	DELETE 
	  FROM s_WhiteIp
	 WHERE startIpNo = @bnStartIpNo
	   AND endIpNo = @bnEndIpNo
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0	

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_Platforms]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : [관리자] 플랫폼 목록
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_Platforms]
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_Platform WITH(NOLOCK)

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_StageFarms]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=========================================================	====================
  설  명 : [관리자] 스테이지팜 목록
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_StageFarms]
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_StageFarm WITH(NOLOCK)

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_StageFarmVersions]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=============================================================================
  설  명 : [관리자] 스테이지팜버전 목록
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_StageFarmVersions]
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT a.*, b.name as platformName, c.name as farmName, c.serverUrl
	  FROM s_StageFarmVersion a WITH(NOLOCK),
		   s_Platform b WITH(NOLOCK),
		   s_StageFarm c WITH(NOLOCK)
	 WHERE a.platformId = b.platformId
	   AND a.farmId = c.farmId
	   AND a.enabled = 1
	 ORDER BY versionName DESC, buildNo DESC

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_StageFarmVersions_Disabled]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : [관리자] 스테이지팜버전 목록 전체
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_StageFarmVersions_Disabled]
	@nRowsPerPage	int,
	@nPage			int,
	@nTotalCount	int output
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT @nTotalCount = COUNT(*)
	  FROM s_StageFarmVersion WITH(NOLOCK)
	 WHERE enabled = 0
	
	SELECT *
	  FROM (
			SELECT a.*, b.name as platformName, c.name as farmName, c.serverUrl, ROW_NUMBER() OVER (ORDER BY versionName DESC, buildNo DESC) AS seqNo
			  FROM s_StageFarmVersion a WITH(NOLOCK),
				   s_Platform b WITH(NOLOCK),
				   s_StageFarm c WITH(NOLOCK)
			 WHERE a.platformId = b.platformId
			   AND a.farmId = c.farmId
			   AND a.enabled = 0
			) AS TBL
	 WHERE TBL.seqNo BETWEEN ((@nPage-1)*@nRowsPerPage)+1 AND @nRowsPerPage*(@nPage)

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_UpdatePlatform]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : 플랫폼 정보 수정
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_UpdatePlatform]
	@nPlatformId	int,
	@sDownloadUrl	varchar(200)
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE s_Platform 
	   SET downloadUrl = @sDownloadUrl
	 WHERE platformId = @nPlatformId
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_UpdateStageFarmVersion]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : [관리자] 스테이지팜버전 수정
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_UpdateStageFarmVersion]
	@nPlatformId		int,
	@sVersionName		varchar(10),
	@nBuildNo			int,
	@nFarmId			int,
	@nInternalFarmId	int,
	@enabled			bit
AS
BEGIN
	SET NOCOUNT ON
	
	UPDATE s_StageFarmVersion
	   SET farmId = @nFarmId,
		   internalFarmId = @nInternalFarmId,
		   enabled = @enabled
	 WHERE platformId = @nPlatformId
	   AND versionName = @sVersionName
	   AND buildNo = @nBuildNo
	
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		RETURN 1
	
	RETURN 0

END
GO
/****** Object:  StoredProcedure [dbo].[uspAdmin_WhiteIps]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*=================================================================================================
  설  명 : 화이트IP 목록
  작성자 : 김동완    
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspAdmin_WhiteIps]
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_WhiteIp WITH(NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[uspApi_BlackIps]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*=================================================================================================
  설  명 : 블랙 IP 여부 조회
  작성자 : 김동완
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspApi_BlackIps]
	@bnIpNo		bigint
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_BlackIp WITH(NOLOCK)
	 WHERE @bnIpNo between startIpNo and endIpNo
END
GO
/****** Object:  StoredProcedure [dbo].[uspApi_Platform]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=========================================================	====================
  설  명 : 플랫폼 정보
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspApi_Platform]
	@nPlatformId	int
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_Platform WITH(NOLOCK)
	 WHERE platformId = @nPlatformId

END
GO
/****** Object:  StoredProcedure [dbo].[uspApi_StageFarm]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : 스테이지팜 정보
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspApi_StageFarm]
	@nFarmId	int
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_StageFarm WITH(NOLOCK)
	 WHERE farmId = @nFarmId
	 
END
GO
/****** Object:  StoredProcedure [dbo].[uspApi_StageFarmVersion]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=============================================================================
  설  명 : 스테이지팜버전 정보
  작성자 : 김동완
=============================================================================*/
CREATE   PROCEDURE [dbo].[uspApi_StageFarmVersion]
	@nPlatformId	int,
	@sVersionName	varchar(20),
	@nBuildNo		int
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_StageFarmVersion WITH(NOLOCK)
	 WHERE platformId = @nPlatFormId
	   AND versionName = @sVersionName
	   AND buildNo = @nBuildNo
	   AND enabled = 1

END
GO
/****** Object:  StoredProcedure [dbo].[uspApi_WhiteIps]    Script Date: 2023/4/6 19:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*=================================================================================================
  설  명 : 화이트 IP 여부 조회
  작성자 : 김동완
=================================================================================================*/
CREATE   PROCEDURE [dbo].[uspApi_WhiteIps]
	@bnIpNo		bigint
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT *
	  FROM s_WhiteIp WITH(NOLOCK)
	 WHERE @bnIpNo between startIpNo and endIpNo
END
GO
