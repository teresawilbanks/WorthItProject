




CREATE                     PROC [dbo].[SP_CabinRemove] @tribeid int, @cabinid int, @cuser nvarchar(255)

AS
BEGIN
	DELETE TribeDetail
		where tribeID = @tribeID and cabinid = @cabinid
END
