
CREATE   VIEW [dbo].[vwRequestReady1]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.Request.RequestTypeID, dbo.Request.RequestStatusID, dbo.Request.BagPickupLocation, dbo.Request.CompletionContactJobType AS CompletionContactTypeID, 
                         dbo.vwCompletionContact.CompletionContactTypeName, dbo.vwCompletionContact.CompletionContactPersonID, dbo.Request.CareGiverAdultID, dbo.Request.GALAdultID, dbo.Request.SocialWorkerAdultID, dbo.Request.ChildID, 
                         dbo.Request.BagFilledDate, dbo.Request.BagEmbroideryNo, dbo.Request.BagEmbroiderColor, dbo.Request.SeasonID, dbo.Request.ChildShirtComment, dbo.Request.ChildPantComment, dbo.Request.ChildPajamaComment, 
                         dbo.Request.ChildShoeSockComment, dbo.Request.ChildUndergarmentComment, dbo.Request.OutfitComment, dbo.Request.ChildDiaperPullUpComment, dbo.Request.TeresaMComments, dbo.Request.SockComment, 
                         dbo.Request.CoatComment, dbo.Request.childJeancomment, dbo.Request.ShoeComment, dbo.Request.ClothingComments, dbo.Request.GeneralComments, dbo.tempRequest.RequestGroup, 
                         dbo.Request.RequestCompletedbyAdultID, dbo.Request.ChildSockSizeID, dbo.Request.RequestDate, dbo.Request.NeedbyDate, dbo.Request.ContactCG, dbo.Request.GroupHomeID, dbo.GroupHome.GroupHomeName, 
                         dbo.GroupHome.PhoneNumber AS GroupHomePhone, dbo.tempRequest.EMailID
FROM            dbo.Request LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.Request.GroupHomeID = dbo.GroupHome.GroupHomeID LEFT OUTER JOIN
                         dbo.vwCompletionContact ON dbo.Request.RequestID = dbo.vwCompletionContact.RequestID FULL OUTER JOIN
                         dbo.tempRequest ON dbo.Request.EmailID = dbo.tempRequest.EMailID
WHERE        (dbo.Request.BagPickupLocation IS NOT NULL) AND (dbo.Request.RequestStatusID < 25)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[64] 4[30] 2[3] 3) )"
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
               Top = 48
               Left = 413
               Bottom = 619
               Right = 661
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 285
               Left = 830
               Bottom = 393
               Right = 1017
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwCompletionContact"
            Begin Extent = 
               Top = 46
               Left = 792
               Bottom = 220
               Right = 1029
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tempRequest"
            Begin Extent = 
               Top = 26
               Left = 51
               Bottom = 324
               Right = 281
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
      Begin ColumnWidths = 40
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
   ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestReady1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'      Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Alias = 4320
         Table = 5475
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestReady1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestReady1';

