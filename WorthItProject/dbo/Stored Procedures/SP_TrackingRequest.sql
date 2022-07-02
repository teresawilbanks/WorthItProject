







CREATE                 PROC [dbo].[SP_TrackingRequest] @Participationid int, @requestcompletedbyAdultID int, @socialworkeradultid int, @caregiveradultid int, @galadultid int, @childid int, @bagpickuplocation int, @completioncontactjobtype int, @cboEmailid int = null, @generalcomments varchar (500)  = null, @cuser varchar(255), @RequestID int OUTPUT


AS
BEGIN
	INSERT into request (Requesttypeid, requestdate, needbydate, RequestCompletedbyAdultID, CompletionContactJobType,SocialWorkerAdultID,CareGiverAdultID,GALAdultID,childid, bagpickuplocation, ParticipationID, requeststatusid, EmailID, CreateDate, LastModifiedBy)
	VALUES(12, getdate(), getdate(), @RequestCompletedbyAdultID, @CompletionContactJobType, @SocialWorkerAdultID, @CareGiverAdultID, @GALAdultID, @childid, @bagpickuplocation, 7, 10, @cboemailid, getdate(), @cuser)	
END

SELECT @RequestID = @@IDENTITY

