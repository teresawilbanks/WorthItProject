
CREATE   VIEW [dbo].[vw_adultRoleAssignment]
AS
SELECT        dbo.Adult.AdultID, dbo.Adult.Alias, dbo.AdultJobAssignment.AdultNameID, dbo.AdultJobAssignment.AdultJobTypeID, dbo.AdultJobAssignment.CGPlacementTypeID, dbo.AdultJobAssignment.GroupHomeID, 
                         dbo.AdultJobAssignment.Active, dbo.AdultJobAssignment.modifyDate, dbo.AdultJobAssignment.Modifiedby, dbo.AdultJobType.JobName, dbo.CareGiverPlacementType.PlacementTypeName, dbo.GroupHome.GroupHomeName, 
                         dbo.Adult.FirstName + N' ' + dbo.Adult.LastName AS fullname
FROM            dbo.Adult INNER JOIN
                         dbo.AdultJobAssignment ON dbo.Adult.AdultID = dbo.AdultJobAssignment.AdultNameID INNER JOIN
                         dbo.AdultJobType ON dbo.AdultJobAssignment.AdultJobTypeID = dbo.AdultJobType.AdultJobTypeID LEFT OUTER JOIN
                         dbo.CareGiverPlacementType ON dbo.AdultJobAssignment.CGPlacementTypeID = dbo.CareGiverPlacementType.CGPlacementTypeID FULL OUTER JOIN
                         dbo.GroupHome ON dbo.AdultJobAssignment.GroupHomeID = dbo.GroupHome.GroupHomeID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[34] 2[3] 3) )"
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
         Begin Table = "Adult"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultJobAssignment"
            Begin Extent = 
               Top = 6
               Left = 291
               Bottom = 256
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultJobType"
            Begin Extent = 
               Top = 6
               Left = 722
               Bottom = 102
               Right = 894
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CareGiverPlacementType"
            Begin Extent = 
               Top = 102
               Left = 1046
               Bottom = 198
               Right = 1248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 209
               Left = 1176
               Bottom = 322
               Right = 1363
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
      Begin ColumnWidths = 11
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
      End
   End
   Begin CriteriaPane = 
     ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_adultRoleAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' Begin ColumnWidths = 11
         Column = 5400
         Alias = 900
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_adultRoleAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_adultRoleAssignment';

