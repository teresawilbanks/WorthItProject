CREATE VIEW dbo.vwApricotAllRequests
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.RequestType.RequestName, dbo.Request.RequestDate, dbo.Request.RequestCompletedbyAdultID, dbo.Request.CareGiverAdultID, dbo.Request.SocialWorkerAdultID, 
                         dbo.Request.ChildID, dbo.vw_ChildInfo.FirstName AS ChildFirstName, dbo.vw_ChildInfo.LastInitial AS ChildLastI, dbo.vw_ChildInfo.Nickname, dbo.vw_ChildInfo.DOB, dbo.vw_ChildInfo.Gender, dbo.Race.EthnicityName, 
                         dbo.vw_ChildInfo.SiblingsNames, dbo.vw_ChildInfo.SameHome, dbo.Request.RequestClosedDate, dbo.Request.ValueNonInventoryItems, dbo.Request.CampaignID, dbo.Request.ParticipationID, dbo.Request.RequestStatusID, 
                         dbo.RequestStatus.StatusType, dbo.Participation.ParticipationType, RCB.FirstName AS RCBFirst, RCB.LastName AS RCBLast, RCB.Email AS RCBEmail, RCB.PhoneNumberPrimary AS RCBPhone, 
                         RCB.PrimaryTextable AS RCBText, SW.FirstName AS SWfirst, SW.LastName AS SWlast, SW.Email AS SWemail, SW.PhoneNumberPrimary AS Swphone, SW.PrimaryTextable AS SWtext, SW.CountyID AS SWcountyID, 
                         SWCounty.CountyName AS SWCounty, CG.FirstName AS CGFirst, CG.LastName AS CgLast, CG.AddressLine1 AS CGAdd1, CG.City AS CGCity, CG.StateID, CG.Zip AS CGzip, CG.CountyID AS cgCountyID, CG.Email AS cgemail, 
                         CG.PhoneNumberPrimary AS cgPhone, CG.PrimaryTextable AS cgText, CGCounty.CountyName AS CgCounty, CG.LicensingAgencyID, dbo.AdultLicensingAgency.AgencyName, dbo.vw_ChildInfo.EthnicityID, 
                         dbo.Request.GeneralComments, dbo.vwApricotNonInventoryConcatination.productnoninventory, dbo.vwApricotGRANDtotal.GRANDTOTAL, dbo.Request.CompletionContactJobType, dbo.AdultJobType.JobName, CG.AdultID, 
                         dbo.ChildPlacementType.Type AS PlacementType, dbo.Request.RequestTypeID, dbo.GroupHome.GroupHomeName, dbo.GroupHome.PhoneNumber AS GroupHomeNumber, 
                         dbo.BagPickupLocation.LocationName AS pickupLocation, dbo.Request.BagFilledDate, dbo.Request.BagDeliveredDate, dbo.Request.BagofHopeAgeGroupID, dbo.BagofHopeAgeGroup.AgeGroupDescription
FROM            dbo.RequestStatus RIGHT OUTER JOIN
                         dbo.Adult AS RCB RIGHT OUTER JOIN
                         dbo.vwApricotNonInventoryConcatination RIGHT OUTER JOIN
                         dbo.BagofHopeAgeGroup RIGHT OUTER JOIN
                         dbo.Request ON dbo.BagofHopeAgeGroup.BoHAgeGroupID = dbo.Request.BagofHopeAgeGroupID LEFT OUTER JOIN
                         dbo.BagPickupLocation ON dbo.Request.BagPickupLocation = dbo.BagPickupLocation.PULocationID LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.Request.GroupHomeID = dbo.GroupHome.GroupHomeID LEFT OUTER JOIN
                         dbo.Adult AS CG ON dbo.Request.CareGiverAdultID = CG.AdultID LEFT OUTER JOIN
                         dbo.AdultJobType ON dbo.Request.CompletionContactJobType = dbo.AdultJobType.AdultJobTypeID LEFT OUTER JOIN
                         dbo.vwApricotGRANDtotal ON dbo.Request.RequestID = dbo.vwApricotGRANDtotal.RequestID ON dbo.vwApricotNonInventoryConcatination.requestid = dbo.Request.RequestID ON 
                         RCB.AdultID = dbo.Request.RequestCompletedbyAdultID LEFT OUTER JOIN
                         dbo.Adult AS SW ON dbo.Request.SocialWorkerAdultID = SW.AdultID ON dbo.RequestStatus.StatusID = dbo.Request.RequestStatusID LEFT OUTER JOIN
                         dbo.Race INNER JOIN
                         dbo.vw_ChildInfo ON dbo.Race.EthnicityID = dbo.vw_ChildInfo.EthnicityID INNER JOIN
                         dbo.ChildPlacementType ON dbo.vw_ChildInfo.ChildPlacementID = dbo.ChildPlacementType.ChildPlacementID ON dbo.Request.ChildID = dbo.vw_ChildInfo.ChildID LEFT OUTER JOIN
                         dbo.County AS SWCounty ON SW.CountyID = SWCounty.CountyID LEFT OUTER JOIN
                         dbo.Participation ON dbo.Request.ParticipationID = dbo.Participation.ParticipationID LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.County AS CGCounty ON CG.CountyID = CGCounty.CountyID LEFT OUTER JOIN
                         dbo.AdultLicensingAgency ON CG.LicensingAgencyID = dbo.AdultLicensingAgency.AgencyID
WHERE        (dbo.Request.RequestStatusID <= 25)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[68] 4[20] 2[3] 3) )"
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
         Begin Table = "Race"
            Begin Extent = 
               Top = 72
               Left = 1683
               Bottom = 168
               Right = 1853
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ChildInfo"
            Begin Extent = 
               Top = 54
               Left = 1369
               Bottom = 377
               Right = 1566
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChildPlacementType"
            Begin Extent = 
               Top = 234
               Left = 1683
               Bottom = 330
               Right = 1867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SW"
            Begin Extent = 
               Top = 5
               Left = 1115
               Bottom = 247
               Right = 1330
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RCB"
            Begin Extent = 
               Top = 8
               Left = 558
               Bottom = 253
               Right = 773
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 566
               Left = 661
               Bottom = 696
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 637
               Right = 286
            End
           ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwApricotAllRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' DisplayFlags = 280
            TopColumn = 51
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 239
               Left = 865
               Bottom = 352
               Right = 1052
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CG"
            Begin Extent = 
               Top = 266
               Left = 350
               Bottom = 487
               Right = 565
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "AdultJobType"
            Begin Extent = 
               Top = 95
               Left = 345
               Bottom = 191
               Right = 517
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwApricotGRANDtotal"
            Begin Extent = 
               Top = 9
               Left = 800
               Bottom = 105
               Right = 970
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwApricotNonInventoryConcatination"
            Begin Extent = 
               Top = 49
               Left = 429
               Bottom = 180
               Right = 631
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestStatus"
            Begin Extent = 
               Top = 437
               Left = 334
               Bottom = 567
               Right = 515
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SWCounty"
            Begin Extent = 
               Top = 48
               Left = 985
               Bottom = 161
               Right = 1155
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Participation"
            Begin Extent = 
               Top = 488
               Left = 400
               Bottom = 584
               Right = 581
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 12
               Left = 352
               Bottom = 108
               Right = 522
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CGCounty"
            Begin Extent = 
               Top = 363
               Left = 675
               Bottom = 476
               Right = 845
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultLicensingAgency"
            Begin Extent = 
               Top = 425
               Left = 896
               Bottom = 521
               Right = 1066
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BagofHopeAgeGroup"
            Begin Extent = 
               Top = 177
               Left = 410
               Bottom = 273
               Right = 613
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
      Begin ColumnWidths = 59
         Width = 284
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
     ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwApricotAllRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'    Width = 1500
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
         Width = 4350
         Width = 5430
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
         Column = 3900
         Alias = 2535
         Table = 1170
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwApricotAllRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 3, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwApricotAllRequests';

