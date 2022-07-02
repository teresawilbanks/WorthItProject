
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateTexts]
	@Flag nvarchar(max),
	@SentBool int,
	@TextId int
AS
BEGIN
	UPDATE dbo.TextsToSend SET Flag = @Flag, SentBool = @SentBool WHERE TextID = @TextID
END
