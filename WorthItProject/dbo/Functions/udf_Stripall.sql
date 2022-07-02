
/****** Object:  UserDefinedFunction [dbo].[udf_StripHTML]    Script Date: 12/30/2019 2:18:39 PM ******/
CREATE FUNCTION [dbo].[udf_Stripall]
(@HTMLText VARCHAR(MAX))
RETURNS VARCHAR(MAX)
AS

BEGIN
    DECLARE @Start INT
    DECLARE @End INT
    DECLARE @Length INT
    SET @Start = CHARINDEX('<',@HTMLText)
    SET @End = CHARINDEX('>',@HTMLText,CHARINDEX('<',@HTMLText))
    SET @Length = (@End - @Start) + 1
    WHILE @Start > 0 AND @End > 0 AND @Length > 0
    BEGIN
        SET @HTMLText = STUFF(@HTMLText,@Start,@Length,'')
        SET @Start = CHARINDEX('<',@HTMLText)
        SET @End = CHARINDEX('>',@HTMLText,CHARINDEX('<',@HTMLText))
        SET @Length = (@End - @Start) + 1
    END

    DECLARE @Start2 INT
    DECLARE @End2 INT
    DECLARE @Length2 INT
    SET @Start2 = CHARINDEX('style',@HTMLText)
    SET @End2 = CHARINDEX('>',@HTMLText,CHARINDEX('style',@HTMLText))
    SET @Length2 = (@End2 - @Start2) + 1
    WHILE @Start2 > 0 AND @End2 > 0 AND @Length2 > 0
    BEGIN
        SET @HTMLText = STUFF(@HTMLText,@Start2,@Length2,'')
        SET @Start2 = CHARINDEX('style',@HTMLText)
        SET @End2 = CHARINDEX('>',@HTMLText,CHARINDEX('style',@HTMLText))
        SET @Length2 = (@End2 - @Start2) + 1
    END
    RETURN LTRIM(RTRIM(@HTMLText))

	
END
