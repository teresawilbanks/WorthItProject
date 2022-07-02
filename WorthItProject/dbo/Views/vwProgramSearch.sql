CREATE VIEW dbo.vwProgramSearch
AS
SELECT        TOP (100) PERCENT dbo.Campaign.CampaignID AS campaignID1, dbo.Campaign.CampaignStatusID, dbo.Request.RequestID, dbo.Request.ChildID, dbo.Request.RequestStatusID, dbo.Request.RequestTypeID, 
                         dbo.vw_CampDetail.Active AS ActiveCabinPlacement, dbo.vw_CampDetail.CabinName, dbo.Request.RequestDate, dbo.AdultJobType.JobName, dbo.RequestType.RequestName, EmailFormLocationname.FormTitle, 
                         dbo.GroupHome.GroupHomeName, ISNULL(dbo.Request.GroupHomeID, 32) AS GroupHomeForm, LTRIM(RTRIM(EmailFormLocationname.Section)) AS Section, EmailFormLocationname.Active AS Locationactive, 
                         dbo.Request.NeedbyDate, dbo.Request.RequestCompletedbyAdultID, dbo.Request.CompletionContactJobType, dbo.Request.SocialWorkerAdultID, dbo.Request.GALAdultID, dbo.Request.CareGiverAdultID, 
                         dbo.Request.ContactCG, dbo.Request.CGSecondaryAdultID, dbo.Request.GroupHomeID, dbo.Request.ChildShirtSizeGroupID, dbo.Request.ChildShirtSizeID, dbo.Request.ChildShirtComment, dbo.Request.ChildPantSizeGroupID, 
                         dbo.Request.ChildPantSizeID, dbo.Request.ChildPantComment, dbo.Request.ChildPajamaSizeGroupID, dbo.Request.ChildPajamaSizeID, dbo.Request.ChildPajamaComment, dbo.Request.ChildShoeSizeGroupID, 
                         dbo.Request.ChildShoeSockSizeID, dbo.Request.ChildShoeSockComment, dbo.Request.ChildUnderSizeGroupID, dbo.Request.ChildUndergarmentsSizeID, dbo.Request.ChildUndergarmentComment, 
                         dbo.Request.OutfitSizeGroupID, dbo.Request.OutfitSizeID, dbo.Request.OutfitComment, dbo.Request.DiaperSizeID, dbo.Request.ChildDiaperPullUpComment, dbo.Request.NeedCoat, dbo.Request.CoatSizeGroupID, 
                         dbo.Request.CoatSizeID, dbo.Request.CoatComment, dbo.Request.ChildJeanAgeGroupID, dbo.Request.ChildJeanSizeID, dbo.Request.childJeancomment, dbo.Request.NeedShoes, dbo.Request.ShoeComment, 
                         dbo.Request.BedSizeID, dbo.Request.GeneralComments, dbo.Request.AppointmentDate, dbo.Request.AppointmentTime, dbo.Request.AppointmentModifiedDate, dbo.Request.SponsorAdultID, dbo.Request.ReferralAdultID, 
                         dbo.Request.MedicalForm, dbo.Request.Waiver, dbo.Request.DepositReceived, dbo.Request.serviced, dbo.Request.ClothingComments, dbo.Request.ContactHistory, dbo.Request.InterviewCompleteCheck, 
                         dbo.Request.InterviewCompleteDate, dbo.Request.SeasonID, dbo.Request.BagofHopeAgeGroupID, dbo.Request.BagFilledDate, dbo.Request.RequestClosedDate, dbo.Request.BagEmbroideryNo, 
                         dbo.Request.BagPickupLocation, dbo.Request.BagEmbroiderColor, dbo.Request.ValueNonInventoryItems, dbo.Request.ChildSockSizeID, dbo.Request.ChildSockSizeGroupID, dbo.Request.EventLocationID, 
                         dbo.Request.CampaignID, dbo.Request.BagDeliveredDate, dbo.Request.ParticipationID, dbo.Request.ChildSchoolGradeID, dbo.Request.Delivered, dbo.Request.AttendedBefore, dbo.Request.RequestOtherAssistance, 
                         dbo.Request.OrgAssistedBy, dbo.Request.RequestClothing, dbo.Request.ChristmasList, dbo.Request.Exception, dbo.Request.ParticipationComment, dbo.Request.SponsorID, dbo.Request.EmailID, dbo.Request.BECID, 
                         dbo.Request.BedComment, dbo.Request.MedicineAtCamp, dbo.Request.DiaperAgeGroupID, dbo.Request.TeresaMComments, dbo.Request.SockComment, dbo.Request.HaveCurrentSW, dbo.Request.ReferenceName, 
                         dbo.Request.ReferenceTitle, dbo.Request.ReferencePhoneNumber, dbo.Request.CountyResidenceID, dbo.Request.WishList, dbo.Request.ClothingRequested, dbo.Request.OtherAssistance, dbo.Request.AssistanceBy, 
                         dbo.Request.AttendingEvent, dbo.Request.OriginalTagNumber, dbo.Request.OriginalLocationID, dbo.Request.CGCountyID, dbo.Request.DOBExceptionSavedBy, dbo.Request.DOBException, 
                         dbo.Request.LastModifiedBy AS dobModifiedby, dbo.Request.PendingRequestID, dbo.Request.CurrentLocation, dbo.Request.SendText, dbo.Campaign.CampaignTypeID, dbo.vw_ChildInfo.FirstName, dbo.vw_ChildInfo.LastInitial,
                          dbo.vw_ChildInfo.Nickname, dbo.vw_ChildInfo.DOB, dbo.vw_ChildInfo.Gender, dbo.vw_ChildInfo.EthnicityID, dbo.vw_ChildInfo.ChildPlacementID, dbo.vw_ChildInfo.CountyID AS childcountyid, dbo.vw_ChildInfo.SiblingsNames, 
                         dbo.vw_ChildInfo.SameHome, dbo.vw_ChildInfo.Comments, dbo.vw_ChildInfo.CountySocialWorker, dbo.vw_ChildInfo.CountyResidence, dbo.vw_ChildInfo.IdentifiesAsGender, dbo.vw_ChildInfo.LastName, 
                         dbo.vw_ChildInfo.GenderID, dbo.vw_ChildInfo.GenderType, dbo.vw_ChildInfo.IDgenderID, dbo.vw_ChildInfo.IDGender, dbo.vw_ChildInfo.EthnicityName, dbo.vw_ChildInfo.CountyName, dbo.vw_ChildInfo.State, 
                         dbo.vw_ChildInfo.Type, dbo.vw_ChildInfo.childfullname, dbo.Request.rowversion, dbo.Request.ModifyDate, UnderwearAgeGroup.AgeGroup AS underwearAgeGroup, UnderwearSize.SizeName AS underwearSize, 
                         ShoeAgeGroup.AgeGroup AS shoeAgeGroup, ShoeSize.SizeName AS shoeSize, dbo.vw_CampDetail.CampgroundRefID, dbo.vw_CampDetail.MaxOcc, dbo.vw_CampDetail.CabinID, dbo.vw_CampDetail.CabinGender, 
                         dbo.vw_CampDetail.CabinAgeGroup, dbo.vw_textDetail1.textsentdate, dbo.vw_textDetail1.StatusCallBack, dbo.GroupHome.PhoneNumber AS groupHomePhoneNumber, dbo.Participation.ParticipationType, 
                         dbo.Request.AdditionalInfo, dbo.Request.packedBy, dbo.vwRequestNames.RCBName, dbo.vwRequestNames.SWName, dbo.vwRequestNames.GALname, dbo.vwRequestNames.CGName, 
                         dbo.vwRequestNames.RCBPhonePrimary, dbo.vwRequestNames.RCBemail, dbo.vwRequestNames.SWphonePrimary, dbo.vwRequestNames.SWemail, dbo.vwRequestNames.GALemail, 
                         dbo.vwRequestNames.GALPhonePrimary, dbo.vwRequestNames.CGemail, dbo.vwRequestNames.CGPhonePrimary, dbo.vwRequestNames.SWCountyName, dbo.vwRequestNames.AgencyName, 
                         dbo.vwRequestNames.LicensingAgencyID, dbo.Request.schoolgradetxt
FROM            dbo.AdultJobType RIGHT OUTER JOIN
                         dbo.ProductSizeGroup AS UnderwearAgeGroup RIGHT OUTER JOIN
                         dbo.Size AS ShoeSize RIGHT OUTER JOIN
                         dbo.vw_textDetail1 RIGHT OUTER JOIN
                         dbo.Request INNER JOIN
                         dbo.Participation ON dbo.Request.ParticipationID = dbo.Participation.ParticipationID LEFT OUTER JOIN
                         dbo.vwRequestNames ON dbo.Request.RequestID = dbo.vwRequestNames.RequestID RIGHT OUTER JOIN
                         dbo.Campaign ON dbo.Request.CampaignID = dbo.Campaign.CampaignID LEFT OUTER JOIN
                         dbo.EventLocation AS EmailFormLocationname ON dbo.Request.EventLocationID = EmailFormLocationname.LocationID ON dbo.vw_textDetail1.RequestID = dbo.Request.RequestID ON 
                         ShoeSize.SizeID = dbo.Request.ChildShoeSockSizeID LEFT OUTER JOIN
                         dbo.ProductSizeGroup AS ShoeAgeGroup ON dbo.Request.ChildShoeSizeGroupID = ShoeAgeGroup.AgeGroupID ON UnderwearAgeGroup.AgeGroupID = dbo.Request.ChildUnderSizeGroupID LEFT OUTER JOIN
                         dbo.Size AS UnderwearSize ON dbo.Request.ChildUndergarmentsSizeID = UnderwearSize.SizeID LEFT OUTER JOIN
                         dbo.vw_CampDetail ON dbo.Request.RequestID = dbo.vw_CampDetail.RequestID LEFT OUTER JOIN
                         dbo.vw_ChildInfo ON dbo.Request.ChildID = dbo.vw_ChildInfo.ChildID LEFT OUTER JOIN
                         dbo.GroupHome ON dbo.Request.GroupHomeID = dbo.GroupHome.GroupHomeID ON dbo.AdultJobType.AdultJobTypeID = dbo.Request.CompletionContactJobType LEFT OUTER JOIN
                         dbo.RequestType ON dbo.Request.RequestTypeID = dbo.RequestType.RequestTypeID
WHERE        (dbo.Request.RequestTypeID IN (6, 7, 8)) AND (dbo.Campaign.CampaignStatusID = 5) AND (dbo.Request.RequestStatusID <= 25) OR
                         (dbo.Request.RequestTypeID IN (6, 7, 8)) AND (dbo.Campaign.CampaignStatusID = 5) AND (dbo.Request.RequestStatusID <= 25)
ORDER BY dbo.Request.ChildID

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[63] 4[29] 3[8] 2) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
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
         Configuration = "(H (1[65] 4[3] 2) )"
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
               Top = 431
               Left = 603
               Bottom = 497
               Right = 775
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UnderwearAgeGroup"
            Begin Extent = 
               Top = 403
               Left = 1095
               Bottom = 533
               Right = 1265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShoeSize"
            Begin Extent = 
               Top = 9
               Left = 1263
               Bottom = 136
               Right = 1433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_textDetail1"
            Begin Extent = 
               Top = 48
               Left = 864
               Bottom = 254
               Right = 1034
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 64
               Left = 286
               Bottom = 395
               Right = 534
            End
            DisplayFlags = 280
            TopColumn = 101
         End
         Begin Table = "Participation"
            Begin Extent = 
               Top = 202
               Left = 639
               Bottom = 345
               Right = 820
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwRequestNames"
            Begin Extent = 
               Top = 42
               Left = 1548
               Bottom = 488
               Right = 1791
    ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'        End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Campaign"
            Begin Extent = 
               Top = 25
               Left = 11
               Bottom = 311
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmailFormLocationname"
            Begin Extent = 
               Top = 376
               Left = 870
               Bottom = 614
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShoeAgeGroup"
            Begin Extent = 
               Top = 13
               Left = 1107
               Bottom = 143
               Right = 1277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UnderwearSize"
            Begin Extent = 
               Top = 15
               Left = 1047
               Bottom = 145
               Right = 1217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vw_CampDetail"
            Begin Extent = 
               Top = 46
               Left = 698
               Bottom = 338
               Right = 885
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "vw_ChildInfo"
            Begin Extent = 
               Top = 175
               Left = 1303
               Bottom = 361
               Right = 1500
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "GroupHome"
            Begin Extent = 
               Top = 231
               Left = 1190
               Bottom = 408
               Right = 1377
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RequestType"
            Begin Extent = 
               Top = 374
               Left = 592
               Bottom = 436
               Right = 762
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
      Begin ColumnWidths = 187
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
      ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane3', @value = N'   Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 7410
         Alias = 3240
         Table = 12165
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1365
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane4', @value = N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 7410
         Alias = 3240
         Table = 12165
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1365
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramSearch';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 3, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProgramSearch';

