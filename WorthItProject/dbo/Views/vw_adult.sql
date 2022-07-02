
CREATE   VIEW [dbo].[vw_adult]
AS
SELECT        dbo.Adult.AdultID, dbo.Adult.FirstName, dbo.Adult.LastName, dbo.Adult.Alias, dbo.Adult.AddressLine1, dbo.Adult.AddressLine2, dbo.Adult.City, dbo.Adult.StateID, dbo.County.State, dbo.State.StateAbbreviation, dbo.Adult.Zip, 
                         dbo.Adult.CountyID, dbo.County.CountyName, dbo.Adult.LicensingAgencyID, dbo.AdultLicensingAgency.AgencyName, dbo.Adult.Comment, dbo.Adult.JobTitle, dbo.AdultJobType.JobName, dbo.Adult.ModifyDate, 
                         dbo.Adult.LastModifiedBy, dbo.Adult.CreateDate, dbo.Adult.Email, dbo.Adult.PhoneNumberPrimary, dbo.Adult.PhonePrimaryExtension, dbo.Adult.AltPhone, dbo.Adult.AltTextable, dbo.Adult.PrimaryTextable, 
                         dbo.Adult.AltExtension
FROM            dbo.Adult LEFT OUTER JOIN
                         dbo.AdultJobAssignment ON dbo.Adult.AdultID = dbo.AdultJobAssignment.AdultNameID LEFT OUTER JOIN
                         dbo.AdultJobType ON dbo.AdultJobAssignment.AdultJobTypeID = dbo.AdultJobType.AdultJobTypeID LEFT OUTER JOIN
                         dbo.AdultLicensingAgency ON dbo.Adult.LicensingAgencyID = dbo.AdultLicensingAgency.AgencyID LEFT OUTER JOIN
                         dbo.County ON dbo.Adult.CountyID = dbo.County.CountyID LEFT OUTER JOIN
                         dbo.State ON dbo.Adult.StateID = dbo.State.StateID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[74] 4[3] 2[1] 3) )"
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
         Begin Table = "Adult"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 519
               Right = 318
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "AdultJobAssignment"
            Begin Extent = 
               Top = 336
               Left = 645
               Bottom = 489
               Right = 842
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultJobType"
            Begin Extent = 
               Top = 428
               Left = 927
               Bottom = 591
               Right = 1099
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AdultLicensingAgency"
            Begin Extent = 
               Top = 165
               Left = 626
               Bottom = 261
               Right = 796
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "County"
            Begin Extent = 
               Top = 6
               Left = 944
               Bottom = 160
               Right = 1114
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "State"
            Begin Extent = 
               Top = 6
               Left = 578
               Bottom = 135
               Right = 761
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
     ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_adult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'    Width = 1500
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
         Column = 7275
         Alias = 900
         Table = 4455
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_adult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vw_adult';

