
CREATE   VIEW [dbo].[vw_ChildInfo]
AS
SELECT        dbo.Child.ChildID, dbo.Child.FirstName, dbo.Child.LastInitial, dbo.Child.Nickname, dbo.Child.DOB, dbo.Child.Gender, dbo.Child.EthnicityID, dbo.Child.ChildPlacementID, dbo.Child.CountyID, dbo.Child.SiblingsNames, 
                         dbo.Child.SameHome, dbo.Child.Comments, dbo.Child.LOTID, dbo.Child.CountySocialWorker, dbo.Child.CountyResidence, dbo.Child.IdentifiesAsGender, dbo.Child.LastName, dbo.Child.CreateDate, dbo.Child.ModifyDate, 
                         dbo.Child.duplicate, dbo.Child.SSMA_TimeStamp, dbo.Child.DuplicateID, dbo.Child.LastModifiedBy, dbo.Gender.GenderID, dbo.Gender.GenderType, IDgender.GenderID AS IDgenderID, IDgender.GenderType AS IDGender, 
                         dbo.Race.EthnicityName, dbo.County.CountyName, dbo.County.State, dbo.ChildPlacementType.Type, dbo.Child.FirstName + N' ' + dbo.Child.LastInitial + N', ' + COALESCE (dbo.Child.Nickname, N' ') AS childfullname, 
                         CAST(dbo.Child.DOB AS nvarchar(10)) AS childDOB
FROM            dbo.Child INNER JOIN
                         dbo.ChildPlacementType ON dbo.Child.ChildPlacementID = dbo.ChildPlacementType.ChildPlacementID INNER JOIN
                         dbo.County ON dbo.Child.CountyID = dbo.County.CountyID INNER JOIN
                         dbo.Gender ON dbo.Child.Gender = dbo.Gender.GenderID INNER JOIN
                         dbo.Race ON dbo.Child.EthnicityID = dbo.Race.EthnicityID INNER JOIN
                         dbo.Gender AS IDgender ON dbo.Child.IdentifiesAsGender = IDgender.GenderID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[16] 2[15] 3) )"
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
         Begin Table = "Child"
            Begin Extent = 
               Top = 0
               Left = 37
               Bottom = 293
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChildPlacementType"
            Begin Extent = 
               Top = 154
               Left = 468
               Bottom = 290
               Right = 652
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "County"
            Begin Extent = 
               Top = 186
               Left = 382
               Bottom = 319
               Right = 552
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Gender"
            Begin Extent = 
               Top = 25
               Left = 387
               Bottom = 138
               Right = 557
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Race"
            Begin Extent = 
               Top = 95
               Left = 425
               Bottom = 191
               Right = 595
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "IDgender"
            Begin Extent = 
               Top = 21
               Left = 516
               Bottom = 134
               Right = 686
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
      Begin ColumnWidths = 34
         Width = 284
         Width = 1500
         Width = 1500
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_ChildInfo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 11115
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_ChildInfo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_ChildInfo';

