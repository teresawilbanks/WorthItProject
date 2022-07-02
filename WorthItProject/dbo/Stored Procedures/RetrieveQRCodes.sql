

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[RetrieveQRCodes]


AS
BEGIN
	

	SELECT RequestID FROM dbo.Request WHERE RequestStatusID = 10 and requesttypeid in (1,2,3,4,5,9,12,13) FOR JSON AUTO
END
