






CREATE              PROC [dbo].[SP_CloseReq] @RequestID int, @cuser nvarchar(255)
AS
BEGIN
	UPDATE Request
		set RequestStatusID = 25,
			LastModifiedBy = @cuser,
			RequestClosedDate = getdate(),
			ModifyDate = getdate()
		Where requestid = @RequestID

END

