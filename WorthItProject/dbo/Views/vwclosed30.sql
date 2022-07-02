
CREATE   VIEW [dbo].[vwclosed30]
AS
SELECT        ContactAdult.FirstName + N' ' + ContactAdult.LastName AS contactname, dbo.BagPickupLocation.LocationName AS PickUpLocation, dbo.RequestStatus.StatusType, dbo.RequestType.RequestName, 
                         dbo.BagPickupLocation.DeliveryMethod, SocialWorker.FirstName + N'' + SocialWorker.LastName AS socialWorker, GAL.FirstName + N'' + GAL.LastName AS GAL, CareGiver.FirstName + N'' + CareGiver.LastName AS CareGiver, 
                         dbo.Request.RequestID, dbo.Request.RequestTypeID, dbo.Request.RequestCompletedbyAdultID, dbo.Request.CompletionContactJobType, dbo.Request.SocialWorkerAdultID, dbo.Request.GALAdultID, 
                         dbo.Request.CareGiverAdultID, dbo.Request.BagFilledDate, dbo.Request.RequestClosedDate, dbo.Request.BagPickupLocation, dbo.Request.RequestStatusID
FROM            dbo.Adult AS CareGiver RIGHT OUTER JOIN
                         dbo.Adult AS SocialWorker RIGHT OUTER JOIN
                         dbo.Request INNER JOIN
                         dbo.BagPickupLocation ON dbo.Request.BagPickupLocation = dbo.BagPickupLocation.PULocationID LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.Adult AS ContactAdult ON dbo.Request.RequestCompletedbyAdultID = ContactAdult.AdultID LEFT OUTER JOIN
                         dbo.RequestStatus ON dbo.Request.RequestStatusID = dbo.RequestStatus.StatusID LEFT OUTER JOIN
                         dbo.Adult AS GAL ON dbo.Request.GALAdultID = GAL.AdultID ON SocialWorker.AdultID = dbo.Request.SocialWorkerAdultID ON CareGiver.AdultID = dbo.Request.CareGiverAdultID
WHERE        (dbo.Request.RequestStatusID = 25)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[7] 2[9] 3) )"
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
         Begin Table = "CareGiver"
            Begin Extent = 
               Top = 33
               Left = 774
               Bottom = 163
               Right = 989
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 21
               Left = 825
               Bottom = 117
               Right = 995
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 0
               Left = 335
               Bottom = 594
               Right = 583
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ContactAdult"
            Begin Extent = 
               Top = 15
               Left = 1183
               Bottom = 136
               Right = 1398
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 147
               Left = 1116
               Bottom = 352
               Right = 1311
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SocialWorker"
            Begin Extent = 
               Top = 4
               Left = 854
               Bottom = 134
               Right = 1069
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GAL"
            Begin Extent = 
               Top = 8
               Left = 1101
               Bottom = 138
               Right = 1316
            End
      ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwclosed30';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'      DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestStatus"
            Begin Extent = 
               Top = 24
               Left = 911
               Bottom = 137
               Right = 1092
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
      Begin ColumnWidths = 36
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2775
         Alias = 3615
         Table = 2580
         Output = 2175
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3075
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwclosed30';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwclosed30';

