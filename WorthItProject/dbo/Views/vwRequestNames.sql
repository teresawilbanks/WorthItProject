CREATE VIEW dbo.vwRequestNames
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.Request.EmailID, dbo.Request.RequestCompletedbyAdultID, RCB.FirstName + N' ' + RCB.LastName AS RCBName, dbo.Request.SocialWorkerAdultID, 
                         SW.FirstName + N' ' + SW.LastName AS SWName, dbo.Request.GALAdultID, GAL.FirstName + N' ' + GAL.LastName AS GALname, dbo.Request.CareGiverAdultID, CG.FirstName + N' ' + CG.LastName AS CGName, 
                         dbo.Child.FirstName + N' ' + dbo.Child.LastInitial AS ChildName, dbo.Child.FirstName, dbo.Child.LastInitial, RCB.PhoneNumberPrimary AS RCBPhonePrimary, RCB.Email AS RCBemail, 
                         SW.PhoneNumberPrimary AS SWphonePrimary, SW.Email AS SWemail, CG.Email AS CGemail, CG.PhoneNumberPrimary AS CGPhonePrimary, dbo.County.CountyName AS SWCountyName, 
                         dbo.AdultLicensingAgency.AgencyName, CG.LicensingAgencyID, dbo.CareGiverPlacementType.PlacementTypeName, dbo.AdultJobAssignment.CGPlacementTypeID, dbo.AdultJobAssignment.GroupHomeID, 
                         dbo.GroupHome.GroupHomeName, GAL.Email AS GALemail, GAL.PhoneNumberPrimary AS GALPhonePrimary, dbo.Request.RequestStatusID
FROM            dbo.County RIGHT OUTER JOIN
                         dbo.Adult AS SW ON dbo.County.CountyID = SW.CountyID RIGHT OUTER JOIN
                         dbo.Adult AS GAL RIGHT OUTER JOIN
                         dbo.Child RIGHT OUTER JOIN
                         dbo.Request ON dbo.Child.ChildID = dbo.Request.ChildID ON GAL.AdultID = dbo.Request.GALAdultID LEFT OUTER JOIN
                         dbo.Adult AS RCB ON dbo.Request.RequestCompletedbyAdultID = RCB.AdultID ON SW.AdultID = dbo.Request.SocialWorkerAdultID LEFT OUTER JOIN
                         dbo.CareGiverPlacementType RIGHT OUTER JOIN
                         dbo.Adult AS CG LEFT OUTER JOIN
                         dbo.AdultJobAssignment ON CG.AdultID = dbo.AdultJobAssignment.AdultNameID AND dbo.AdultJobAssignment.AdultJobTypeID = 1 LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.AdultJobAssignment.GroupHomeID = dbo.GroupHome.GroupHomeID ON dbo.CareGiverPlacementType.CGPlacementTypeID = dbo.AdultJobAssignment.CGPlacementTypeID ON 
                         dbo.Request.CareGiverAdultID = CG.AdultID LEFT OUTER JOIN
                         dbo.AdultLicensingAgency ON CG.LicensingAgencyID = dbo.AdultLicensingAgency.AgencyID
WHERE        (dbo.Request.RequestStatusID < 25)
ORDER BY dbo.Request.RequestID DESC

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[16] 4[46] 3[22] 2) )"
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
         Begin Table = "County"
            Begin Extent = 
               Top = 0
               Left = 407
               Bottom = 109
               Right = 577
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SW"
            Begin Extent = 
               Top = 5
               Left = 364
               Bottom = 202
               Right = 579
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GAL"
            Begin Extent = 
               Top = 15
               Left = 635
               Bottom = 387
               Right = 850
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 222
               Left = 395
               Bottom = 384
               Right = 592
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 3
               Left = 28
               Bottom = 372
               Right = 276
            End
            DisplayFlags = 280
            TopColumn = 97
         End
         Begin Table = "RCB"
            Begin Extent = 
               Top = 99
               Left = 526
               Bottom = 442
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CareGiverPlacementType"
            Begin Extent = 
               Top = 22
               Left = 1449
               Bottom = 267
               Right = 1651
            End
            DisplayFlags = 280
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestNames';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'            TopColumn = 0
         End
         Begin Table = "CG"
            Begin Extent = 
               Top = 39
               Left = 877
               Bottom = 368
               Right = 1092
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultJobAssignment"
            Begin Extent = 
               Top = 21
               Left = 1173
               Bottom = 224
               Right = 1370
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 288
               Left = 1403
               Bottom = 401
               Right = 1590
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultLicensingAgency"
            Begin Extent = 
               Top = 259
               Left = 1192
               Bottom = 455
               Right = 1362
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
      Begin ColumnWidths = 29
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
         Column = 5070
         Alias = 3720
         Table = 6570
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestNames';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestNames';

