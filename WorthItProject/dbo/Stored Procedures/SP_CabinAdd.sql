

CREATE               PROC [dbo].[SP_CabinAdd] @txtCabinName nvarchar(55), @txtCabinCampaignID int, @txtAgeGroupID int, @txtGenderID int, @txtMaxOcc int, @txtCampRefID nvarchar(50), @cuser nvarchar(255)

AS
BEGIN
	INSERT into CampCabin (CabinName, CampaignID, AgeGroupID, genderID, MaxOcc, campgroundRefID, Modifiedby )
	VALUES(@txtCabinName, @txtCabinCampaignID, @txtAgeGroupID, @txtGenderID, @txtMaxocc, @txtCampRefID, @cuser)
END
