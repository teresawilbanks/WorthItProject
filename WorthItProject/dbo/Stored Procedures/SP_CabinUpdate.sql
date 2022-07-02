

CREATE               PROC [dbo].[SP_CabinUpdate] @txtCabinID int, @txtCabinName nvarchar(55), @txtAgeGroupID int, @txtMaxOcc int, @txtGender int, @txtCampgroundRef nvarchar(55), @cuser nvarchar(255)

AS

BEGIN
	UPDATE CampCabin 
		SET CabinName = @txtCabinName
		WHERE CabinID = @txtCabinid
	UPDATE CampCabin 
		SET AgeGroupID = @txtAgeGroupID
		WHERE CabinID = @txtCabinid
	UPDATE CampCabin 
		SET MaxOcc = @txtMaxOcc
		WHERE CabinID = @txtCabinid
	UPDATE CampCabin 
		SET ModifiedBy = @cuser
		WHERE CabinID = @txtCabinid
	UPDATE CampCabin 
		SET modifydate = getdate()
		WHERE CabinID = @txtCabinid
	UPDATE CampCabin 
		SET Genderid = @txtGender
		WHERE CabinID = @txtCabinid
	UPDATE CampCabin 
		SET CampgroundRefID = @txtCampgroundRef
		WHERE CabinID = @txtCabinid

END
