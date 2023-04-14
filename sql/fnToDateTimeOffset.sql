USE [Rappelz_Game1]
GO
/****** Object:  UserDefinedFunction [dbo].[fnToDateTimeOffset]    Script Date: 2023/4/7 16:15:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[fnToDateTimeOffset](@value datetime2)
    RETURNS datetimeoffset AS
BEGIN
    RETURN TODATETIMEOFFSET(@value, DATEPART(TZOFFSET, SYSDATETIMEOFFSET()))
END;
