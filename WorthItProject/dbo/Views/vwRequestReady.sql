CREATE VIEW dbo.vwRequestReady
AS
SELECT        TOP (100) PERCENT dbo.vwRequestReady1.RequestID, dbo.vwRequestReady1.RequestTypeID, dbo.vwRequestReady1.RequestStatusID, dbo.vwRequestReady1.BagPickupLocation, 
                         dbo.BagPickupLocation.LocationName AS PickUpLocation, dbo.RequestStatus.StatusType, dbo.RequestType.RequestName, dbo.vw_deliverydetail.DriverName, dbo.vw_deliverydetail.Location AS currentlocation, 
                         dbo.vw_deliverydetail.DateTimeValue AS deliverydate, dbo.vw_deliverydetail.DeliveryLogID, dbo.BagPickupLocation.DeliveryMethod, dbo.vw_deliverydetail.Pickup, dbo.vw_deliverydetail.Dropoff, 
                         dbo.vwRequestNames.SWName AS SocialWorker, dbo.vwRequestNames.CGName AS CareGiver, dbo.vw_TopTrackingComment.createdate, dbo.vw_TopTrackingComment.Comment AS trackingComment, 
                         dbo.vwRequestReady1.CareGiverAdultID, dbo.vwRequestReady1.SocialWorkerAdultID, dbo.vwRequestReady1.ChildID, dbo.vwRequestNames.ChildName, dbo.vw_deliverydetail.[Client/Transporter], dbo.vw_textDetail1.TextID, 
                         dbo.vw_textDetail1.PhoneNumber, dbo.vw_textDetail1.TextMsg, dbo.vw_textDetail1.StatusCallBack, dbo.vw_textDetail1.SentBool, dbo.vw_textDetail1.flag, dbo.vw_textDetail1.textsentdate, 
                         dbo.vwRequestReady1.BagFilledDate, dbo.vwRequestReady1.RequestGroup, dbo.vwRequestReady1.BagEmbroideryNo, dbo.vwRequestReady1.BagEmbroiderColor, dbo.vwRequestReady1.SeasonID, 
                         dbo.vwRequestReady1.ChildShirtComment, dbo.vwRequestReady1.ChildPantComment, dbo.vwRequestReady1.ChildPajamaComment, dbo.vwRequestReady1.ChildShoeSockComment, 
                         dbo.vwRequestReady1.ChildUndergarmentComment, dbo.vwRequestReady1.OutfitComment, dbo.vwRequestReady1.ChildDiaperPullUpComment, dbo.vwRequestReady1.TeresaMComments, 
                         dbo.vwRequestReady1.SockComment, dbo.vwRequestReady1.CoatComment, dbo.vwRequestReady1.childJeancomment, dbo.vwRequestReady1.ShoeComment, dbo.vwRequestReady1.ClothingComments, 
                         dbo.vwRequestReady1.GeneralComments, dbo.vw_ChildInfo.SiblingsNames, dbo.vw_ChildInfo.GenderType, dbo.vw_ChildInfo.EthnicityName, dbo.vw_ChildInfo.CountyName AS ChildCounty, 
                         dbo.vw_ChildInfo.Type AS PlacementType, dbo.vw_ChildInfo.Nickname AS ChildNickname, dbo.vwRequestReady1.RequestCompletedbyAdultID, dbo.vwRequestNames.RCBName, dbo.vwRequestNames.RCBPhonePrimary, 
                         dbo.vwRequestNames.RCBemail, dbo.vwRequestNames.SWphonePrimary, dbo.vwRequestNames.SWemail, dbo.vwRequestNames.GALemail, dbo.vwRequestNames.GALPhonePrimary, dbo.vwRequestNames.CGemail, 
                         dbo.vwRequestNames.CGPhonePrimary, dbo.vwRequestNames.SWCountyName, dbo.vwRequestReady1.CompletionContactTypeID, dbo.vwRequestReady1.CompletionContactTypeName, 
                         dbo.vwRequestReady1.CompletionContactPersonID, CompletionContact.FirstName + N' ' + CompletionContact.LastName AS CompletionContactPersonName, 
                         CompletionContact.PhoneNumberPrimary AS CompletionContactPhone, dbo.vwRequestReady1.ChildSockSizeID, dbo.vwRequestReady1.RequestDate, dbo.vwRequestReady1.NeedbyDate, dbo.vwRequestReady1.ContactCG, 
                         dbo.vwRequestReady1.GroupHomeID, dbo.vwRequestReady1.GroupHomeName, dbo.vwRequestReady1.GroupHomePhone, dbo.vw_ChildInfo.childfullname, dbo.vw_ChildInfo.childDOB, 
                         dbo.vw_ChildInfo.CountyID AS childcountyid
FROM            dbo.vwRequestReady1 INNER JOIN
                         dbo.RequestStatus ON dbo.vwRequestReady1.RequestStatusID = dbo.RequestStatus.StatusID INNER JOIN
                         dbo.RequestType ON dbo.vwRequestReady1.RequestTypeID = dbo.RequestType.RequestTypeID INNER JOIN
                         dbo.vwRequestNames ON dbo.vwRequestReady1.RequestID = dbo.vwRequestNames.RequestID LEFT OUTER JOIN
                         dbo.BagPickupLocation ON dbo.vwRequestReady1.BagPickupLocation = dbo.BagPickupLocation.PULocationID LEFT OUTER JOIN
                         dbo.Adult AS CompletionContact ON dbo.vwRequestReady1.CompletionContactPersonID = CompletionContact.AdultID LEFT OUTER JOIN
                         dbo.vw_ChildInfo ON dbo.vwRequestReady1.ChildID = dbo.vw_ChildInfo.ChildID LEFT OUTER JOIN
                         dbo.vw_textDetail1 ON dbo.vwRequestReady1.RequestID = dbo.vw_textDetail1.RequestID LEFT OUTER JOIN
                         dbo.vw_TopTrackingComment ON dbo.vwRequestReady1.RequestID = dbo.vw_TopTrackingComment.RequestID LEFT OUTER JOIN
                         dbo.vw_deliverydetail ON dbo.vwRequestReady1.RequestID = dbo.vw_deliverydetail.RequestID
WHERE        (dbo.vwRequestReady1.RequestStatusID >= 10)
ORDER BY dbo.vwRequestReady1.RequestID DESC

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[69] 4[11] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[31] 4[16] 3) )"
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
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwRequestReady1"
            Begin Extent = 
               Top = 12
               Left = 18
               Bottom = 646
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestStatus"
            Begin Extent = 
               Top = 269
               Left = 965
               Bottom = 382
               Right = 1146
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 18
               Left = 988
               Bottom = 209
               Right = 1158
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 67
               Left = 93
               Bottom = 259
               Right = 288
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CompletionContact"
            Begin Extent = 
               Top = 261
               Left = 391
               Bottom = 453
               Right = 606
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_ChildInfo"
            Begin Extent = 
               Top = 96
               Left = 1269
               Bottom = 540
               Right = 1800
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "vw_textDetail1"
            Begin Extent = 
               Top = 118
               Left = 319
               Bottom = 440
               Right =', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestReady';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N' 489
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_TopTrackingComment"
            Begin Extent = 
               Top = 304
               Left = 802
               Bottom = 514
               Right = 972
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_deliverydetail"
            Begin Extent = 
               Top = 392
               Left = 840
               Bottom = 618
               Right = 1010
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwRequestNames"
            Begin Extent = 
               Top = 35
               Left = 578
               Bottom = 377
               Right = 821
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 82
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1575
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
         Width = 1620
         Width = 1500
         Width = 1185
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 7110
         Alias = 3285
         Table = 6300
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1485
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestReady';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestReady';

