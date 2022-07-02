









CREATE                     PROC [dbo].[SP_AdultRoleAdd] @adultid int, @txtAdultJobTypeID int, @txtCGPlacementTypeID int = null, @txtGroupHomeID int = null, @cuser varchar(255)


AS

	INSERT INTO AdultJobAssignment (adultnameid, adultjobtypeid, cgplacementtypeid, grouphomeid, Active, Modifiedby, modifyDate)
	VALUES (@AdultID, @txtAdultJobTypeID, @txtCGPlacementTypeID, @txtGroupHomeID, 1, @cuser, getdate())

