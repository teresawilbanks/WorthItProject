









CREATE                     PROC [dbo].[SP_AdultRoleModify] @txtAdultNameId int, @txtAdultJobTypeID int, @txtactive int, @cuser varchar(255)


AS

UPDATE AdultJobAssignment
	SET active = 0,
		modifiedby = @cuser
	WHERE AdultNameID = @txtAdultNameId and AdultJobTypeID = @txtAdultJobTypeID and @txtactive = -1

	UPDATE AdultJobAssignment
	SET active = 1,
		modifiedby = @cuser
	WHERE AdultNameID = @txtAdultNameId and AdultJobTypeID = @txtAdultJobTypeID and @txtactive = 0
