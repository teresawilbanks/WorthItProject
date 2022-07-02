CREATE TABLE [dbo].[tempRequest] (
    [PendingRequestID]        INT            NOT NULL,
    [EMailID]                 INT            NULL,
    [EmailTypeID]             INT            NULL,
    [RequestType]             VARCHAR (50)   NULL,
    [RequestTypeID]           SMALLINT       NULL,
    [RequestDate]             DATETIME2 (7)  NULL,
    [NeedbyDate]              DATETIME2 (7)  NULL,
    [RequestCompletedby]      VARCHAR (100)  NULL,
    [RCBID]                   SMALLINT       NULL,
    [RCBFName]                NCHAR (50)     NULL,
    [RCBLName]                NVARCHAR (50)  NULL,
    [RCBEmail]                VARCHAR (100)  NULL,
    [RCBRelation]             VARCHAR (50)   NULL,
    [RCBPhoneNumber]          VARCHAR (50)   NULL,
    [ContactWhenComplete]     VARCHAR (50)   NULL,
    [CompletionContactTypeID] SMALLINT       NULL,
    [SocialWorker]            VARCHAR (100)  NULL,
    [SWFName]                 NCHAR (50)     NULL,
    [SWLName]                 NCHAR (50)     NULL,
    [SWID]                    SMALLINT       NULL,
    [SWCounty]                VARCHAR (100)  NULL,
    [SWCountyID]              SMALLINT       NULL,
    [SWPhoneNumber]           VARCHAR (50)   NULL,
    [GAL]                     VARCHAR (100)  NULL,
    [GALFName]                NCHAR (50)     NULL,
    [GALLName]                NCHAR (50)     NULL,
    [GALID]                   SMALLINT       NULL,
    [GALPhoneNumber]          VARCHAR (50)   NULL,
    [CareGiver]               VARCHAR (100)  NULL,
    [CGID]                    SMALLINT       NULL,
    [CGFName]                 NCHAR (50)     NULL,
    [CGLName]                 NCHAR (50)     NULL,
    [CGRelation]              VARCHAR (50)   NULL,
    [CGPlacementTypeID]       SMALLINT       NULL,
    [CGPhoneNumber]           VARCHAR (50)   NULL,
    [txtRecText]              NCHAR (10)     NULL,
    [RecText]                 BIT            NULL,
    [CGEmail]                 VARCHAR (100)  NULL,
    [CGCountyID]              INT            NULL,
    [CGCounty]                NVARCHAR (MAX) NULL,
    [ContactCareGiver]        VARCHAR (5)    NULL,
    [ContactCG]               BIT            CONSTRAINT [DF_tempRequest_ContactCG] DEFAULT ((1)) NULL,
    [CGLicensingAgency]       VARCHAR (100)  NULL,
    [CGLicensingAgencyID]     SMALLINT       NULL,
    [GroupHomeID]             INT            NULL,
    [ChildID]                 SMALLINT       NULL,
    [ChildFirstName]          VARCHAR (100)  NULL,
    [ChildLastInitial]        VARCHAR (100)  NULL,
    [ChildDOB]                DATE           NULL,
    [ChildGender]             VARCHAR (50)   NULL,
    [GenderID]                INT            NULL,
    [ChildEthnicity]          VARCHAR (50)   NULL,
    [RaceID]                  SMALLINT       NULL,
    [PlacementType]           VARCHAR (50)   NULL,
    [ChildPlacementTypeID]    SMALLINT       NULL,
    [ChildAge]                VARCHAR (50)   NULL,
    [SiblingsNames]           VARCHAR (250)  NULL,
    [SameHome]                VARCHAR (5)    NULL,
    [ChildShirtSize]          VARCHAR (100)  NULL,
    [ChildPantSize]           VARCHAR (100)  NULL,
    [ChildShoeSockSize]       VARCHAR (100)  NULL,
    [ChildUGSize]             VARCHAR (100)  NULL,
    [ChildDiapers]            VARCHAR (100)  NULL,
    [AddtlInfo]               VARCHAR (MAX)  NULL,
    [Comments]                NVARCHAR (MAX) NULL,
    [ChildID2]                INT            NULL,
    [Child2FirstName]         VARCHAR (100)  NULL,
    [Child2LastInitial]       VARCHAR (10)   NULL,
    [Child2PlacementID]       INT            NULL,
    [Child2PlacementType]     VARCHAR (50)   NULL,
    [Child2Age]               VARCHAR (50)   NULL,
    [Child2DOB]               DATETIME2 (7)  NULL,
    [Child2GenderID]          INT            NULL,
    [Child2Gender]            VARCHAR (10)   NULL,
    [Child2EthnicityID]       INT            NULL,
    [Child2Ethnicity]         VARCHAR (50)   NULL,
    [Child2SiblingsNames]     VARCHAR (100)  NULL,
    [Child2SameHome]          VARCHAR (5)    NULL,
    [Processed]               INT            CONSTRAINT [DF_tempRequest_Processed] DEFAULT ((0)) NOT NULL,
    [Status]                  INT            NULL,
    [ProcessedDate]           DATETIME2 (7)  NULL,
    [BedType1]                VARCHAR (50)   NULL,
    [BedType2]                VARCHAR (50)   NULL,
    [Nickname]                NCHAR (20)     NULL,
    [SchoolGrade]             NCHAR (100)    NULL,
    [ResidingAddress]         NCHAR (300)    NULL,
    [MailingAddress]          NCHAR (300)    NULL,
    [SWEmail]                 NCHAR (100)    NULL,
    [EventLocation]           NCHAR (100)    NULL,
    [EventLocationID]         SMALLINT       CONSTRAINT [DF_tempRequest_EventLocationID] DEFAULT ((1)) NULL,
    [EmailDateTime]           DATETIME2 (7)  NULL,
    [EmailSubject]            NCHAR (200)    NULL,
    [LOTFormNumber]           INT            NULL,
    [BagEmbroiderCompany]     INT            NULL,
    [BagNumber]               NCHAR (10)     NULL,
    [FormPickUpLocation]      NVARCHAR (250) NULL,
    [BagPickUpLocation]       INT            NULL,
    [EmbroideryColor]         NCHAR (50)     NULL,
    [SeasonID]                INT            NULL,
    [BoHAgeGroupID]           INT            NULL,
    [ShirtSizeAgeGroupID]     INT            NULL,
    [ShirtSizeID]             INT            NULL,
    [PantAgeGroupID]          INT            NULL,
    [PantSizeID]              INT            NULL,
    [JeanAgeGroupID]          INT            NULL,
    [JeanSizeID]              INT            NULL,
    [JeanComment]             NVARCHAR (250) NULL,
    [OutfitSizeGroupID]       INT            NULL,
    [OutfitSizeID]            INT            NULL,
    [OutfitComment]           NVARCHAR (250) NULL,
    [PajamaAgeGroupID]        INT            NULL,
    [PajamaSizeID]            INT            NULL,
    [PajamaComment]           NVARCHAR (250) NULL,
    [UnderwearAgeGroupID]     INT            NULL,
    [UnderwearSizeID]         INT            NULL,
    [SockAgeGroupID]          INT            NULL,
    [SockSizeID]              INT            NULL,
    [SockComment]             NVARCHAR (250) NULL,
    [ShoeAgeGroupID]          INT            NULL,
    [ShoeSizeID]              INT            NULL,
    [DiaperAgeGroupID]        INT            NULL,
    [DiaperSizeID]            INT            NULL,
    [CoatAgeGroupID]          INT            NULL,
    [CoatSizeID]              INT            NULL,
    [CoatComment]             NVARCHAR (250) NULL,
    [GeneralClothingComment]  NVARCHAR (MAX) NULL,
    [TeresaSpecComment]       NVARCHAR (MAX) NULL,
    [ReferenceName]           NVARCHAR (50)  NULL,
    [ReferenceTitle]          NVARCHAR (50)  NULL,
    [ReferencePhoneNumber]    NCHAR (20)     NULL,
    [CountyCurrentResidence]  NVARCHAR (50)  NULL,
    [CountyResidenceID]       INT            NULL,
    [OtherAssistance]         NCHAR (10)     NULL,
    [Assistanceby]            NVARCHAR (250) NULL,
    [HaveCurrentSW]           NVARCHAR (10)  NULL,
    [WishList]                NVARCHAR (MAX) NULL,
    [ClothingRequested]       NVARCHAR (10)  NULL,
    [AttendedBefore]          NVARCHAR (10)  NULL,
    [CampaignID]              INT            NULL,
    [times_stamp]             ROWVERSION     NOT NULL,
    [childlastname]           NVARCHAR (55)  NULL,
    [requestgroup]            INT            NULL,
    CONSTRAINT [PK_tempRequest] PRIMARY KEY CLUSTERED ([PendingRequestID] ASC)
);


GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Trigger [dbo].[TR_AU_RequestGroup]	ON  [dbo].[TempRequest] 
   FOR DELETE,UPDATE
AS 
IF (UPDATE (RequestGroup))
Begin

IF EXISTS ( SELECT 0 FROM Deleted )
	BEGIN
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN
			INSERT INTO dbo.AU_RequestGroup 
						(EmailID, requestgroup, bagpickuplocation, ModifyDate, operation)
					SELECT	D.EmailID, d.RequestGroup, d.BagPickupLocation,GETDATE(), 'u'
					FROM	Deleted D
		END
	ELSE
		BEGIN
			INSERT INTO dbo.AU_RequestGroup 
						(EmailID, requestgroup, bagpickuplocation, ModifyDate, operation)
					SELECT	D.EmailID, d.RequestGroup, d.BagPickupLocation,GETDATE(), 'u'
					FROM	Deleted D
		END
	END
END
