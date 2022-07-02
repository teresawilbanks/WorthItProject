









CREATE                               PROC [dbo].[SP_CabinChildMatch]  @txtCabinID int, @txtChildID int, @txtCampaignID int, @cuser nvarchar(255), @ckresult int OUTPUT

AS
BEGIN
DECLARE @childcount int
DECLARE @MaxOcc int
DECLARE @CabinGender int
DECLARE @ChildGender int

SELECT @childcount = COUNT(*) FROM CabinDetail WHERE CabinID = @txtCabinid and active =1
SELECT @MaxOcc = MaxOcc From CampCabin where Cabinid = @txtcabinid
Select @CabinGender = genderid from CampCabin WHERE CabinID = @txtCabinID
Select @ChildGender = gender from Child WHERE ChildID = @txtChildID

--If @childcount >= @MaxOcc 
--	BEGIN
--	Set @ckresult = 1
--	END
--Else 
If @cabingender != @ChildGender
	BEGIN
	SET @ckresult = 3
	END
Else	
	BEGIN
		Set @Ckresult = 2
		INSERT into CabinDetail (Childid, cabinid, CampaignID, ModifiedBy)
		VALUES (@txtchildID, @txtCabinID, @txtCampaignID, @cuser)
	
	END
END
