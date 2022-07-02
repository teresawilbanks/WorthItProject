





CREATE             PROC [dbo].[SP_GroupHomeAdd] @txtGroupHomeName varchar(max), @phoneNumber varchar(255), @GroupHomeID int OUTPUT


AS
BEGIN
	INSERT into GroupHome (GroupHomeName, PhoneNumber)
	VALUES(@txtGroupHomeName, @phoneNumber)	
END

SELECT @GroupHomeID = @@IDENTITY


