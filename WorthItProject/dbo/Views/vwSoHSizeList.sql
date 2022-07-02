
CREATE   VIEW [dbo].[vwSoHSizeList]
AS
SELECT        dbo.Request.RequestID, ShoeAgeGroup.AgeGroup AS ShoeAgeGroup, ShoeSize.SizeName AS ShoeSize, UGAgeGroup.AgeGroup AS UGageGroup, UGSize.SizeName AS UGsize, dbo.Request.CampaignID
FROM            dbo.ProductSizeGroup AS ShoeAgeGroup RIGHT OUTER JOIN
                         dbo.Request ON ShoeAgeGroup.AgeGroupID = dbo.Request.ChildShoeSizeGroupID LEFT OUTER JOIN
                         dbo.Size AS ShoeSize ON dbo.Request.ChildShoeSockSizeID = ShoeSize.SizeID LEFT OUTER JOIN
                         dbo.ProductSizeGroup AS UGAgeGroup ON dbo.Request.ChildUnderSizeGroupID = UGAgeGroup.AgeGroupID LEFT OUTER JOIN
                         dbo.Size AS UGSize ON dbo.Request.ChildUndergarmentsSizeID = UGSize.SizeID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[36] 2[7] 3) )"
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
         Begin Table = "ShoeAgeGroup"
            Begin Extent = 
               Top = 6
               Left = 453
               Bottom = 136
               Right = 623
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 305
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 24
         End
         Begin Table = "ShoeSize"
            Begin Extent = 
               Top = 7
               Left = 644
               Bottom = 137
               Right = 814
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UGAgeGroup"
            Begin Extent = 
               Top = 111
               Left = 810
               Bottom = 241
               Right = 980
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UGSize"
            Begin Extent = 
               Top = 85
               Left = 1048
               Bottom = 215
               Right = 1218
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
      Begin ColumnWidths = 9
         Width = 284
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
         Column = 1440
         Alias = 900
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwSoHSizeList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'         Table = 1170
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwSoHSizeList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwSoHSizeList';

