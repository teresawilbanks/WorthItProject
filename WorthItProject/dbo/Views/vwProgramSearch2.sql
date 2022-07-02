
CREATE VIEW [dbo].[vwProgramSearch2]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestStatusID, dbo.Request.RequestTypeID, dbo.Request.RequestID, dbo.Request.NeedbyDate, dbo.Request.ChildID, dbo.Request.CareGiverAdultID, dbo.Request.Serviced, 
                         dbo.Request.RequestDate, dbo.Child.FirstName AS childFirstName, dbo.Request.BagFilledDate, dbo.Request.RequestClosedDate, dbo.Request.BagPickupLocation, dbo.Request.BagDeliveredDate, dbo.Request.Delivered, 
                         dbo.Request.GeneralComments, dbo.Request.CompletionContactJobType, dbo.AdultJobType.JobName, dbo.Request.SocialWorkerAdultID, dbo.Request.GALAdultID, RCB.FirstName AS RCBFname, RCB.LastName AS RCBLname,
                          SW.FirstName AS SWFname, SW.LastName AS SWLname, GAL.FirstName AS GALFname, GAL.LastName AS GALLname, CG.FirstName AS CGFname, CG.LastName AS CGLname, dbo.Child.LastInitial AS ChildLastInitial, 
                         dbo.Child.Nickname, dbo.Child.DOB, dbo.Child.Gender, dbo.Child.EthnicityID, dbo.Child.ChildPlacementID, dbo.Child.CountyID AS ChildCountyID, dbo.Child.SiblingsNames, SW.Email AS SWEmail, 
                         SW.PhoneNumberPrimary AS SWPhone, SW.AltPhone AS SWPhoneAlt, GAL.Email AS GALEmail, GAL.AltPhone AS GALPhoneAlt, GAL.PhoneNumberPrimary AS GALPhone, CG.AltPhone AS CGPhoneAlt, CG.Email AS CGEmail, 
                         CG.PhoneNumberPrimary AS CGPhone, RCB.Email AS RCBEmail, RCB.AltPhone AS RCBPhoneAlt, RCB.PhoneNumberPrimary AS RCBPhone, dbo.Request.ParticipationID, dbo.Request.EmailID, dbo.RequestType.RequestName, 
                         dbo.Request.AttendingEvent, dbo.Request.EventLocationID, ISNULL(dbo.Request.CampaignID, 0) AS CpgID, dbo.Request.Exception, dbo.Request.SponsorID, dbo.Request.ParticipationComment, dbo.Request.WishList, 
                         dbo.Request.ClothingRequested, dbo.Request.AppointmentDate, dbo.Request.AppointmentTime, dbo.Request.AppointmentModifiedDate, dbo.Child.CountySocialWorker AS ChildCtySW, 
                         dbo.Child.CountyResidence AS ChildCtyRes, EmailFormLocationname.Section, EmailFormLocationname.FormTitle, ISNULL(dbo.TagNumber.TagNumber, 0) AS tagNo, dbo.GroupHome.GroupHomeName, 
                         ISNULL(dbo.Request.CampaignID, 0) AS CampaignID, ISNULL(dbo.Request.GroupHomeID, 0) AS GroupHomeID, ISNULL(dbo.ViewCampaignDetail.CabinID, 0) AS CbnID, dbo.CampCabin.CabinName, 
                         ISNULL(dbo.TribeDetail.TribeID, 0) AS TrbID, dbo.CampTribe.TribeName, dbo.Race.EthnicityName AS ChildEthnicity, Gender_1.GenderType AS ChildGender, dbo.Child.LastName AS ChildLastName, 
                         dbo.County.CountyName AS childcountyname, dbo.County.State AS childcountystate, dbo.County.CountyName + N', ' + dbo.County.State AS childfullcounty, dbo.Child.FirstName + N' ' + ISNULL(dbo.Child.LastName, 
                         dbo.Child.LastInitial) AS childfullname, CG.AddressLine1 + N' ' + CG.AddressLine2 + N' ' + CG.City AS cgAddress, dbo.ChildPlacementType.Type AS ChildPlacementType, CabinGender.GenderType AS CabinGender
FROM            dbo.Gender AS CabinGender INNER JOIN
                         dbo.CampCabin ON CabinGender.GenderID = dbo.CampCabin.genderID RIGHT OUTER JOIN
                         dbo.Request INNER JOIN
                         dbo.ViewCampaignDetail ON dbo.Request.RequestID = dbo.ViewCampaignDetail.RequestID ON dbo.CampCabin.CabinID = dbo.ViewCampaignDetail.CabinID LEFT OUTER JOIN
                         dbo.TribeDetail INNER JOIN
                         dbo.CampTribe ON dbo.TribeDetail.TribeID = dbo.CampTribe.TribeID ON dbo.CampCabin.CabinID = dbo.TribeDetail.CabinID LEFT OUTER JOIN
                         dbo.County INNER JOIN
                         dbo.Race INNER JOIN
                         dbo.Child INNER JOIN
                         dbo.Gender AS Gender_1 ON dbo.Child.IdentifiesAsGender = Gender_1.GenderID ON dbo.Race.EthnicityID = dbo.Child.EthnicityID ON dbo.County.CountyID = dbo.Child.CountyID INNER JOIN
                         dbo.ChildPlacementType ON dbo.Child.ChildPlacementID = dbo.ChildPlacementType.ChildPlacementID ON dbo.Request.ChildID = dbo.Child.ChildID LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.Request.GroupHomeID = dbo.GroupHome.GroupHomeID LEFT OUTER JOIN
                         dbo.TagNumber ON dbo.Request.RequestID = dbo.TagNumber.RequestID LEFT OUTER JOIN
                         dbo.AdultJobType ON dbo.Request.CompletionContactJobType = dbo.AdultJobType.AdultJobTypeID LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.Adult AS GAL ON dbo.Request.GALAdultID = GAL.AdultID LEFT OUTER JOIN
                         dbo.Adult AS RCB ON dbo.Request.RequestCompletedbyAdultID = RCB.AdultID LEFT OUTER JOIN
                         dbo.Adult AS CG ON dbo.Request.CareGiverAdultID = CG.AdultID LEFT OUTER JOIN
                         dbo.Adult AS SW ON dbo.Request.SocialWorkerAdultID = SW.AdultID LEFT OUTER JOIN
                         dbo.EventLocation AS EmailFormLocationname ON dbo.Request.EventLocationID = EmailFormLocationname.LocationID
WHERE        (dbo.Request.RequestTypeID IN (6, 7, 8)) AND (dbo.Request.RequestStatusID <= 25) OR
                         (dbo.Request.RequestTypeID IN (6, 7, 8)) AND (dbo.Request.RequestStatusID <= 25)
