
CREATE   VIEW [dbo].[vwProgramReport]
AS
SELECT        TOP (100) PERCENT dbo.Request.RequestID, dbo.Request.RequestTypeID, dbo.RequestType.RequestName, dbo.Request.RequestDate, dbo.Request.NeedbyDate, dbo.Request.SocialWorkerAdultID, 
                         SW.FirstName AS SWFirstName, SW.LastName AS SWLastName, SW.CountyID AS SWCountyID, CountySW.CountyName AS SWCounty, dbo.Request.CareGiverAdultID, CG.FirstName AS CGFirstName, 
                         CG.LastName AS CGLastName, CG.Email AS CGEmail, CG.PhoneNumberPrimary AS CGPhoneNumber, dbo.Request.GroupHomeID, dbo.GroupHome.GroupHomeName, dbo.GroupHome.PhoneNumber AS GroupHomeNumber, 
                         dbo.Request.ChildID, dbo.Child.FirstName AS ChildFirstName, dbo.Child.LastInitial AS ChildLastInitial, dbo.Child.Nickname AS ChildNickname, dbo.Child.DOB AS ChildDOB, dbo.Child.Gender AS ChildGenderID, 
                         dbo.Gender.GenderType AS ChildGender, dbo.Child.IdentifiesAsGender AS ChildIDGender, IdentifiesAs.GenderType AS ChildIdentifiesAs, dbo.Child.ChildPlacementID AS ChildPlaceID, 
                         dbo.ChildPlacementType.Type AS ChildPlacement, dbo.Child.EthnicityID AS ChildEthnicityID, dbo.Race.EthnicityName AS ChildEthnicity, dbo.Child.CountyID AS ChildCountyID, CountyChild.CountyName AS ChildCountyName, 
                         dbo.Child.SiblingsNames, dbo.Child.CountySocialWorker, dbo.Child.CountyResidence, dbo.Request.RequestStatusID, dbo.Request.CampaignID, dbo.Request.AppointmentDate, dbo.Request.AppointmentTime, 
                         dbo.Request.AppointmentModifiedDate, dbo.Request.ParticipationID, dbo.Request.Exception, dbo.Request.ParticipationComment, dbo.Request.AttendingEvent, dbo.Request.WishList, dbo.Request.ClothingRequested, 
                         dbo.EventLocation.Section, dbo.EventLocation.FormTitle, dbo.EventLocation.Place, dbo.vwSoHSizeList.ShoeAgeGroup, dbo.vwSoHSizeList.ShoeSize, dbo.vwSoHSizeList.UGageGroup, dbo.vwSoHSizeList.UGsize, 
                         dbo.Request.EventLocationID, dbo.EventTag.TagNumber, dbo.EventTag.Active AS activeTag
FROM            dbo.EventLocation RIGHT OUTER JOIN
                         dbo.Request INNER JOIN
                         dbo.EventTag ON dbo.Request.RequestID = dbo.EventTag.RequestID ON dbo.EventLocation.LocationID = dbo.Request.EventLocationID LEFT OUTER JOIN
                         dbo.vwSoHSizeList ON dbo.Request.RequestID = dbo.vwSoHSizeList.RequestID LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.Request.GroupHomeID = dbo.GroupHome.GroupHomeID LEFT OUTER JOIN
                         dbo.County AS CountySW INNER JOIN
                         dbo.Adult AS SW ON CountySW.CountyID = SW.CountyID ON dbo.Request.SocialWorkerAdultID = SW.AdultID LEFT OUTER JOIN
                         dbo.ChildPlacementType INNER JOIN
                         dbo.County AS CountyChild INNER JOIN
                         dbo.Child ON CountyChild.CountyID = dbo.Child.CountyID ON dbo.ChildPlacementType.ChildPlacementID = dbo.Child.ChildPlacementID INNER JOIN
                         dbo.Race ON dbo.Child.EthnicityID = dbo.Race.EthnicityID ON dbo.Request.ChildID = dbo.Child.ChildID LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.Adult AS CG ON dbo.Request.CareGiverAdultID = CG.AdultID LEFT OUTER JOIN
                         dbo.Gender ON dbo.Child.Gender = dbo.Gender.GenderID LEFT OUTER JOIN
                         dbo.Gender AS IdentifiesAs ON dbo.Child.IdentifiesAsGender = IdentifiesAs.GenderID
WHERE        (dbo.Request.RequestTypeID IN (6, 7, 8)) AND (dbo.EventTag.Active = 1)
ORDER BY dbo.Request.RequestID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[21] 2[6] 3) )"
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
         Begin Table = "EventLocation"
            Begin Extent = 
               Top = 201
               Left = 977
               Bottom = 455
               Right = 1147
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 38
               Left = 15
               Bottom = 467
               Right = 263
            End
            DisplayFlags = 280
            TopColumn = 53
         End
         Begin Table = "EventTag"
            Begin Extent = 
               Top = 136
               Left = 706
               Bottom = 399
               Right = 881
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 2
               Left = 566
               Bottom = 115
               Right = 753
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CountySW"
            Begin Extent = 
               Top = 3
               Left = 663
               Bottom = 116
               Right = 833
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SW"
            Begin Extent = 
               Top = 0
               Left = 446
               Bottom = 130
               Right = 661
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChildPlacementType"
            Begin Extent = 
               Top = 15
               Left = 1076
               Bottom = 111
               Right = 1260
            End
            Di', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramReport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'splayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CountyChild"
            Begin Extent = 
               Top = 27
               Left = 1232
               Bottom = 140
               Right = 1402
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 9
               Left = 872
               Bottom = 139
               Right = 1069
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Race"
            Begin Extent = 
               Top = 10
               Left = 954
               Bottom = 106
               Right = 1124
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 317
               Left = 440
               Bottom = 413
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CG"
            Begin Extent = 
               Top = 0
               Left = 506
               Bottom = 130
               Right = 721
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gender"
            Begin Extent = 
               Top = 20
               Left = 1139
               Bottom = 133
               Right = 1309
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IdentifiesAs"
            Begin Extent = 
               Top = 14
               Left = 1017
               Bottom = 127
               Right = 1187
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwSoHSizeList"
            Begin Extent = 
               Top = 144
               Left = 367
               Bottom = 274
               Right = 537
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
      Begin ColumnWidths = 60
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
      End
   End
   Begin CriteriaPane = 
      ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramReport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'Begin ColumnWidths = 11
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramReport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 3, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramReport';

