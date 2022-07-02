
CREATE   VIEW [dbo].[vwCampDetailEdit]
AS
SELECT        dbo.Campaign.CampaignID, dbo.Campaign.CampaignYear, dbo.CampaignType.CampaignName, dbo.CampaignBOM.CampaignProductValue, dbo.CampaignEvent.CEventStartDate, dbo.CampaignEvent.CEventEndDate, 
                         dbo.CampaignEvent.MaxAttendees, dbo.EventLocation.Place AS Location, dbo.CampaignType.CampaignName + ' ' + CAST(dbo.Campaign.CampaignYear AS varchar(5)) AS eventname, dbo.CampaignEvent.EventLocationID
FROM            dbo.Campaign INNER JOIN
                         dbo.CampaignBOM ON dbo.Campaign.CampaignID = dbo.CampaignBOM.CampaignID INNER JOIN
                         dbo.CampaignEvent ON dbo.Campaign.CampaignID = dbo.CampaignEvent.CampaignID INNER JOIN
                         dbo.CampaignType ON dbo.Campaign.CampaignTypeID = dbo.CampaignType.CampaignTypeID INNER JOIN
                         dbo.EventLocation ON dbo.CampaignEvent.EventLocationID = dbo.EventLocation.LocationID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[38] 2[2] 3) )"
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
         Begin Table = "Campaign"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 284
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampaignBOM"
            Begin Extent = 
               Top = 32
               Left = 430
               Bottom = 310
               Right = 659
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampaignEvent"
            Begin Extent = 
               Top = 4
               Left = 732
               Bottom = 277
               Right = 916
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampaignType"
            Begin Extent = 
               Top = 180
               Left = 239
               Bottom = 299
               Right = 419
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EventLocation"
            Begin Extent = 
               Top = 14
               Left = 1005
               Bottom = 311
               Right = 1175
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3570
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
        ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCampDetailEdit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' Column = 3915
         Alias = 6090
         Table = 4290
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCampDetailEdit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwCampDetailEdit';

