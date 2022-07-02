CREATE VIEW dbo.vwChristmasReport
AS
SELECT        dbo.Request.RequestID, dbo.Request.RequestTypeID, dbo.RequestType.RequestName, dbo.Request.RequestDate, dbo.Request.NeedbyDate, dbo.Request.SocialWorkerAdultID, SW.FirstName AS SWFirstName, 
                         SW.LastName AS SWLastName, SW.CountyID AS SWCountyID, CountySW.CountyName AS SWCounty, dbo.Request.CareGiverAdultID, CG.FirstName AS CGFirstName, CG.LastName AS CGLastName, CG.Email AS CGEmail, 
                         CG.PhoneNumberPrimary AS CGPhoneNumber, dbo.Request.GroupHomeID, dbo.GroupHome.GroupHomeName, dbo.GroupHome.PhoneNumber AS GroupHomeNumber, dbo.Request.ChildID, 
                         dbo.Child.FirstName AS ChildFirstName, dbo.Child.LastInitial AS ChildLastInitial, dbo.Child.Nickname AS ChildNickname, dbo.Child.DOB AS ChildDOB, dbo.Child.Gender, dbo.Gender.GenderType AS ChildGender, 
                         dbo.Child.IdentifiesAsGender, IdentifiesAs.GenderType AS ChildIdentifiesAs, dbo.Child.ChildPlacementID, dbo.ChildPlacementType.Type AS ChildPlacement, dbo.Child.EthnicityID, dbo.Race.EthnicityName AS ChildEthnicity, 
                         dbo.Child.CountyID, CountyChild.CountyName AS ChildCountyName, dbo.Child.SiblingsNames, dbo.Child.CountySocialWorker, dbo.Child.CountyResidence, dbo.Request.RequestStatusID, dbo.Request.CampaignID, 
                         dbo.Request.EventLocationID, dbo.Request.AppointmentDate, dbo.Request.AppointmentTime, dbo.Request.AppointmentModifiedDate, dbo.Request.ParticipationID, dbo.Request.Exception, dbo.Request.ParticipationComment, 
                         dbo.Request.AttendingEvent, dbo.Request.WishList, dbo.Request.ClothingRequested, dbo.Request.TagValue, dbo.Request.tagnumber, dbo.Request.OriginalTagNumber, dbo.Request.OriginalLocationID, 
                         dbo.EventLocation.FormTitle, dbo.EventLocation.Place, dbo.EventLocation.Section AS CurrentSection, dbo.EventLocation.ProgramTitle, OriginalLocation.FormTitle AS OriginalLocation, OriginalLocation.Place AS OriginalPlace, 
                         OriginalLocation.Section AS OriginalSection
FROM            dbo.Request INNER JOIN
                         dbo.Child ON dbo.Request.ChildID = dbo.Child.ChildID INNER JOIN
                         dbo.Adult AS SW ON dbo.Request.SocialWorkerAdultID = SW.AdultID INNER JOIN
                         dbo.Adult AS CG ON dbo.Request.CareGiverAdultID = CG.AdultID INNER JOIN
                         dbo.County AS CountyChild ON dbo.Child.CountyID = CountyChild.CountyID INNER JOIN
                         dbo.County AS CountySW ON SW.CountyID = CountySW.CountyID INNER JOIN
                         dbo.ChildPlacementType ON dbo.Child.ChildPlacementID = dbo.ChildPlacementType.ChildPlacementID INNER JOIN
                         dbo.Race ON dbo.Child.EthnicityID = dbo.Race.EthnicityID INNER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.Gender ON dbo.Child.Gender = dbo.Gender.GenderID LEFT OUTER JOIN
                         dbo.Gender AS IdentifiesAs ON dbo.Child.IdentifiesAsGender = IdentifiesAs.GenderID LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.Request.GroupHomeID = dbo.GroupHome.GroupHomeID LEFT OUTER JOIN
                         dbo.EventLocation AS OriginalLocation ON dbo.Request.OriginalLocationID = OriginalLocation.LocationID LEFT OUTER JOIN
                         dbo.EventLocation ON dbo.Request.EventLocationID = dbo.EventLocation.LocationID
WHERE        (dbo.Request.RequestTypeID = 7)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[43] 2[6] 3) )"
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
               Bottom = 601
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 75
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 48
               Left = 609
               Bottom = 221
               Right = 806
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SW"
            Begin Extent = 
               Top = 39
               Left = 229
               Bottom = 169
               Right = 443
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "CG"
            Begin Extent = 
               Top = 6
               Left = 313
               Bottom = 136
               Right = 527
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "CountyChild"
            Begin Extent = 
               Top = 41
               Left = 405
               Bottom = 154
               Right = 575
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CountySW"
            Begin Extent = 
               Top = 25
               Left = 495
               Bottom = 138
               Right = 665
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChildPlacementType"
            Begin Extent = 
               Top = 36
               Left = 854
               Bottom = 132
               Right = 1038
            End
            DisplayFlags = 2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwChristmasReport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'80
            TopColumn = 0
         End
         Begin Table = "Race"
            Begin Extent = 
               Top = 39
               Left = 946
               Bottom = 135
               Right = 1116
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 181
               Left = 331
               Bottom = 277
               Right = 501
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gender"
            Begin Extent = 
               Top = 29
               Left = 524
               Bottom = 142
               Right = 694
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IdentifiesAs"
            Begin Extent = 
               Top = 304
               Left = 374
               Bottom = 417
               Right = 544
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 121
               Left = 723
               Bottom = 234
               Right = 910
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "OriginalLocation"
            Begin Extent = 
               Top = 422
               Left = 742
               Bottom = 552
               Right = 912
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "EventLocation"
            Begin Extent = 
               Top = 52
               Left = 520
               Bottom = 258
               Right = 690
            End
            DisplayFlags = 280
            TopColumn = 1
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
      Begin ColumnWidths = 11
         Column = 5340
         Alias = 3615
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwChristmasReport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwChristmasReport';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 3, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwChristmasReport';

