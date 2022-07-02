
CREATE             PROC [dbo].[SP_TribeAdd] @txtTribeName nvarchar(55), @txtTribeCampaign int, @txtAgeGroupID int, @txtMaxCabins int, @cuser nvarchar(255)

AS
BEGIN
	INSERT into CampTribe (TribeName, CampaignID, AgeGroupID, MaxCabins, UserID )
	VALUES(@txtTribeName, @txtTribeCampaign, @txtAgeGroupID, @txtMaxCabins, @cuser)
END
