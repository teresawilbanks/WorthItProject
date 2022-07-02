








CREATE                             PROC [dbo].[SP_CampCancelRequest] @RequestID int, @childid int, @cabinid int, @nocomment nvarchar(255), @cuser nvarchar(255)

AS

BEGIN
--IF EXISTS (SELECT * from CabinDetail where ChildID = @childID and cabinid = @cabinid)
	UPDATE CabinDetail
		set active = 0
		where ChildID = @ChildID and cabinid = @cabinid

	UPDATE Request
		SET ParticipationID = 99,
			RequestStatusID = 25,
			ParticipationComment = @nocomment,
			ModifyDate = getdate(),
			LastModifiedBy = @cuser
		WHERE RequestID = @RequestID

END
