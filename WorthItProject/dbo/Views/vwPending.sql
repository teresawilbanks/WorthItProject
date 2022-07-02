CREATE VIEW dbo.vwPending
AS
SELECT        dbo.tempRequest.PendingRequestID, dbo.tempRequest.EMailID, dbo.tempRequest.EmailTypeID, dbo.tempRequest.RequestType, dbo.tempRequest.RequestTypeID, dbo.tempRequest.RequestDate, 
                         dbo.tempRequest.NeedbyDate, dbo.tempRequest.RequestCompletedby, dbo.tempRequest.RCBID, dbo.tempRequest.RCBFName, dbo.tempRequest.RCBLName, dbo.tempRequest.RCBEmail, dbo.tempRequest.RCBRelation, 
                         dbo.tempRequest.RCBPhoneNumber, dbo.tempRequest.ContactWhenComplete, dbo.tempRequest.CompletionContactTypeID, dbo.tempRequest.SocialWorker, dbo.tempRequest.SWFName, dbo.tempRequest.SWLName, 
                         dbo.tempRequest.SWID, dbo.tempRequest.SWCounty, dbo.tempRequest.SWCountyID, dbo.tempRequest.SWPhoneNumber, dbo.tempRequest.GAL, dbo.tempRequest.GALFName, dbo.tempRequest.GALLName, 
                         dbo.tempRequest.GALID, dbo.tempRequest.GALPhoneNumber, dbo.tempRequest.CareGiver, dbo.tempRequest.CGID, dbo.tempRequest.CGFName, dbo.tempRequest.CGLName, dbo.tempRequest.CGRelation, 
                         dbo.tempRequest.CGPlacementTypeID, dbo.tempRequest.CGPhoneNumber, dbo.tempRequest.txtRecText, dbo.tempRequest.RecText, dbo.tempRequest.CGEmail, dbo.tempRequest.CGCountyID, dbo.tempRequest.CGCounty, 
                         dbo.tempRequest.ContactCareGiver, dbo.tempRequest.ContactCG, dbo.tempRequest.CGLicensingAgency, dbo.tempRequest.CGLicensingAgencyID, dbo.tempRequest.GroupHomeID, dbo.tempRequest.ChildID, 
                         dbo.tempRequest.ChildFirstName, dbo.tempRequest.ChildLastInitial, dbo.tempRequest.ChildDOB, dbo.tempRequest.ChildGender, dbo.tempRequest.GenderID, dbo.tempRequest.ChildEthnicity, dbo.tempRequest.RaceID, 
                         dbo.tempRequest.PlacementType, dbo.tempRequest.ChildPlacementTypeID, dbo.tempRequest.ChildAge, dbo.tempRequest.SiblingsNames, dbo.tempRequest.SameHome, dbo.tempRequest.ChildShirtSize, 
                         dbo.tempRequest.ChildPantSize, dbo.tempRequest.ChildShoeSockSize, dbo.tempRequest.ChildUGSize, dbo.tempRequest.ChildDiapers, dbo.tempRequest.AddtlInfo, dbo.tempRequest.Comments, dbo.tempRequest.ChildID2, 
                         dbo.tempRequest.Child2FirstName, dbo.tempRequest.Child2LastInitial, dbo.tempRequest.Child2PlacementID, dbo.tempRequest.Child2PlacementType, dbo.tempRequest.Child2Age, dbo.tempRequest.Child2DOB, 
                         dbo.tempRequest.Child2GenderID, dbo.tempRequest.Child2Gender, dbo.tempRequest.Child2EthnicityID, dbo.tempRequest.Child2Ethnicity, dbo.tempRequest.Child2SiblingsNames, dbo.tempRequest.Child2SameHome, 
                         dbo.tempRequest.Processed, dbo.tempRequest.Status, dbo.tempRequest.ProcessedDate, dbo.tempRequest.BedType1, dbo.tempRequest.BedType2, dbo.tempRequest.Nickname, dbo.tempRequest.SchoolGrade, 
                         dbo.tempRequest.ResidingAddress, dbo.tempRequest.MailingAddress, dbo.tempRequest.SWEmail, dbo.tempRequest.EventLocation, dbo.tempRequest.EventLocationID, dbo.tempRequest.EmailDateTime, 
                         dbo.tempRequest.EmailSubject, dbo.tempRequest.LOTFormNumber, dbo.tempRequest.BagEmbroiderCompany, dbo.tempRequest.BagNumber, dbo.tempRequest.FormPickUpLocation, dbo.tempRequest.BagPickUpLocation, 
                         dbo.tempRequest.EmbroideryColor, dbo.tempRequest.SeasonID, dbo.tempRequest.BoHAgeGroupID, dbo.tempRequest.ShirtSizeAgeGroupID, dbo.tempRequest.ShirtSizeID, dbo.tempRequest.PantAgeGroupID, 
                         dbo.tempRequest.PantSizeID, dbo.tempRequest.JeanAgeGroupID, dbo.tempRequest.JeanSizeID, dbo.tempRequest.JeanComment, dbo.tempRequest.OutfitSizeGroupID, dbo.tempRequest.OutfitSizeID, 
                         dbo.tempRequest.OutfitComment, dbo.tempRequest.PajamaAgeGroupID, dbo.tempRequest.PajamaSizeID, dbo.tempRequest.PajamaComment, dbo.tempRequest.UnderwearAgeGroupID, dbo.tempRequest.UnderwearSizeID, 
                         dbo.tempRequest.SockAgeGroupID, dbo.tempRequest.SockSizeID, dbo.tempRequest.SockComment, dbo.tempRequest.ShoeAgeGroupID, dbo.tempRequest.ShoeSizeID, dbo.tempRequest.DiaperAgeGroupID, 
                         dbo.tempRequest.DiaperSizeID, dbo.tempRequest.CoatAgeGroupID, dbo.tempRequest.CoatSizeID, dbo.tempRequest.CoatComment, dbo.tempRequest.GeneralClothingComment, dbo.tempRequest.TeresaSpecComment, 
                         dbo.tempRequest.ReferenceName, dbo.tempRequest.ReferenceTitle, dbo.tempRequest.ReferencePhoneNumber, dbo.tempRequest.CountyCurrentResidence, dbo.tempRequest.CountyResidenceID, 
                         dbo.tempRequest.OtherAssistance, dbo.tempRequest.Assistanceby, dbo.tempRequest.HaveCurrentSW, dbo.tempRequest.WishList, dbo.tempRequest.ClothingRequested, dbo.tempRequest.AttendedBefore, 
                         dbo.tempRequest.CampaignID, dbo.tempRequest.times_stamp, dbo.tempRequest.childlastname, dbo.RequestType.RequestName, CareGiver.FirstName + N' ' + CareGiver.LastName AS CG, 
                         dbo.Child.FirstName + N' ' + dbo.Child.LastInitial AS child, dbo.vwBagCheck.BagFilledDate, dbo.vwBagCheck.RequestID AS BagRequestID
FROM            dbo.tempRequest INNER JOIN
                         dbo.RequestType ON dbo.tempRequest.RequestTypeID = dbo.RequestType.RequestTypeID INNER JOIN
                         dbo.Adult AS CareGiver ON dbo.tempRequest.CGID = CareGiver.AdultID LEFT OUTER JOIN
                         dbo.Child ON dbo.tempRequest.ChildID = dbo.Child.ChildID FULL OUTER JOIN
                         dbo.vwBagCheck ON dbo.Child.ChildID = dbo.vwBagCheck.ChildID
WHERE        (dbo.tempRequest.Status = 3)

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[19] 2[3] 3) )"
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
         Begin Table = "tempRequest"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 285
               Right = 268
            End
            DisplayFlags = 280
            TopColumn = 34
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 12
               Left = 639
               Bottom = 117
               Right = 809
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CareGiver"
            Begin Extent = 
               Top = 12
               Left = 374
               Bottom = 193
               Right = 589
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Child"
            Begin Extent = 
               Top = 200
               Left = 375
               Bottom = 330
               Right = 572
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwBagCheck"
            Begin Extent = 
               Top = 137
               Left = 676
               Bottom = 310
               Right = 850
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
      Begin ColumnWidths = 147
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
 ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwPending';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'        Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 10485
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwPending';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwPending';

