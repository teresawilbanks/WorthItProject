
CREATE   VIEW [dbo].[vwRequestSearch]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestStatusID, dbo.Request.RequestTypeID, dbo.Request.RequestID, dbo.Request.NeedbyDate, dbo.Request.ChildID, dbo.Request.CareGiverAdultID, dbo.Request.serviced, 
                         dbo.Request.RequestDate, dbo.County.CountyID, dbo.County.CountyName, dbo.County.State, dbo.Child.FirstName, dbo.Request.BagFilledDate, dbo.Request.RequestClosedDate, dbo.Request.BagPickupLocation, 
                         dbo.Request.BagDeliveredDate, dbo.Request.Delivered, dbo.Request.GeneralComments, dbo.Request.CompletionContactJobType, dbo.AdultJobType.JobName, dbo.Request.SocialWorkerAdultID, dbo.Request.GALAdultID, 
                         RCB.FirstName AS RCBFname, RCB.LastName AS RCBLname, SW.FirstName AS SWFname, SW.LastName AS SWLname, GAL.FirstName AS GALFname, GAL.LastName AS GALLname, CG.FirstName AS CGFname, 
                         CG.LastName AS CGLname, dbo.Child.LastInitial, dbo.Child.Nickname, dbo.Child.DOB, dbo.Child.Gender, dbo.Child.EthnicityID, dbo.Child.ChildPlacementID, dbo.Child.SiblingsNames, SW.Email AS SWEmail, 
                         SW.PhoneNumberPrimary AS SWPhone, SW.AltPhone AS SWPhoneAlt, GAL.Email AS GALEmail, GAL.AltPhone AS GALPhoneAlt, GAL.PhoneNumberPrimary AS GALPhone, CG.AltPhone AS CGPhoneAlt, CG.Email AS CGEmail, 
                         CG.PhoneNumberPrimary AS CGPhone, RCB.Email AS RCBEmail, RCB.AltPhone AS RCBPhoneAlt, RCB.PhoneNumberPrimary AS RCBPhone, dbo.Request.ParticipationID, dbo.Request.EmailID, dbo.RequestType.RequestName, 
                         dbo.Request.tagnumber, dbo.Request.AttendingEvent, dbo.Request.EventLocationID, dbo.Request.CampaignID, SUBSTRING(dbo.Request.tagnumber, PATINDEX('%[0-9]%', dbo.Request.tagnumber), PATINDEX('%[0-9][^0-9]%', 
                         dbo.Request.tagnumber) - PATINDEX('%[0-9]%', dbo.Request.tagnumber) + 1) AS TagVal, dbo.Request.Exception, dbo.Request.SponsorID, dbo.Request.ParticipationComment, dbo.Request.WishList, 
                         dbo.Request.ClothingRequested, dbo.Request.AppointmentDate, dbo.Request.AppointmentTime, dbo.Request.AppointmentModifiedDate, dbo.EventLocation.Section, dbo.EventLocation.FormTitle, dbo.EventLocation.ProgramTitle, 
                         dbo.Request.GroupHomeID, dbo.BagPickupLocation.LocationName, dbo.BagPickupLocation.DeliveryMethod
FROM            dbo.Request INNER JOIN
                         dbo.Child ON dbo.Request.ChildID = dbo.Child.ChildID INNER JOIN
                         dbo.Adult AS RCB ON dbo.Request.RequestCompletedbyAdultID = RCB.AdultID INNER JOIN
                         dbo.Adult AS SW ON dbo.Request.SocialWorkerAdultID = SW.AdultID INNER JOIN
                         dbo.Adult AS CG ON dbo.Request.CareGiverAdultID = CG.AdultID LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.County ON dbo.Child.CountyID = dbo.County.CountyID LEFT OUTER JOIN
                         dbo.BagPickupLocation ON dbo.Request.BagPickupLocation = dbo.BagPickupLocation.PULocationID LEFT OUTER JOIN
                         dbo.AdultJobType ON dbo.Request.CompletionContactJobType = dbo.AdultJobType.AdultJobTypeID LEFT OUTER JOIN
                         dbo.Adult AS GAL ON dbo.Request.GALAdultID = GAL.AdultID LEFT OUTER JOIN
                         dbo.EventLocation ON dbo.Request.EventLocationID = dbo.EventLocation.LocationID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[9] 4[31] 2[13] 3) )"
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
               Top = 16
               Left = 34
               Bottom = 528
               Right = 282
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 179
               Left = 782
               Bottom = 309
               Right = 979
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "County"
            Begin Extent = 
               Top = 237
               Left = 1185
               Bottom = 350
               Right = 1355
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultJobType"
            Begin Extent = 
               Top = 0
               Left = 616
               Bottom = 106
               Right = 789
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RCB"
            Begin Extent = 
               Top = 23
               Left = 1002
               Bottom = 153
               Right = 1216
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "SW"
            Begin Extent = 
               Top = 118
               Left = 1084
               Bottom = 248
               Right = 1298
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "CG"
            Begin Extent = 
               Top = 40
               Left = 1483
               Bottom = 170
               Right = 1697
            End
            DisplayFlags = 280
 ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'           TopColumn = 13
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 0
               Left = 357
               Bottom = 96
               Right = 527
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 257
               Left = 485
               Bottom = 387
               Right = 680
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "GAL"
            Begin Extent = 
               Top = 150
               Left = 1259
               Bottom = 280
               Right = 1473
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "EventLocation"
            Begin Extent = 
               Top = 363
               Left = 972
               Bottom = 650
               Right = 1142
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
      Begin ColumnWidths = 72
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5640
         Alias = 5565
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwRequestSearch';

