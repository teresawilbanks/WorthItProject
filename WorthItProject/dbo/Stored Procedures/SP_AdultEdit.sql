






CREATE                                  PROC [dbo].[SP_AdultEdit]  @txtAdultID int, @txtFirstName varchar(255),  @txtLastName varchar(255), @txtalias varchar(255) = null,@txtaddress1 varchar(255) = null,@txtaddress2 varchar(255) = null, @txtcity varchar(255) = null,@txtstateid int =null, @txtzip varchar(5) = null, @txtCountyID int = null, @txtlicensingagencyid int = null, @txtphone nvarchar (10) = null, @txtExt nvarchar (10), @txtAltPhone nvarchar (10) = null, @txtAltExt nvarchar (10),  @txtcomment varchar(255) = null, @ckTextable bit = null, @ckTextableAlt bit = null, @txtEmailAddress varchar(255), @cuser varchar(255)
AS

--update values

update adult
	set	firstname =  @txtfirstname,
		lastname =  @txtlastname,
		alias =  @txtalias,
		PhoneNumberPrimary =  @txtphone,
		PhonePrimaryExtension = @txtExt,
		AltPhone = @txtAltPhone,
		AltExtension = @txtAltExt,
		AddressLine1 = @txtaddress1,
		AddressLine2 = @txtaddress2,
		City = @txtcity,
		StateID = @txtstateid,
		Zip = @txtzip,
		LicensingAgencyID = @txtlicensingagencyid,
		CountyID = @txtCountyID,
		Comment = @txtcomment,
		PrimaryTextable = CASE
							WHEN @ckTextable = 0 Then 0
							WHEN @cktextable = -1 then 1
							WHEN @ckTextable = 1 then 1
						END,
		AltTextable = CASE
							WHEN @ckTextableAlt = 0 Then 0
							WHEN @ckTextableAlt = -1 then 1
							WHEN @ckTextableAlt = 1 then 1
						END,
		email = @txtEmailAddress
	WHERE Adultid = @txtAdultID

