
CREATE   VIEW [dbo].[vw_PendingProduction]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, PendingStatus.StatusType AS PendingStatusType, RequestStatus.StatusType AS RequestStatus, COALESCE (RequestStatus.StatusType, PendingStatus.StatusType) AS StatusName, 
                         COALESCE (dbo.RequestType.RequestName, dbo.tempRequest.RequestType) AS RequestName, COALESCE (dbo.vwRequestNames.RCBName, dbo.tempRequest.RequestCompletedby) AS RequestCompletedByName, 
                         COALESCE (dbo.vwRequestNames.SWName, dbo.tempRequest.SocialWorker) AS SocialWorkerName, COALESCE (dbo.vwRequestNames.FirstName + N' ' + dbo.vwRequestNames.LastInitial, 
                         dbo.tempRequest.ChildFirstName + N' ' + dbo.tempRequest.ChildLastInitial) AS ChildName, COALESCE (dbo.vwRequestNames.GALName, dbo.tempRequest.GAL) AS GALName, COALESCE (dbo.vwRequestNames.CGName, 
                         dbo.tempRequest.CareGiver) AS CGName, COALESCE (dbo.vwRequestNames.SWCountyName, dbo.tempRequest.SWCounty) AS SWCountyName, COALESCE (CAST(dbo.vw_ChildInfo.childDOB AS varchar(25)), 
                         CAST(dbo.tempRequest.ChildDOB AS varchar(25))) AS dob, COALESCE (ProductionCCType.JobName, dbo.tempRequest.ContactWhenComplete) AS CCtype, COALESCE (dbo.BagPickupLocation.LocationName, 
                         dbo.tempRequest.FormPickUpLocation) AS PickUpLocation, COALESCE (dbo.vw_ChildInfo.CountyID, dbo.tempRequest.SWCountyID) AS ChildCounty, COALESCE (dbo.Request.ChildID, dbo.tempRequest.ChildID) AS Child, 
                         dbo.tempRequest.RequestType, dbo.tempRequest.RequestTypeID, dbo.tempRequest.RequestDate, dbo.tempRequest.NeedbyDate, dbo.tempRequest.RequestCompletedby, dbo.tempRequest.RCBID, 
                         dbo.tempRequest.RCBFName, dbo.tempRequest.RCBLName, dbo.tempRequest.RCBEmail, dbo.tempRequest.RCBRelation, dbo.tempRequest.RCBPhoneNumber, dbo.tempRequest.ContactWhenComplete, 
                         dbo.tempRequest.CompletionContactTypeID, dbo.tempRequest.SocialWorker, dbo.tempRequest.SWFName, dbo.tempRequest.SWLName, dbo.tempRequest.SWID, dbo.tempRequest.SWCounty, dbo.tempRequest.SWCountyID, 
                         dbo.tempRequest.SWPhoneNumber, dbo.tempRequest.GAL, dbo.tempRequest.GALFName, dbo.tempRequest.GALLName, dbo.tempRequest.GALID, dbo.tempRequest.GALPhoneNumber, dbo.tempRequest.CareGiver, 
                         dbo.tempRequest.CGID, dbo.tempRequest.CGFName, dbo.tempRequest.CGLName, dbo.tempRequest.CGRelation, dbo.tempRequest.CGPlacementTypeID, dbo.tempRequest.CGPhoneNumber, dbo.tempRequest.txtRecText, 
                         dbo.tempRequest.RecText, dbo.tempRequest.CGEmail, dbo.tempRequest.CGCountyID, dbo.tempRequest.CGCounty, dbo.tempRequest.ContactCareGiver, dbo.tempRequest.ContactCG, dbo.tempRequest.CGLicensingAgency, 
                         dbo.tempRequest.CGLicensingAgencyID, dbo.tempRequest.GroupHomeID, dbo.tempRequest.ChildID, dbo.tempRequest.ChildFirstName, dbo.tempRequest.ChildLastInitial, dbo.tempRequest.ChildDOB, 
                         dbo.tempRequest.ChildGender, dbo.tempRequest.GenderID, dbo.tempRequest.ChildEthnicity, dbo.tempRequest.RaceID, dbo.tempRequest.PlacementType, dbo.tempRequest.ChildPlacementTypeID, dbo.tempRequest.ChildAge, 
                         dbo.tempRequest.SiblingsNames, dbo.tempRequest.SameHome, dbo.tempRequest.ChildShirtSize, dbo.tempRequest.ChildPantSize, dbo.tempRequest.ChildShoeSockSize, dbo.tempRequest.ChildUGSize, 
                         dbo.tempRequest.ChildDiapers, dbo.tempRequest.AddtlInfo, dbo.tempRequest.Comments, dbo.tempRequest.ChildID2, dbo.tempRequest.Child2FirstName, dbo.tempRequest.Child2LastInitial, 
                         dbo.tempRequest.Child2PlacementID, dbo.tempRequest.Child2PlacementType, dbo.tempRequest.Child2Age, dbo.tempRequest.Child2DOB, dbo.tempRequest.Child2GenderID, dbo.tempRequest.Child2Gender, 
                         dbo.tempRequest.Child2EthnicityID, dbo.tempRequest.Child2Ethnicity, dbo.tempRequest.Child2SiblingsNames, dbo.tempRequest.Child2SameHome, dbo.tempRequest.Processed, dbo.tempRequest.Status, 
                         dbo.tempRequest.ProcessedDate, dbo.tempRequest.BedType1, dbo.tempRequest.BedType2, dbo.tempRequest.Nickname, dbo.tempRequest.SchoolGrade, dbo.tempRequest.ResidingAddress, dbo.tempRequest.MailingAddress, 
                         dbo.tempRequest.SWEmail, dbo.tempRequest.EventLocation, dbo.tempRequest.EventLocationID, dbo.tempRequest.EmailDateTime, dbo.tempRequest.EmailSubject, dbo.tempRequest.LOTFormNumber, 
                         dbo.tempRequest.BagEmbroiderCompany, dbo.tempRequest.BagNumber, dbo.tempRequest.FormPickUpLocation, dbo.tempRequest.BagPickUpLocation, dbo.tempRequest.EmbroideryColor, dbo.tempRequest.SeasonID, 
                         dbo.tempRequest.BoHAgeGroupID, dbo.tempRequest.ShirtSizeAgeGroupID, dbo.tempRequest.ShirtSizeID, dbo.tempRequest.PantAgeGroupID, dbo.tempRequest.PantSizeID, dbo.tempRequest.JeanAgeGroupID, 
                         dbo.tempRequest.JeanSizeID, dbo.tempRequest.JeanComment, dbo.tempRequest.OutfitSizeGroupID, dbo.tempRequest.OutfitSizeID, dbo.tempRequest.OutfitComment, dbo.tempRequest.PajamaAgeGroupID, 
                         dbo.tempRequest.PajamaSizeID, dbo.tempRequest.PajamaComment, dbo.tempRequest.UnderwearAgeGroupID, dbo.tempRequest.UnderwearSizeID, dbo.tempRequest.SockAgeGroupID, dbo.tempRequest.SockSizeID, 
                         dbo.tempRequest.SockComment, dbo.tempRequest.ShoeAgeGroupID, dbo.tempRequest.ShoeSizeID, dbo.tempRequest.DiaperAgeGroupID, dbo.tempRequest.DiaperSizeID, dbo.tempRequest.CoatAgeGroupID, 
                         dbo.tempRequest.CoatSizeID, dbo.tempRequest.CoatComment, dbo.tempRequest.GeneralClothingComment, dbo.tempRequest.TeresaSpecComment, dbo.tempRequest.ReferenceName, dbo.tempRequest.ReferenceTitle, 
                         dbo.tempRequest.ReferencePhoneNumber, dbo.tempRequest.CountyCurrentResidence, dbo.tempRequest.CountyResidenceID, dbo.tempRequest.OtherAssistance, dbo.tempRequest.Assistanceby, 
                         dbo.tempRequest.HaveCurrentSW, dbo.tempRequest.WishList, dbo.tempRequest.ClothingRequested, dbo.tempRequest.AttendedBefore, dbo.tempRequest.CampaignID, dbo.tempRequest.times_stamp, 
                         dbo.tempRequest.childlastname, dbo.tempRequest.RequestGroup, dbo.vw_ChildInfo.childfullname, dbo.tempRequest.EmailTypeID, dbo.tempRequest.EMailID, dbo.tempRequest.PendingRequestID
FROM            dbo.AdultJobType AS ProductionCCType INNER JOIN
                         dbo.RequestType INNER JOIN
                         dbo.Request INNER JOIN
                         dbo.RequestStatus AS RequestStatus ON dbo.Request.RequestStatusID = RequestStatus.StatusID ON dbo.RequestType.RequestTypeID = dbo.Request.RequestTypeID INNER JOIN
                         dbo.vwRequestNames ON dbo.Request.RequestID = dbo.vwRequestNames.RequestID ON ProductionCCType.AdultJobTypeID = dbo.Request.CompletionContactJobType INNER JOIN
                         dbo.BagPickupLocation ON dbo.Request.BagPickupLocation = dbo.BagPickupLocation.PULocationID LEFT OUTER JOIN
                         dbo.vw_ChildInfo ON dbo.Request.ChildID = dbo.vw_ChildInfo.ChildID RIGHT OUTER JOIN
                         dbo.RequestStatus AS PendingStatus RIGHT OUTER JOIN
                         dbo.tempRequest ON PendingStatus.StatusID = dbo.tempRequest.Status ON dbo.Request.EmailID = dbo.tempRequest.EMailID
WHERE        (dbo.tempRequest.Status = 3) AND (dbo.Request.RequestStatusID IS NULL) OR
                         (dbo.tempRequest.Status = 10) AND (dbo.Request.RequestStatusID <= 20)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[34] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ProductionCCType"
            Begin Extent = 
               Top = 88
               Left = 944
               Bottom = 201
               Right = 1116
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 45
               Left = 1363
               Bottom = 141
               Right = 1533
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 30
               Left = 608
               Bottom = 335
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "RequestStatus"
            Begin Extent = 
               Top = 288
               Left = 1138
               Bottom = 401
               Right = 1319
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwRequestNames"
            Begin Extent = 
               Top = 2
               Left = 1615
               Bottom = 276
               Right = 1858
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 6
               Left = 306
               Bottom = 136
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ChildInfo"
            Begin Extent = 
               Top = 37
               Left = 1169
               Bottom = 437
               Right = 1366
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_PendingProduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PendingStatus"
            Begin Extent = 
               Top = 216
               Left = 370
               Bottom = 329
               Right = 551
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tempRequest"
            Begin Extent = 
               Top = 1
               Left = 12
               Bottom = 663
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 156
         Width = 284
         Width = 1335
         Width = 1410
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1665
         Width = 1755
         Width = 3015
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2745
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3450
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3180
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Wi', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_PendingProduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'dth = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 12360
         Alias = 2385
         Table = 2610
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_PendingProduction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 3, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_PendingProduction';

