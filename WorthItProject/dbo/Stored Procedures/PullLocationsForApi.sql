

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE     PROCEDURE [dbo].[PullLocationsForApi]
	@FinalDestinationID INT

AS
BEGIN
	SELECT PickUpDropOffLocation, deliveryorder FROM vw_PickupDropOffLocation WHERE FinalDestinationID = @FinalDestinationID FOR JSON AUTO
END
