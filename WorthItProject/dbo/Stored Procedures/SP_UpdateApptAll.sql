
CREATE             PROC [dbo].[SP_UpdateApptAll] @requestid int

AS
BEGIN

DECLARE @ApptDate as datetime
DECLARE @ApptTime as datetime
DECLARE @CGID as int
DECLARE @CampaignID as int

SET @ApptDate = (select appointmentdate from request where requestid = @requestid)
SET @ApptTime = (select AppointmentTime from request where requestid = @requestid)
SET @CGID = (select CareGiverAdultID from request where requestid = @requestid)
SET @CampaignID = (select CampaignID from request where requestid = @requestid)

	UPDATE Request
		SET AppointmentDate = @ApptDate,
			AppointmentTime = @apptTime,
			AppointmentModifiedDate = Getdate(),
			ModifyDate = Getdate()
		WHERE CareGiverAdultID = @CGID and CampaignID = @Campaignid
END



