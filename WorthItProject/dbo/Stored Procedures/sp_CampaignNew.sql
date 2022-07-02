







CREATE               PROC [dbo].[sp_CampaignNew] @txtCampaignTypeID int, @txtCampaignYear int, @UserID varchar (255), @txtCampaignID int OUTPUT, @ckresult int OUTPUT

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
	END
END
