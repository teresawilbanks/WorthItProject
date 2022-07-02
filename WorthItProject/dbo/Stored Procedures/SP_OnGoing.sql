


-- =============================================
-- Author:		Teresa Wilbanks
-- Create date: 02/25/2022
-- Description:	Procedure to create a request using core data from
-- an original request.  Used for on-going requests such as monthly tutoring. 
-- Creates new request for the same child as original with same core data. 
-- =============================================
   
CREATE                       PROC [dbo].[SP_OnGoing] @RequestID int, @cuser nvarchar(255), @newID int OUTPUT

AS
BEGIN
	
	UPDATE REQUEST 
		SET BagFilledDate = getdate(),
			RequestClosedDate = getdate(),
			RequestStatusID = 25
		WHERE requestid = @RequestID

	INSERT INTO Request (requesttypeid, EmailID, requestdate, NeedbyDate, RequestCompletedbyAdultID, CompletionContactJobType, SocialWorkerAdultID, CareGiverAdultID, galadultid, ContactCG, GroupHomeID, ChildID, GeneralComments, requeststatusid, participationid, ParticipationComment, additionalinfo)
		SELECT requesttypeid, emailid, getdate(), getdate() +90, RequestCompletedbyAdultID, CompletionContactJobType, SocialWorkerAdultID, CareGiverAdultID,GALAdultID, ContactCG, GroupHomeID, ChildID, GeneralComments, 12, ParticipationID, ParticipationComment, additionalinfo
		from request
		WHERE request.requestid = @RequestID

	SELECT @newid = @@IDENTITY;
	
	INSERT INTO ProductNonInventory (ProductName, ProductQty, ProductValue, requestID)
		SELECT ProductName, 0, productvalue, @NEWID
		from ProductNonInventory
		WHERE RequestID = @requestID

	
END
