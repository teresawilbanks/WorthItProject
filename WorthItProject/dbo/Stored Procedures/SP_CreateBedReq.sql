







CREATE                     PROC [dbo].[SP_CreateBedReq] @EmailID int, @bed1 int = null, @bed2 int = null, @RequestID int output

AS
BEGIN


DECLARE @RGnumber as int

set @rgnumber = (select(Max(requestgroup) + 1) from temprequest)


UPDATE temprequest
	set Requestgroup = @RGnumber
	where temprequest.emailid = @emailid

--child1
INSERT into Request (RequestTypeId, RequestDate, NeedbyDate, RequestCompletedbyAdultID, CompletionContactJobType, SocialWorkerAdultID, CareGiverAdultID, ContactCG, GroupHomeID, childid, bedsizeid, GeneralComments, EmailID, RequestStatusID)
	SELECT requesttypeid, requestdate, needbydate, RCBID, CompletionContactTypeID, SWID, CGID, ContactCG, GroupHomeID, ChildID, @bed1, Comments, emailid, 10 as requeststatusid FROM temprequest tr
       WHERE tr.emailid = @emailid and BedType1 is not null
  
 SELECT @RequestID = @@IDENTITY

--child2 
  INSERT into Request (RequestTypeId, RequestDate, NeedbyDate, RequestCompletedbyAdultID, CompletionContactJobType, SocialWorkerAdultID, CareGiverAdultID, ContactCG, GroupHomeID, childid, BedSizeID, GeneralComments, EmailID, RequestStatusID)
	SELECT requesttypeid, requestdate, needbydate, RCBID, CompletionContactTypeID, SWID, CGID, ContactCG, GroupHomeID, ChildID2, @bed2, Comments, emailid, 10 as requeststatusid FROM temprequest tr
       WHERE tr.emailid = @emailid and tr.childid2 is not null and BedType2 is not null

UPDATE tempRequest
	SET Status = 10
	where emailid = @EmailID

EXEC sp_beddetails @emailid

END
