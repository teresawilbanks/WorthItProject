




CREATE           PROC [dbo].[SP_BedSet] @ParentReqId int, @ChildReqId int

AS
BEGIN
	INSERT into RequestSet (ParentRequestID, ChildRequestID)
	VALUES(@ParentReqID, @ChildReqID)	
END
