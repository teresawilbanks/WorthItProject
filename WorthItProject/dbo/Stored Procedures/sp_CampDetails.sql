




CREATE           PROC [dbo].[sp_CampDetails] @CampaignID int, @txtStartDate datetime2(7), @txtEndDate datetime2(7), @txtlocation int, @txtCampValue int, @txtMaxOcc int, @ckresult int OUTPUT

AS
BEGIN
	If Exists (Select CampaignID from CampaignEvent where CampaignID = @CampaignID)
		BEGIN
			SET @CkResult = 1
		END
	Else
		BEGIN
			SET @ckResult = 2
			INSERT INTO CampaignEvent (CampaignID,  CEventStartDate, CEventEndDate, eventlocationid, MaxAttendees)
			VALUES (@CampaignID, @txtStartDate, @txtEndDate,@txtlocation, @txtMaxOcc)
			
			INSERT INTO CampaignBOM (CampaignID, CampaignProductNameID, CampaignProductValue, UseInventoryValue)
			VALUES (@campaignID, 69, @txtCampValue, 0)


		END
END
