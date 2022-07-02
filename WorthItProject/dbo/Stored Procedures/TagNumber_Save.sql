

CREATE   PROC [dbo].[TagNumber_Save] @RequestID int, @campaignid int, @EventLocationID int, @TagNumber nvarchar(50)
AS
BEGIN
	INSERT INTO [dbo].[EventTag]	
			(requestID, CampaignID, EventLocationID, TagNumber)
		VALUES
			(@RequestID, @CampaignID, @EventLocationID, @TagNumber)
END
