


CREATE                   PROC [dbo].[SP_OnHold] @EMAILID int, @cuser nvarchar(255)

AS
BEGIN
	UPDATE tempRequest
		SET status = 8 where EMailID = @emailid
END
