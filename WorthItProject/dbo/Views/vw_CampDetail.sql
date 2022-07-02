
CREATE   VIEW [dbo].[vw_CampDetail]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.Request.ChildID, dbo.CabinDetail.CabinID, dbo.CabinDetail.Active, dbo.CampCabin.CabinName, dbo.Campaign.CampaignStatusID, dbo.Campaign.CampaignTypeID, 
                         dbo.Campaign.CampaignID, dbo.CampCabin.AgeGroupID, dbo.CampCabin.genderID, dbo.CampCabin.MaxOcc, dbo.CampCabin.CampgroundRefID, dbo.Gender.GenderType AS CabinGender, 
                         dbo.CampAgeGroup.AgeGroupDescription AS CabinAgeGroup, dbo.CampaignType.CampaignName, dbo.CampaignEvent.EventLocationID, dbo.EventLocation.Place AS EventLocationname
FROM            dbo.CampCabin INNER JOIN
                         dbo.CabinDetail ON dbo.CampCabin.CabinID = dbo.CabinDetail.CabinID INNER JOIN
                         dbo.Gender ON dbo.CampCabin.genderID = dbo.Gender.GenderID INNER JOIN
                         dbo.CampAgeGroup ON dbo.CampCabin.AgeGroupID = dbo.CampAgeGroup.CampAgeGroupID RIGHT OUTER JOIN
                         dbo.EventLocation RIGHT OUTER JOIN
                         dbo.CampaignEvent ON dbo.EventLocation.LocationID = dbo.CampaignEvent.EventLocationID RIGHT OUTER JOIN
                         dbo.CampaignType RIGHT OUTER JOIN
                         dbo.Campaign ON dbo.CampaignType.CampaignTypeID = dbo.Campaign.CampaignTypeID ON dbo.CampaignEvent.CampaignID = dbo.Campaign.CampaignID LEFT OUTER JOIN
                         dbo.Request ON dbo.Campaign.CampaignID = dbo.Request.CampaignID ON dbo.CabinDetail.CampaignID = dbo.Request.CampaignID AND dbo.CabinDetail.ChildID = dbo.Request.ChildID
WHERE        (dbo.Campaign.CampaignStatusID = 5) AND (dbo.Campaign.CampaignTypeID = 8) AND (dbo.CabinDetail.Active = 1) AND (dbo.CabinDetail.CampaignID = dbo.Request.CampaignID) AND 
                         (dbo.CabinDetail.ChildID = dbo.Request.ChildID) AND (dbo.Request.RequestStatusID < 25) OR
                         (dbo.Campaign.CampaignStatusID = 5) AND (dbo.Campaign.CampaignTypeID = 8) AND (dbo.CabinDetail.Active IS NULL) AND (dbo.Request.RequestStatusID < 25)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[61] 4[19] 2[3] 3) )"
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
         Begin Table = "CampCabin"
            Begin Extent = 
               Top = 18
               Left = 1011
               Bottom = 258
               Right = 1199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CabinDetail"
            Begin Extent = 
               Top = 54
               Left = 711
               Bottom = 276
               Right = 942
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gender"
            Begin Extent = 
               Top = 187
               Left = 1315
               Bottom = 351
               Right = 1485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampAgeGroup"
            Begin Extent = 
               Top = 33
               Left = 1293
               Bottom = 146
               Right = 1496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 23
               Left = 359
               Bottom = 484
               Right = 607
            End
            DisplayFlags = 280
            TopColumn = 52
         End
         Begin Table = "Campaign"
            Begin Extent = 
               Top = 69
               Left = 30
               Bottom = 300
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampaignType"
            Begin Extent = 
               Top = 258
               Left = 980
               Bottom = 354
               Right = 1160
            End
       ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_CampDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'     DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CampaignEvent"
            Begin Extent = 
               Top = 330
               Left = 743
               Bottom = 460
               Right = 927
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EventLocation"
            Begin Extent = 
               Top = 372
               Left = 1013
               Bottom = 502
               Right = 1183
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
      Begin ColumnWidths = 15
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_CampDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_CampDetail';

