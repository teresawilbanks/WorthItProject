







CREATE               PROC [dbo].[sp_CampaignNewCamp] @txtCampaignTypeID int, @txtCampaignYear int, @txtStartDate datetime2(7), @txtEndDate datetime2(7), @txtLocation int, @txtCampValue int, @txtMaxOcc int, @UserID varchar (255), @txtCampaignID int OUTPUT, @ckresult int OUTPUT

AS
BEGIN
If Exists (Select CampaignID from Campaign where campaigntypeid = @txtCampaignTypeID and CampaignYear = @txtCampaignYear) 
	BEGIN
	SET @ckresult = 1
	SET @txtCampaignID = (Select CampaignID from Campaign where campaigntypeid = @txtCampaignTypeID and CampaignYear = @txtCampaignYear)
	END
Else
	BEGIN
		INSERT INTO Campaign (CampaignTypeID, CampaignYear, CampaignStatusID, UserID, modifyDate)
		VALUES (@txtCampaignTypeID, @txtCampaignYear, 5, @UserID, getdate())
		SELECT @txtCampaignID = @@IDENTITY
		UPDATE Campaign
			SET CampaignSeasonID = 1
			WHERE CampaignTypeID in (6,8) and CampaignID = @txtCampaignID
		UPDATE Campaign
			SET CampaignSeasonID = 2
			WHERE Campaigntypeid = 7 and CampaignID = @txtCampaignID
		SET @ckresult = 2
	
		INSERT INTO CampaignEvent (CampaignID, EventLocationID, CEventStartDate, CEventEndDate, MaxAttendees)
		VALUES (@txtCampaignID, @txtlocation, @txtStartDate, @txtEndDate, @txtMaxOcc)
	
		INSERT INTO CampaignBOM (CampaignID, CampaignProductNameID, CampaignProductValue, UseInventoryValue)
		VALUES(@txtCampaignID, 69, @txtCampValue, 0)
	END
END
