
















CREATE                                  PROC [dbo].[SP_AdultAdd] @txtFirstName varchar(255),  @txtLastName varchar(255), @txtalias varchar(255), @txtAddressLine1 varchar(255) = null, @txtAddressLine2 varchar(255) = null, @txtCity varchar(50)= null, @txtStateId int= null, @txtzip nvarchar(5) = null, @txtCountyID int = null, @txtLicensingAgencyID int = null, @txtphonenumber nvarchar (10) = null,@txtExt nvarchar(10), @txttextable int, @txtaltPhone nvarchar (10), @txtAltExt nvarchar (10), @txtaltTextable int, @txtEmailAddress nvarchar(255) = null, @txtComment nvarchar(max)= null, @txtAdultJobTypeID int, @txtCGPlacementTypeID int = null, @txtGroupHomeID int = null, @txtEmailID int, @txtRole nvarchar(55), @cuser varchar(255), @AdultID int OUTPUT


AS

	INSERT into Adult (FirstName, LastName, alias, Email, AddressLine1, AddressLine2, City, StateID, Zip, CountyID, LicensingAgencyID, PhoneNumberPrimary, PrimaryTextable, altphone, altTextable, comment, LastModifiedBy)
	VALUES(@txtFirstName, @txtLastName, @txtalias,@txtEmailAddress, @txtAddressLine1, @txtAddressLine2, @txtCity, @txtStateId, @txtzip, @txtCountyID, @txtLicensingAgencyID,@txtphonenumber, @txttextable, @txtaltPhone, @txtaltTextable, @txtComment, @cuser)	

SELECT @AdultID = @@IDENTITY

	INSERT INTO AdultJobAssignment (adultnameid, adultjobtypeid, cgplacementtypeid, grouphomeid)
	VALUES (@AdultID, @txtAdultJobTypeID, @txtCGPlacementTypeID, @txtGroupHomeID)

IF @txtadultjobtypeid = 1 
	BEGIN
		UPDATE tempRequest
		SET CGID = @adultid
		WHERE tempRequest.emailid = @txtemailID 
	END
ELSE IF @txtadultjobtypeid = 2
	BEGIN
		UPDATE tempRequest
		SET SWID = @adultid
		WHERE tempRequest.emailid = @txtemailID 
	END
ELSE IF @txtAdultJobTypeID = 3
	BEGIN
		UPDATE tempRequest
		SET GALID = @adultid
		WHERE tempRequest.emailid = @txtemailID and @txtAdultJobTypeID = 3
	END
ELSE IF @txtadultjobTypeID = 10
	BEGIN
	UPDATE tempRequest
	SET rcbID = @adultid
	WHERE tempRequest.emailid =@txtemailID and @txtAdultJobTypeID = 10
	END



