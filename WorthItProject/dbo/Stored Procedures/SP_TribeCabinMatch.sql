




CREATE                     PROC [dbo].[SP_TribeCabinMatch]  @txtCabinID int, @txtTribeID int, @CampaignID int, @cuser nvarchar(255), @ckresult int OUTPUT

AS
BEGIN
DECLARE @cabincount int
DECLARE @Maxcabin int

SELECT @cabincount = COUNT(*) FROM TribeDetail WHERE tribeID = @txttribeid and active = 1
SELECT @Maxcabin = MaxCabins From CampTribe where tribeid = @txttribeid

If @cabincount >= @maxcabin 
	BEGIN
	Set @ckresult = 1
	END
Else
	BEGIN
		Set @Ckresult = 2
		INSERT into TribeDetail (tribeid, cabinid, campaignID, ModifiedBy)
		VALUES (@txtTribeID, @txtCabinID, @CampaignID, @cuser)
	
	END
END
