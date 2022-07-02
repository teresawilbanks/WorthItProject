




CREATE           PROC [dbo].[sp_CampDetailsEdit] @CampaignID int, @txtStartDate datetime2(7), @txtEndDate datetime2(7), @txtlocation int, @txtCampValue int, @txtMaxOcc int, @UserID varchar(255)

AS
BEGIN
	UPDATE CampaignEvent
		set CEventStartDate = @txtStartDate
		where campaignid = @campaignid and @txtstartdate is not null
	UPDATE CampaignEvent
		Set CEventEndDate = @txtEndDate
		where campaignid = @campaignid and @txtenddate is not null
	UPDATE CampaignEvent
		Set EventLocationID = @txtlocation
		where campaignid = @campaignid and @txtlocation is not null
	UPDATE CampaignEvent
		Set Maxattendees = @txtMaxOcc
		where campaignid = @campaignid and @txtMaxOcc is not null
	UPDATE CampaignBOM
		set CampaignProductValue = @txtCampValue
		WHERE campaignID = @campaignid and CampaignProductNameID = 69 and @txtcampvalue is not null
END
