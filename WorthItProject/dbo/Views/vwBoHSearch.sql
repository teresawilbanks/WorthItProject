
CREATE   VIEW [dbo].[vwBoHSearch]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.Request.BagPickupLocation AS BagDeliveryPoint, dbo.RequestType.RequestName, dbo.Request.RequestTypeID, dbo.Request.RequestDate, dbo.Request.NeedbyDate, 
                         dbo.Request.ChildID, dbo.Child.CountyID, dbo.Request.RequestStatusID, dbo.Child.Nickname, dbo.Request.CompletionContactJobType, dbo.Request.SocialWorkerAdultID, dbo.Request.GALAdultID, 
                         dbo.Request.CareGiverAdultID, dbo.Request.RequestCompletedbyAdultID, dbo.County.CountyName AS ChildCounty, dbo.Request.ClothingComments, dbo.Request.BagFilledDate, dbo.Request.BagDeliveredDate, 
                         dbo.Request.Delivered, dbo.Request.ParticipationID, dbo.Child.FirstName AS chFirstName, dbo.Child.LastInitial AS CHLastI, dbo.Child.DOB AS CHDOB, RCB.FirstName AS RCBFirstName, RCB.LastName AS RCBLastname, 
                         RCB.Email AS RCBEmail, RCB.PhoneNumberPrimary AS RCBPhoneNumber, SW.FirstName AS SWFirstName, SW.LastName AS SWLastName, SW.Email AS SWEmail, SW.PhoneNumberPrimary AS SWPhonenumber, 
                         GAL.FirstName AS GALFirstName, GAL.LastName AS GALLastName, GAL.Email AS GALEmail, GAL.PhoneNumberPrimary AS GALPhoneNumber, CG.FirstName AS CGFirstName, CG.LastName AS CGLastName, 
                         CG.Email AS CGEmail, CG.PhoneNumberPrimary AS CGPhoneNumber, dbo.Request.RequestClosedDate, dbo.BagPickupLocation.LocationName AS BagPickUpLocationName, dbo.Request.GeneralComments, 
                         dbo.Participation.ParticipationType, dbo.Request.EmailID, dbo.Request.AppointmentDate, dbo.Request.AppointmentTime, dbo.Request.CampaignID, dbo.Request.EventLocationID, dbo.County.State, 
                         dbo.Child.CountySocialWorker, dbo.Child.CountyResidence
FROM            dbo.Request INNER JOIN
                         dbo.Child ON dbo.Request.ChildID = dbo.Child.ChildID INNER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID INNER JOIN
                         dbo.Adult AS SW ON dbo.Request.SocialWorkerAdultID = SW.AdultID INNER JOIN
                         dbo.Adult AS RCB ON dbo.Request.RequestCompletedbyAdultID = RCB.AdultID INNER JOIN
                         dbo.Adult AS CG ON dbo.Request.CareGiverAdultID = CG.AdultID INNER JOIN
                         dbo.Adult AS GAL ON dbo.Request.GALAdultID = GAL.AdultID INNER JOIN
                         dbo.County ON dbo.Child.CountyID = dbo.County.CountyID INNER JOIN
                         dbo.Participation ON dbo.Request.ParticipationID = dbo.Participation.ParticipationID LEFT OUTER JOIN
                         dbo.BagPickupLocation ON dbo.Request.BagPickupLocation = dbo.BagPickupLocation.PULocationID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[62] 4[2] 2[11] 3) )"
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
               Left = 15
               Bottom = 434
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 32
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 183
               Left = 290
               Bottom = 435
               Right = 487
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 8
               Left = 327
               Bottom = 192
               Right = 497
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SW"
            Begin Extent = 
               Top = 145
               Left = 1090
               Bottom = 292
               Right = 1305
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "RCB"
            Begin Extent = 
               Top = 15
               Left = 516
               Bottom = 131
               Right = 731
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "CG"
            Begin Extent = 
               Top = 19
               Left = 961
               Bottom = 149
               Right = 1176
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "GAL"
            Begin Extent = 
               Top = 19
               Left = 705
               Bottom = 149
               Right = 920
            End
            DisplayFlags = 280
          ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwBoHSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'  TopColumn = 13
         End
         Begin Table = "County"
            Begin Extent = 
               Top = 288
               Left = 754
               Bottom = 401
               Right = 924
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Participation"
            Begin Extent = 
               Top = 177
               Left = 617
               Bottom = 273
               Right = 798
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "BagPickupLocation"
            Begin Extent = 
               Top = 97
               Left = 519
               Bottom = 193
               Right = 689
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
      Begin ColumnWidths = 57
         Width = 284
         Width = 1500
         Width = 3435
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 3315
         Alias = 3180
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwBoHSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwBoHSearch';

