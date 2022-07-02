






CREATE               PROC [dbo].[SP_ChildAdd] @txtFirstName varchar(max), @txtLastInitial varchar(max), @txtLastName varchar(max) = null, @txtNickName varchar(max) = null, @txtDOB datetime2(0), @txtGender int, @txtIdentifiesAsGender int, @txtEthnicityID int, @txtChildPlacemenetID int, @txtCountyID int, @txtCountySocialWorker bit, @txtCountyResidence bit, @txtSiblingsNames varchar(max) = null, @txtSameHome bit, @txtComments varchar(max) = null, @txtEmailID int, @cuser varchar(255), @ChildID int OUTPUT


AS
BEGIN
	INSERT into Child (FirstName, LastInitial,LastName, Nickname, DOB, Gender, IdentifiesAsGender, EthnicityID, ChildPlacementID, CountyID, CountySocialWorker, CountyResidence, SiblingsNames, SameHome, Comments, LastModifiedBy)
	VALUES(@txtFirstName, @txtLastInitial, @txtLastName, @txtNickName, @txtDOB, @txtGender, @txtIdentifiesAsGender, @txtEthnicityID, @txtChildPlacemenetID, @txtCountyID, @txtCountySocialWorker, @txtCountyResidence, @txtSiblingsNames, @txtSameHome, @txtComments, @Cuser)	
END

SELECT @ChildID = @@IDENTITY

update temprequest
	set ChildID = @childid
	WHERE Emailid = @txtemailid and requesttypeid <>4

Update temprequest
	set childid = @childid
	WHERE Emailid = @txtemailid and requesttypeid = 4 and ChildfirstName = @txtfirstname

Update temprequest
	set childid2 = @childid
	WHERE Emailid = @txtemailid and requesttypeid = 4 and Child2FirstName = @txtfirstname

