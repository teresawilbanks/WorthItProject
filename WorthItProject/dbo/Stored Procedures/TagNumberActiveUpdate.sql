
CREATE       PROC [dbo].[TagNumberActiveUpdate] @RequestID int
AS
BEGIN
	UPDATE [dbo].[EventTag]	
		SET Active = 0
		WHERE @requestID = requestid 
END
