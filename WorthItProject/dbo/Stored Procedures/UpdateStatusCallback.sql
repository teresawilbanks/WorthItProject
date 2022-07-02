
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateStatusCallback]

	@SCB NVARCHAR(MAX),
	@TextId int

AS
BEGIN
	UPDATE dbo.TextsToSend SET StatusCallBack = @SCB WHERE TextID = @TextId
END
