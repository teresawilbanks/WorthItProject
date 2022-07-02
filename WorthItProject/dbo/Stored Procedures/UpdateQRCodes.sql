

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[UpdateQRCodes]

	@RequestID INT,
	@RequestStatusID INT
AS
BEGIN
	
	UPDATE dbo.Request SET RequestStatusID = @RequestStatusID WHERE RequestID = @RequestID and requesttypeid in (1,2,3,4,5,9,12,13)

END
