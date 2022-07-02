


-- =============================================
-- Author:		Teresa Wilbanks
-- Create date: 02/22/2022
-- Description:	Procedure to append CampaignEvent table. 
-- Assignes EventLocationID and CEventStartDate to CampaignID 
-- for events that can have multiple locations and dates
-- CEventEndDate is set = CEventStartDate
-- =============================================






CREATE                 PROC [dbo].[sp_CampaignEventAppend] @txtCampaignID int, @cboEventLocationID int, @txtCEventStartDate date, @txtMaxAttendees int, @UserID varchar (255), @ckresult int OUTPUT

AS
BEGIN
If Exists (Select CampaignEventID from CampaignEvent where EventLocationID = @cboEventLocationID and CEventStartDate = @txtCEventStartDate) 
	BEGIN
	SET @ckresult = 1
	END
Else
	BEGIN
		INSERT INTO CampaignEvent (CampaignID, EventLocationID, CEventStartDate, CEventEndDate, MaxAttendees, Modifiedby, modifiedDate)
		VALUES (@txtCampaignID, @cboEventLocationID, @txtCEventStartDate, @txtCEventStartDate, @txtMaxAttendees, @UserID, getdate())
		SET @ckresult = 2
	END
END
