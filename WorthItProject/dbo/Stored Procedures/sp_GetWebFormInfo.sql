


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE         PROCEDURE [dbo].[sp_GetWebFormInfo]
	@RequestId int

AS
BEGIN
	SELECT BagPickupLocation, RequestStatusID, RequestID, CurrentLocation FROM dbo.request WHERE @RequestId = RequestId FOR JSON AUTO

END
