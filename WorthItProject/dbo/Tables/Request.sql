CREATE TABLE [dbo].[Request] (
    [RequestID]                 INT            IDENTITY (8285, 1) NOT NULL,
    [RequestTypeID]             INT            NOT NULL,
    [RequestDate]               DATETIME       NULL,
    [NeedbyDate]                DATETIME       NULL,
    [RequestCompletedbyAdultID] INT            NULL,
    [CompletionContactJobType]  INT            CONSTRAINT [DF__Request__Complet__5CA1C101] DEFAULT ((1)) NULL,
    [SocialWorkerAdultID]       INT            NULL,
    [GALAdultID]                INT            NULL,
    [CareGiverAdultID]          INT            NULL,
    [ContactCG]                 BIT            CONSTRAINT [DF__Request__Contact__5D95E53A] DEFAULT ((0)) NULL,
    [CGSecondaryAdultID]        INT            NULL,
    [GroupHomeID]               INT            NULL,
    [ChildID]                   INT            NULL,
    [ChildShirtSizeGroupID]     INT            NULL,
    [ChildShirtSizeID]          INT            NULL,
    [ChildShirtComment]         NVARCHAR (55)  NULL,
    [ChildPantSizeGroupID]      INT            NULL,
    [ChildPantSizeID]           INT            NULL,
    [ChildPantComment]          NVARCHAR (55)  NULL,
    [ChildPajamaSizeGroupID]    INT            NULL,
    [ChildPajamaSizeID]         INT            NULL,
    [ChildPajamaComment]        NVARCHAR (55)  NULL,
    [ChildShoeSizeGroupID]      INT            NULL,
    [ChildShoeSockSizeID]       INT            NULL,
    [ChildShoeSockComment]      NVARCHAR (55)  NULL,
    [ChildUnderSizeGroupID]     INT            NULL,
    [ChildUndergarmentsSizeID]  INT            NULL,
    [ChildUndergarmentComment]  NVARCHAR (55)  NULL,
    [OutfitSizeGroupID]         INT            NULL,
    [OutfitSizeID]              INT            NULL,
    [OutfitComment]             NVARCHAR (55)  NULL,
    [DiaperSizeID]              INT            NULL,
    [ChildDiaperPullUpComment]  NVARCHAR (55)  NULL,
    [NeedCoat]                  BIT            CONSTRAINT [DF__Request__NeedCoa__5E8A0973] DEFAULT ((0)) NULL,
    [CoatSizeGroupID]           INT            NULL,
    [CoatSizeID]                INT            NULL,
    [CoatComment]               NVARCHAR (55)  NULL,
    [ChildJeanAgeGroupID]       INT            CONSTRAINT [DF__Request__ChildJe__5F7E2DAC] DEFAULT ((0)) NULL,
    [ChildJeanSizeID]           INT            CONSTRAINT [DF__Request__ChildJe__607251E5] DEFAULT ((0)) NULL,
    [childJeancomment]          NVARCHAR (255) NULL,
    [NeedShoes]                 BIT            CONSTRAINT [DF__Request__NeedSho__6166761E] DEFAULT ((0)) NULL,
    [ShoeComment]               NVARCHAR (55)  NULL,
    [BedSizeID]                 INT            NULL,
    [GeneralComments]           NVARCHAR (MAX) NULL,
    [AppointmentDate]           DATETIME       NULL,
    [AppointmentTime]           DATETIME       NULL,
    [AppointmentModifiedDate]   SMALLDATETIME  NULL,
    [SponsorAdultID]            INT            NULL,
    [ReferralAdultID]           INT            NULL,
    [MedicalForm]               BIT            CONSTRAINT [DF__Request__Medical__634EBE90] DEFAULT ((0)) NULL,
    [Waiver]                    BIT            CONSTRAINT [DF__Request__Waiver__6442E2C9] DEFAULT ((0)) NULL,
    [DepositReceived]           BIT            CONSTRAINT [DF__Request__Deposit__65370702] DEFAULT ((0)) NULL,
    [serviced]                  BIT            CONSTRAINT [DF__Request__Service__662B2B3B] DEFAULT ((1)) NULL,
    [RequestStatusID]           INT            CONSTRAINT [DF__Request__Request__671F4F74] DEFAULT ((5)) NOT NULL,
    [ClothingComments]          NVARCHAR (255) NULL,
    [ContactHistory]            NVARCHAR (255) NULL,
    [InterviewCompleteCheck]    BIT            CONSTRAINT [DF__Request__Intervi__681373AD] DEFAULT ((0)) NULL,
    [InterviewCompleteDate]     DATETIME2 (0)  NULL,
    [SeasonID]                  INT            NULL,
    [BagofHopeAgeGroupID]       INT            NULL,
    [BagFilledDate]             DATETIME       NULL,
    [RequestClosedDate]         DATETIME       NULL,
    [BagEmbroideryNo]           INT            CONSTRAINT [DF__Request__BagEmbr__690797E6] DEFAULT ((0)) NULL,
    [BagPickupLocation]         INT            CONSTRAINT [DF_Request_BagPickupLocation] DEFAULT ((1)) NULL,
    [BagEmbroiderColor]         NVARCHAR (255) NULL,
    [ValueNonInventoryItems]    INT            CONSTRAINT [DF__Request__ValueNo__69FBBC1F] DEFAULT ((0)) NULL,
    [ChildSockSizeID]           INT            CONSTRAINT [DF__Request__ChildSo__6AEFE058] DEFAULT ((0)) NULL,
    [ChildSockSizeGroupID]      INT            CONSTRAINT [DF__Request__ChildSo__6BE40491] DEFAULT ((0)) NULL,
    [EventLocationID]           INT            NULL,
    [CampaignID]                INT            CONSTRAINT [DF__Request__Campaig__6CD828CA] DEFAULT ((0)) NULL,
    [BagDeliveredDate]          DATETIME       NULL,
    [ParticipationID]           INT            CONSTRAINT [DF__Request__Partici__6DCC4D03] DEFAULT ((1)) NULL,
    [ChildSchoolGradeID]        INT            CONSTRAINT [DF__Request__ChildSc__6EC0713C] DEFAULT ((0)) NULL,
    [Delivered]                 BIT            CONSTRAINT [DF__Request__Deliver__6FB49575] DEFAULT ((0)) NULL,
    [AttendedBefore]            NVARCHAR (50)  CONSTRAINT [DF__Request__Attende__70A8B9AE] DEFAULT ((0)) NULL,
    [RequestOtherAssistance]    NVARCHAR (50)  CONSTRAINT [DF__Request__Request__719CDDE7] DEFAULT ((0)) NULL,
    [OrgAssistedBy]             NVARCHAR (255) NULL,
    [RequestClothing]           NVARCHAR (50)  CONSTRAINT [DF__Request__Request__72910220] DEFAULT ((0)) NULL,
    [ChristmasList]             NVARCHAR (MAX) NULL,
    [Exception]                 BIT            CONSTRAINT [DF__Request__Excepti__73852659] DEFAULT ((0)) NULL,
    [ParticipationComment]      NVARCHAR (255) NULL,
    [SponsorID]                 INT            NULL,
    [EmailID]                   INT            CONSTRAINT [DF__Request__EmailID__74794A92] DEFAULT ((0)) NULL,
    [BECID]                     INT            CONSTRAINT [DF__Request__BECID__756D6ECB] DEFAULT ((0)) NULL,
    [BedComment]                NVARCHAR (MAX) NULL,
    [MedicineAtCamp]            BIT            CONSTRAINT [DF__Request__Medicin__76619304] DEFAULT ((0)) NULL,
    [DiaperAgeGroupID]          INT            CONSTRAINT [DF__Request__DiaperA__7755B73D] DEFAULT ((0)) NULL,
    [TeresaMComments]           NVARCHAR (MAX) NULL,
    [SockComment]               NVARCHAR (255) NULL,
    [CreateDate]                DATETIME2 (0)  CONSTRAINT [DF__Request__CreateD__7849DB76] DEFAULT (getdate()) NULL,
    [ModifyDate]                DATETIME2 (0)  CONSTRAINT [DF_Request_ModifyDate] DEFAULT (getdate()) NULL,
    [HaveCurrentSW]             NVARCHAR (10)  NULL,
    [ReferenceName]             NVARCHAR (50)  NULL,
    [ReferenceTitle]            NVARCHAR (50)  NULL,
    [ReferencePhoneNumber]      NVARCHAR (20)  NULL,
    [CountyResidenceID]         INT            NULL,
    [WishList]                  NVARCHAR (MAX) NULL,
    [ClothingRequested]         NVARCHAR (10)  NULL,
    [OtherAssistance]           NVARCHAR (10)  NULL,
    [AssistanceBy]              NVARCHAR (50)  NULL,
    [TagValue]                  NVARCHAR (50)  NULL,
    [tagnumber]                 NVARCHAR (50)  NULL,
    [AttendingEvent]            BIT            CONSTRAINT [DF_Request_AttendingEvent] DEFAULT ((1)) NULL,
    [OriginalTagNumber]         NVARCHAR (50)  NULL,
    [OriginalLocationID]        INT            NULL,
    [CGCountyID]                INT            NULL,
    [DOBExceptionSavedBy]       NVARCHAR (250) NULL,
    [DOBException]              NVARCHAR (300) NULL,
    [LastModifiedBy]            NVARCHAR (300) NULL,
    [PendingRequestID]          INT            NULL,
    [CurrentLocation]           NVARCHAR (MAX) NULL,
    [SendText]                  BIT            CONSTRAINT [DF_Request_SendText] DEFAULT ((0)) NULL,
    [rowversion]                ROWVERSION     NULL,
    [schoolgradetxt]            NVARCHAR (50)  NULL,
    [packedBy]                  NVARCHAR (50)  NULL,
    [AdditionalInfo]            NVARCHAR (MAX) NULL,
    CONSTRAINT [Request$PrimaryKey] PRIMARY KEY CLUSTERED ([RequestID] ASC),
    CONSTRAINT [FK_Request_EventLocation] FOREIGN KEY ([EventLocationID]) REFERENCES [dbo].[EventLocation] ([LocationID]),
    CONSTRAINT [FK_Request_EventLocation1] FOREIGN KEY ([OriginalLocationID]) REFERENCES [dbo].[EventLocation] ([LocationID]),
    CONSTRAINT [Request$AdultJobTypeRequest] FOREIGN KEY ([CompletionContactJobType]) REFERENCES [dbo].[AdultJobType] ([AdultJobTypeID]),
    CONSTRAINT [Request$AdultRequest] FOREIGN KEY ([RequestCompletedbyAdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [Request$AdultRequest1] FOREIGN KEY ([CGSecondaryAdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [Request$AdultRequest2] FOREIGN KEY ([GALAdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [Request$AdultRequest3] FOREIGN KEY ([SocialWorkerAdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [Request$AdultRequest4] FOREIGN KEY ([SponsorAdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [Request$BagPickupLocationRequest] FOREIGN KEY ([BagPickupLocation]) REFERENCES [dbo].[BagPickupLocation] ([PULocationID]),
    CONSTRAINT [Request$ChildRequest] FOREIGN KEY ([ChildID]) REFERENCES [dbo].[Child] ([ChildID]),
    CONSTRAINT [Request$ParticipationRequest] FOREIGN KEY ([ParticipationID]) REFERENCES [dbo].[Participation] ([ParticipationID]),
    CONSTRAINT [Request$RequestStatusRequest] FOREIGN KEY ([RequestStatusID]) REFERENCES [dbo].[RequestStatus] ([StatusID]),
    CONSTRAINT [Request$RequestTypeRequest] FOREIGN KEY ([RequestTypeID]) REFERENCES [dbo].[RequestType] ([RequestTypeID])
);


GO
CREATE NONCLUSTERED INDEX [Request$AdultJobTypeRequest]
    ON [dbo].[Request]([CompletionContactJobType] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$AdultRequest]
    ON [dbo].[Request]([RequestCompletedbyAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$AdultRequest1]
    ON [dbo].[Request]([CGSecondaryAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$AdultRequest2]
    ON [dbo].[Request]([GALAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$AdultRequest3]
    ON [dbo].[Request]([SocialWorkerAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$AdultRequest4]
    ON [dbo].[Request]([SponsorAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$BagofHopeAgeGroupID]
    ON [dbo].[Request]([BagofHopeAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$BagPickupLocationRequest]
    ON [dbo].[Request]([BagPickupLocation] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$BECID]
    ON [dbo].[Request]([BECID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$CampaignID]
    ON [dbo].[Request]([CampaignID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$CareGiverAdultID]
    ON [dbo].[Request]([CareGiverAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$CGSecondaryAdultID]
    ON [dbo].[Request]([CGSecondaryAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$ChildRequest]
    ON [dbo].[Request]([ChildID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$CoatSizeID]
    ON [dbo].[Request]([CoatSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$EmailID]
    ON [dbo].[Request]([EmailID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$GALAdultID]
    ON [dbo].[Request]([GALAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$GroupHomeID]
    ON [dbo].[Request]([GroupHomeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$ParticipationRequest]
    ON [dbo].[Request]([ParticipationID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$RequestChildID]
    ON [dbo].[Request]([ChildID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$RequestCompletedbyAdultID]
    ON [dbo].[Request]([RequestCompletedbyAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$RequestState]
    ON [dbo].[Request]([RequestStatusID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$RequestStatusRequest]
    ON [dbo].[Request]([RequestStatusID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$RequestTypeID]
    ON [dbo].[Request]([RequestTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$RequestTypeRequest]
    ON [dbo].[Request]([RequestTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$SeasonID]
    ON [dbo].[Request]([SeasonID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$SocialWorkerAdultID]
    ON [dbo].[Request]([SocialWorkerAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [Request$SponsorID]
    ON [dbo].[Request]([SponsorID] ASC);


GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   TRIGGER [dbo].[TR_AU_REQUEST]	ON  dbo.Request
   FOR DELETE,UPDATE
AS 
IF EXISTS ( SELECT 0 FROM Deleted )
	BEGIN
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN
			INSERT INTO [dbo].[AU_REQUEST]
					([RequestID],[RequestCompletedbyAdultID],[SocialWorkerAdultID],
					 [GALAdultID],[CareGiverAdultID],[ChildID],[ModifyDate],[Operation],LastModifiedBy)
				SELECT	[D].[RequestID],[D].[RequestCompletedbyAdultID],[D].[SocialWorkerAdultID],
						[D].[GALAdultID],[D].[CareGiverAdultID],[D].[ChildID],getdate(),'U',LastModifiedBy
					FROM deleted D
		END
	ELSE
		BEGIN
		INSERT INTO [dbo].[AU_REQUEST]
					([RequestID],[RequestCompletedbyAdultID],[SocialWorkerAdultID],
					 [GALAdultID],[CareGiverAdultID],[ChildID],[ModifyDate],[Operation],LastModifiedBy)
				SELECT	[D].[RequestID],[D].[RequestCompletedbyAdultID],[D].[SocialWorkerAdultID],
						[D].[GALAdultID],[D].[CareGiverAdultID],[D].[ChildID],getdate(),'D',LastModifiedBy
					FROM deleted D
		END
	END

GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultJobTypeRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$AdultJobTypeRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$AdultRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$AdultRequest1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$AdultRequest2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$AdultRequest3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$AdultRequest4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagofHopeAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$BagofHopeAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagPickupLocationRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$BagPickupLocationRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BECID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$BECID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CareGiverAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$CareGiverAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CGSecondaryAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$CGSecondaryAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$ChildRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CoatSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$CoatSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[EmailID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$EmailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[GALAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$GALAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ParticipationRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$ParticipationRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$RequestChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestCompletedbyAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$RequestCompletedbyAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestState]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$RequestState';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestStatusRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$RequestStatusRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$RequestTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestTypeRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$RequestTypeRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SocialWorkerAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$SocialWorkerAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SponsorID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'INDEX', @level2name = N'Request$SponsorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Current date by default', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[NeedbyDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'NeedbyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestCompletedbyAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestCompletedbyAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CompletionContactJobType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CompletionContactJobType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SocialWorkerAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'SocialWorkerAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[GALAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'GALAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CareGiverAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CareGiverAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ContactCG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ContactCG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CGSecondaryAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CGSecondaryAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildShirtSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildShirtSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildShirtSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildShirtSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildShirtComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildShirtComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildPantSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildPantSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildPantSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildPantSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildPantComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildPantComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildPajamaSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildPajamaSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildPajamaSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildPajamaSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildPajamaComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildPajamaComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildShoeSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildShoeSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildShoeSockSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildShoeSockSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildShoeSockComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildShoeSockComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildUnderSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildUnderSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildUndergarmentsSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildUndergarmentsSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildUndergarmentComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildUndergarmentComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[OutfitSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'OutfitSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[OutfitSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'OutfitSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[OutfitComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'OutfitComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[DiaperSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'DiaperSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildDiaperPullUpComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildDiaperPullUpComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[NeedCoat]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'NeedCoat';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CoatSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CoatSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CoatSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CoatSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CoatComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CoatComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildJeanAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildJeanAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildJeanSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildJeanSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[childJeancomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'childJeancomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[NeedShoes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'NeedShoes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ShoeComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ShoeComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BedSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BedSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[GeneralComments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'GeneralComments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AppointmentDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'AppointmentDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AppointmentTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'AppointmentTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SponsorAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'SponsorAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ReferralAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ReferralAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[MedicalForm]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'MedicalForm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[Waiver]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'Waiver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[DepositReceived]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'DepositReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[Serviced]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'serviced';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestStatusID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ClothingComments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ClothingComments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ContactHistory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ContactHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[InterviewCompleteCheck]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'InterviewCompleteCheck';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[InterviewCompleteDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'InterviewCompleteDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagofHopeAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BagofHopeAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagFilledDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BagFilledDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestClosedDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestClosedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagEmbroideryNo]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BagEmbroideryNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagPickupLocation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BagPickupLocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagEmbroiderColor]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BagEmbroiderColor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ValueNonInventoryItems]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ValueNonInventoryItems';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildSockSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildSockSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildSockSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildSockSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[EventLocationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'EventLocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagDeliveredDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BagDeliveredDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ParticipationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ParticipationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildSchoolGradeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChildSchoolGradeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[Delivered]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'Delivered';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AttendedBefore]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'AttendedBefore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestOtherAssistance]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestOtherAssistance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[OrgAssistedBy]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'OrgAssistedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestClothing]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'RequestClothing';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChristmasList]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ChristmasList';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[Exception]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'Exception';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ExceptionComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ParticipationComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SponsorID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'SponsorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[EmailID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'EmailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BECID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BECID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BedComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'BedComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[MedicineAtCamp]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'MedicineAtCamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[DiaperAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'DiaperAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[TeresaMComments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'TeresaMComments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[SockComment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'SockComment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[CreateDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ModifyDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'COLUMN', @level2name = N'ModifyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultJobTypeRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$AdultJobTypeRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$AdultRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$AdultRequest1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$AdultRequest2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$AdultRequest3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[AdultRequest4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$AdultRequest4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[BagPickupLocationRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$BagPickupLocationRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ChildRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$ChildRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[ParticipationRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$ParticipationRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestStatusRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$RequestStatusRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Request].[RequestTypeRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Request', @level2type = N'CONSTRAINT', @level2name = N'Request$RequestTypeRequest';

