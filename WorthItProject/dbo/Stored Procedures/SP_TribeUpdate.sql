

CREATE               PROC [dbo].[SP_TribeUpdate] @txtTribeID int, @txtTribeName nvarchar(55), @txtAgeGroupID int, @txtMaxCabins int, @cuser nvarchar(255)

AS

BEGIN
	UPDATE CampTribe 
		SET TribeName = @txtTribeName
		WHERE TribeID = @txttribeid
	UPDATE CampTribe 
		SET AgeGroupID = @txtAgeGroupID
		WHERE TribeID = @txttribeid
	UPDATE CampTribe 
		SET MaxCabins = @txtMaxCabins
		WHERE TribeID = @txttribeid
	UPDATE CampTribe 
		SET UserID = @cuser
		WHERE TribeID = @txttribeid
	UPDATE CampTribe 
		SET modifydate = getdate()
		WHERE TribeID = @txttribeid
END
