CREATE VIEW dbo.vw_ChristmasNoShowCancel
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.Request.RequestDate, dbo.Request.CampaignID, dbo.Request.ChildID, dbo.Request.CareGiverAdultID, dbo.Request.RequestStatusID, dbo.Request.ParticipationID, 
                         dbo.Request.ParticipationComment, dbo.Request.GeneralComments, dbo.CampaignType.CampaignName, dbo.Campaign.CampaignYear, dbo.Adult.Alias, dbo.Child.FirstName, dbo.Child.LastInitial, dbo.Child.Nickname, 
                         dbo.Child.FirstName + N' ' + dbo.Child.LastInitial AS [Child's Name'], dbo.Participation.ParticipationType
FROM            dbo.Request INNER JOIN
                         dbo.Campaign ON dbo.Request.CampaignID = dbo.Campaign.CampaignID INNER JOIN
                         dbo.CampaignType ON dbo.Campaign.CampaignTypeID = dbo.CampaignType.CampaignTypeID INNER JOIN
                         dbo.Child ON dbo.Request.ChildID = dbo.Child.ChildID INNER JOIN
                         dbo.Participation ON dbo.Request.ParticipationID = dbo.Participation.ParticipationID LEFT OUTER JOIN
                         dbo.Adult ON dbo.Request.CareGiverAdultID = dbo.Adult.AdultID
WHERE        (dbo.Request.RequestTypeID = 7) AND (dbo.Request.CampaignID > 0) AND (dbo.Request.ParticipationID = 3)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[26] 2[9] 3) )"
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
               Top = 6
               Left = 38
               Bottom = 302
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Campaign"
            Begin Extent = 
               Top = 6
               Left = 324
               Bottom = 240
               Right = 520
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampaignType"
            Begin Extent = 
               Top = 6
               Left = 558
               Bottom = 245
               Right = 738
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Adult"
            Begin Extent = 
               Top = 162
               Left = 896
               Bottom = 292
               Right = 1111
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 6
               Left = 1029
               Bottom = 136
               Right = 1226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Participation"
            Begin Extent = 
               Top = 6
               Left = 776
               Bottom = 102
               Right = 957
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_ChristmasNoShowCancel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 6810
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
         Column = 10935
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_ChristmasNoShowCancel';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_ChristmasNoShowCancel';

