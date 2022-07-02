










CREATE                       PROC [dbo].[SP_AdultRoleInactive] @txtAdultNameId int, @txtAdultJobTypeID int, @cuser varchar(255)


AS

UPDATE AdultJobAssignment
	SET active = 0,
		modifiedby = @cuser
	WHERE AdultNameID = @txtAdultNameId and AdultJobTypeID = @txtAdultJobTypeID
