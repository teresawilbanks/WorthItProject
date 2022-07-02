
CREATE   VIEW [dbo].[vwRequestrpt]
AS
SELECT        dbo.Request.*, dbo.tempRequest.RequestGroup, dbo.RequestType.RequestName, dbo.RequestStatus.StatusType, dbo.BagPickupLocation.LocationName, dbo.vw_ChildInfo.FirstName, dbo.vw_ChildInfo.LastInitial, 
                         dbo.vw_ChildInfo.Nickname, dbo.vw_ChildInfo.DOB, dbo.vw_ChildInfo.Gender, dbo.vw_ChildInfo.EthnicityID, dbo.vw_ChildInfo.ChildPlacementID, dbo.vw_ChildInfo.CountyID, dbo.vw_ChildInfo.SiblingsNames, 
                         dbo.vw_ChildInfo.SameHome, dbo.vw_ChildInfo.Comments, dbo.vw_ChildInfo.CountySocialWorker, dbo.vw_ChildInfo.CountyResidence, dbo.vw_ChildInfo.IdentifiesAsGender, dbo.vw_ChildInfo.LastName, 
                         dbo.vw_ChildInfo.GenderID, dbo.vw_ChildInfo.GenderType, dbo.vw_ChildInfo.EthnicityName, dbo.vw_ChildInfo.CountyName, dbo.vw_ChildInfo.State, dbo.vw_ChildInfo.Type, dbo.vw_ChildInfo.childfullname, 
                         dbo.vwRequestNames.RCBName, dbo.vwRequestNames.SWName, dbo.vwRequestNames.GALName, dbo.vwRequestNames.CGName, dbo.vwRequestNames.RCBPhonePrimary, dbo.vwRequestNames.RCBemail, 
                         dbo.vwRequestNames.SWphonePrimary, dbo.vwRequestNames.SWemail, dbo.vwRequestNames.GALemail, dbo.vwRequestNames.GALphonePrimary, dbo.vwRequestNames.CGPhonePrimary, dbo.vwRequestNames.CGemail, 
                         dbo.vwRequestNames.SWCountyName
FROM            dbo.Request INNER JOIN
                         dbo.tempRequest ON dbo.Request.PendingRequestID = dbo.tempRequest.PendingRequestID INNER JOIN
                         dbo.vwRequestNames ON dbo.Request.RequestID = dbo.vwRequestNames.RequestID INNER JOIN
                         dbo.RequestStatus ON dbo.Request.RequestStatusID = dbo.RequestStatus.StatusID INNER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID INNER JOIN
                         dbo.BagPickupLocation ON dbo.Request.BagPickupLocation = dbo.BagPickupLocation.PULocationID INNER JOIN
                         dbo.vw_ChildInfo ON dbo.Request.ChildID = dbo.vw_ChildInfo.ChildID

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
         Begin Table = "Request"
            Begin Extent = 
               Top = 42
               Left = 8
               Bottom = 338
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tempRequest"
            Begin Extent = 
               Top = 400
               Left = 524
               Bottom = 530
               Right = 754
            End
            DisplayFlags = 280
            TopColumn = 138
         End
         Begin Table = "RequestStatus"
            Begin Extent = 
               Top = 24
               Left = 667
               Bottom = 137
               Right = 848
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 73
               Left = 335
               Bottom = 180
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 0
               Left = 1117
               Bottom = 213
               Right = 1312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ChildInfo"
            Begin Extent = 
               Top = 151
               Left = 875
               Bottom = 484
               Right = 1072
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "vwRequestNames"
            Begin Extent = 
               Top = 0
               Left = 1379
               Bottom = 341
               Right = 1622
       ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestrpt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'     End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 170
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestrpt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'
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
         Column = 4050
         Alias = 4125
         Table = 5655
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestrpt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 3, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestrpt';

