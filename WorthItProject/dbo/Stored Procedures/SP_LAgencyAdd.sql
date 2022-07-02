





CREATE             PROC [dbo].[SP_LAgencyAdd] @txtAgencyName varchar(max), @AgencyID int OUTPUT


AS
BEGIN
	INSERT into AdultLicensingAgency (AgencyName)
	VALUES(@txtAGencyName)	
END

SELECT @AgencyID = @@IDENTITY


