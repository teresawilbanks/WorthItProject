







CREATE                           PROC [dbo].[SP_CampChildRemove] @childid int, @cabinid int, @cuser nvarchar(255)

AS

IF EXISTS (SELECT * from CabinDetail where ChildID = @childID and cabinid = @cabinid)
BEGIN
	DELETE CabinDetail
		where ChildID = @ChildID and cabinid = @cabinid
END
