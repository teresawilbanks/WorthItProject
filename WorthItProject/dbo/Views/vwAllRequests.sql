CREATE VIEW dbo.vwAllRequests
AS
SELECT        TOP (100) PERCENT dbo.tempRequest.EMailID, COALESCE (dbo.Request.RequestID, 0) AS RequestID, COALESCE (dbo.RequestType.RequestName, dbo.tempRequest.RequestType) AS RequestType, 
                         COALESCE (COALESCE (dbo.Request.RequestTypeID, dbo.tempRequest.RequestTypeID), 0) AS RequestTypeID, dbo.tempRequest.RequestDate, dbo.tempRequest.NeedbyDate, COALESCE (dbo.vwRequestNames.RCBName, 
                         dbo.tempRequest.RequestCompletedby) AS RCBName, COALESCE (COALESCE (dbo.Request.RequestCompletedbyAdultID, dbo.tempRequest.RCBID), 0) AS RCBID, COALESCE (dbo.AdultJobType.JobName, 
                         dbo.tempRequest.ContactWhenComplete) AS CCName, COALESCE (dbo.Request.CompletionContactJobType, dbo.tempRequest.CompletionContactTypeID) AS CCtypeID, COALESCE (dbo.vwRequestNames.SWName, 
                         dbo.tempRequest.SocialWorker) AS SWName, COALESCE (COALESCE (dbo.Request.SocialWorkerAdultID, dbo.tempRequest.SWID), 0) AS SWID, COALESCE (COALESCE (dbo.Request.CareGiverAdultID, dbo.tempRequest.CGID), 
                         0) AS CGID, COALESCE (dbo.vwRequestNames.CGName, dbo.tempRequest.CareGiver) AS CGName, COALESCE (dbo.vwRequestNames.PlacementTypeName, dbo.tempRequest.CGRelation) AS CGPlacementType, 
                         COALESCE (dbo.vwRequestNames.CGPlacementTypeID, dbo.tempRequest.CGPlacementTypeID) AS CGPlacementTypeID, COALESCE (dbo.vwRequestNames.AgencyName, dbo.tempRequest.CGLicensingAgency) 
                         AS CGAgencyName, COALESCE (dbo.vwRequestNames.LicensingAgencyID, dbo.tempRequest.CGLicensingAgencyID) AS CGAgencyID, dbo.vwRequestNames.GroupHomeID, dbo.vwRequestNames.GroupHomeName, 
                         COALESCE (dbo.vwChild.DOB, dbo.tempRequest.ChildDOB) AS ChildDOB, COALESCE (COALESCE (dbo.Request.ChildID, dbo.tempRequest.ChildID), 0) AS ChildID, COALESCE (dbo.vwChild.FirstName, 
                         dbo.tempRequest.ChildFirstName) AS childFirstName, COALESCE (dbo.vwChild.CountyID, 0) AS ChildCountyID, dbo.tempRequest.LOTFormNumber, COALESCE (COALESCE (dbo.Request.RequestStatusID, 
                         dbo.tempRequest.Status), 0) AS StatusID, dbo.tempRequest.requestgroup, dbo.vwChild.CountyName, dbo.RequestStatus.StatusType
FROM            dbo.AdultJobType INNER JOIN
                         dbo.Request ON dbo.AdultJobType.AdultJobTypeID = dbo.Request.CompletionContactJobType LEFT OUTER JOIN
                         dbo.RequestStatus ON dbo.Request.RequestStatusID = dbo.RequestStatus.StatusID LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID LEFT OUTER JOIN
                         dbo.vwRequestNames ON dbo.Request.RequestID = dbo.vwRequestNames.RequestID LEFT OUTER JOIN
                         dbo.vwChild ON dbo.Request.ChildID = dbo.vwChild.ChildID FULL OUTER JOIN
                         dbo.tempRequest ON dbo.Request.EmailID = dbo.tempRequest.EMailID
ORDER BY dbo.tempRequest.EMailID DESC

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[46] 2[4] 3) )"
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
         Begin Table = "AdultJobType"
            Begin Extent = 
               Top = 128
               Left = 749
               Bottom = 233
               Right = 921
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 13
               Left = 429
               Bottom = 308
               Right = 677
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "RequestStatus"
            Begin Extent = 
               Top = 82
               Left = 1628
               Bottom = 195
               Right = 1809
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tempRequest"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 324
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 127
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 15
               Left = 914
               Bottom = 111
               Right = 1084
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwRequestNames"
            Begin Extent = 
               Top = 6
               Left = 980
               Bottom = 313
               Right = 1223
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "vwChild"
            Begin Extent = 
               Top = 37
               Left = 1324
               Bottom = 304
               Right = 1521
            End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwAllRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
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
      Begin ColumnWidths = 30
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4395
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 10800
         Alias = 4155
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwAllRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwAllRequests';

