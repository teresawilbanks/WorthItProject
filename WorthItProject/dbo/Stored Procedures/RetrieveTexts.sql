

-- =============================================
CREATE     PROCEDURE [dbo].[RetrieveTexts]
	

AS
BEGIN
	DECLARE @result NVARCHAR(max);
	SET @result = ( SELECT [PhoneNumber], [TextMsg], [createDate], [TextID] FROM dbo.TextsToSend WHERE SentBool = 0 FOR JSON AUTO )
	SELECT @result;
END
