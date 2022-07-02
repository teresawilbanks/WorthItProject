CREATE TABLE [dbo].[tempPendingRequest] (
    [EmailID]                        INT            DEFAULT ((0)) NULL,
    [emailTypeID]                    INT            NULL,
    [Processed]                      BIT            DEFAULT ((0)) NULL,
    [PendingRequestID]               INT            IDENTITY (1, 1) NOT NULL,
    [ptRequestType]                  NVARCHAR (255) NULL,
    [RequestDate]                    DATETIME2 (0)  NULL,
    [NeedbyDate]                     DATETIME2 (0)  NULL,
    [ptRCB]                          NVARCHAR (255) NULL,
    [RCBfname]                       NVARCHAR (255) NULL,
    [RCBLname]                       NVARCHAR (255) NULL,
    [ptRCBRelation]                  NVARCHAR (255) NULL,
    [ptRCBemail]                     NVARCHAR (255) NULL,
    [ptRCBPhoneNumber]               NVARCHAR (255) NULL,
    [ptContactWhenComplete]          NVARCHAR (255) NULL,
    [ptSW]                           NVARCHAR (255) NULL,
    [SWfname]                        NVARCHAR (255) NULL,
    [SWLname]                        NVARCHAR (255) NULL,
    [ptSWcounty]                     NVARCHAR (255) NULL,
    [ptswPhoneNumber]                NVARCHAR (255) NULL,
    [ptGAL]                          NVARCHAR (255) NULL,
    [GALfname]                       NVARCHAR (255) NULL,
    [GALLname]                       NVARCHAR (255) NULL,
    [ptgalPhoneNumber]               NVARCHAR (255) NULL,
    [ptcaregiver]                    NVARCHAR (255) NULL,
    [CGfname]                        NVARCHAR (255) NULL,
    [CGLname]                        NVARCHAR (255) NULL,
    [ptCGRelation]                   NVARCHAR (255) NULL,
    [ptCGPhoneNumber]                NVARCHAR (255) NULL,
    [ptcgemail]                      NVARCHAR (255) NULL,
    [ptcontactCG]                    NVARCHAR (255) NULL,
    [ptcgLicensingAgency]            NVARCHAR (255) NULL,
    [ptChildFName]                   NVARCHAR (255) NULL,
    [ptchildLI]                      NVARCHAR (255) NULL,
    [ptplacementtype]                NVARCHAR (255) NULL,
    [ChildDOB]                       DATETIME2 (0)  DEFAULT ('1/1/1111') NULL,
    [ptChildage]                     NVARCHAR (255) NULL,
    [ptChildGender]                  NVARCHAR (255) NULL,
    [ptChildEthnicity]               NVARCHAR (255) NULL,
    [ptSiblingsNames]                NVARCHAR (255) NULL,
    [ptSameHome]                     NVARCHAR (255) NULL,
    [ptChildShirtSize]               NVARCHAR (255) NULL,
    [ptChildPantSize]                NVARCHAR (255) NULL,
    [ptChildShoeSockSize]            NVARCHAR (255) NULL,
    [ptChildUGSize]                  NVARCHAR (255) NULL,
    [ptChildDiapers]                 NVARCHAR (255) NULL,
    [ptComments]                     NVARCHAR (MAX) NULL,
    [ptAddtlInfo]                    NVARCHAR (MAX) NULL,
    [ptChild2FirstName]              NVARCHAR (255) NULL,
    [ptChild2LastInitial]            NVARCHAR (255) NULL,
    [ptChild2PlacementType]          NVARCHAR (255) NULL,
    [ptChild2Age]                    NVARCHAR (255) NULL,
    [Child2DOB]                      DATETIME2 (0)  DEFAULT ('1/1/1111') NULL,
    [ptChild2Gender]                 NVARCHAR (255) NULL,
    [ptChild2Ethnicity]              NVARCHAR (255) NULL,
    [ptChild2SiblingsNames]          NVARCHAR (255) NULL,
    [ptChild2SameHome]               NVARCHAR (255) NULL,
    [qryPendingDataPlainText_status] NVARCHAR (100) NULL,
    [ProcessedDate]                  DATETIME2 (0)  NULL,
    [CGcount]                        INT            NULL,
    [CountChild]                     INT            NULL,
    [CountChild2]                    INT            NULL,
    [GALcount]                       INT            NULL,
    [RCBcount]                       INT            NULL,
    [SWcount]                        INT            NULL,
    [RCBID]                          FLOAT (53)     NULL,
    [SWID]                           FLOAT (53)     NULL,
    [GALID]                          FLOAT (53)     NULL,
    [CGID]                           FLOAT (53)     NULL,
    [CHILDID]                        FLOAT (53)     NULL,
    [PendingTypeID]                  INT            DEFAULT ((0)) NULL,
    [CompleteContact]                NVARCHAR (255) NULL,
    [status]                         INT            DEFAULT ((3)) NULL,
    [ChildGender]                    INT            DEFAULT ((0)) NULL,
    [ChildEthnicity]                 INT            DEFAULT ((0)) NULL,
    [ChildPlacementType]             INT            DEFAULT ((0)) NULL,
    [SWCountyID]                     INT            DEFAULT ((0)) NULL,
    [ChildClothingID]                INT            DEFAULT ((0)) NULL,
    [GroupHomeID]                    INT            DEFAULT ((32)) NULL,
    [BagPickUpLocationID]            INT            DEFAULT ((1)) NULL,
    [BedType1]                       NVARCHAR (255) NULL,
    [BedType2]                       NVARCHAR (255) NULL,
    [BECID]                          INT            DEFAULT ((0)) NULL,
    [ShirtAgeGroupID]                NVARCHAR (255) NULL,
    [shirtSizeID]                    NVARCHAR (255) NULL,
    [PantAgeGroupID]                 NVARCHAR (255) NULL,
    [PantSizeID]                     NVARCHAR (255) NULL,
    [JeanAgeGroupID]                 NVARCHAR (255) NULL,
    [JeanSizeID]                     NVARCHAR (255) NULL,
    [UgAgeGroupID]                   NVARCHAR (255) NULL,
    [UGSizeID]                       NVARCHAR (255) NULL,
    [PJAgeGroupID]                   NVARCHAR (255) NULL,
    [PJSizeID]                       NVARCHAR (255) NULL,
    [SocksAgeGroupID]                NVARCHAR (255) NULL,
    [SocksSizeID]                    NVARCHAR (255) NULL,
    [OutfitAgeGroupID]               NVARCHAR (255) NULL,
    [OutfitSizeID]                   NVARCHAR (255) NULL,
    [ShoesAgeGroupID]                NVARCHAR (255) NULL,
    [ShoesSizeID]                    NVARCHAR (255) NULL,
    [CoatAgeGroupID]                 NVARCHAR (255) NULL,
    [CoatSizeID]                     NVARCHAR (255) NULL,
    [DiaperSizeID]                   NVARCHAR (255) NULL,
    [coatcomment]                    NVARCHAR (255) NULL,
    [outfitcomment]                  NVARCHAR (255) NULL,
    [shoecomment]                    NVARCHAR (255) NULL,
    [jeancomment]                    NVARCHAR (255) NULL,
    [pjcomment]                      NVARCHAR (255) NULL,
    [bagofhopeagegroupID]            NVARCHAR (255) NULL,
    [SeasonID]                       NVARCHAR (255) NULL,
    [EmbroideryColor]                NVARCHAR (255) NULL,
    [generalclothingcomment]         NVARCHAR (255) NULL,
    [BagEmbNumber]                   NVARCHAR (255) NULL,
    [CampaignID]                     INT            DEFAULT ((0)) NULL,
    [nickname]                       NVARCHAR (255) NULL,
    [schoolgrade]                    NVARCHAR (255) NULL,
    [residingaddress]                NVARCHAR (MAX) NULL,
    [Notattendcamp]                  NVARCHAR (255) NULL,
    [mailingaddress]                 NVARCHAR (MAX) NULL,
    [howlonginhome]                  NVARCHAR (255) NULL,
    [numberofplacement]              NVARCHAR (255) NULL,
    [lengthcare]                     NVARCHAR (255) NULL,
    [therapeuticcare]                NVARCHAR (255) NULL,
    [emotionalage]                   NVARCHAR (255) NULL,
    [medication]                     NVARCHAR (255) NULL,
    [receivingtherapy]               NVARCHAR (255) NULL,
    [explain]                        NVARCHAR (MAX) NULL,
    [counselingagency]               NVARCHAR (255) NULL,
    [counselorname]                  NVARCHAR (255) NULL,
    [counselorphonenumber]           NVARCHAR (255) NULL,
    [hinderexperience]               NVARCHAR (255) NULL,
    [aggressiveness]                 NVARCHAR (255) NULL,
    [biting]                         NVARCHAR (255) NULL,
    [eatingdisorder]                 NVARCHAR (255) NULL,
    [hyperactive]                    NVARCHAR (255) NULL,
    [hitting]                        NVARCHAR (255) NULL,
    [lying]                          NVARCHAR (255) NULL,
    [runsaway]                       NVARCHAR (255) NULL,
    [sexualbehavior]                 NVARCHAR (255) NULL,
    [steals]                         NVARCHAR (255) NULL,
    [tantrums]                       NVARCHAR (255) NULL,
    [withdrawn]                      NVARCHAR (255) NULL,
    [additionalbehavior]             NVARCHAR (MAX) NULL,
    [medicationreason]               NVARCHAR (MAX) NULL,
    [ChildFullName]                  NVARCHAR (55)  NULL,
    [DiaperAgeGroupID]               INT            DEFAULT ((0)) NULL,
    [EventLocationID]                INT            DEFAULT ((0)) NULL,
    [TeresaMComments]                NVARCHAR (MAX) NULL,
    [ReqSchoolGradeID]               INT            DEFAULT ((0)) NULL,
    [ptEventLocation]                NVARCHAR (255) NULL,
    [EmailDateTime]                  DATETIME2 (0)  NULL,
    [EmailSubject]                   NVARCHAR (255) NULL,
    [SSMA_TimeStamp]                 ROWVERSION     NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$bagofhopeagegroupID]
    ON [dbo].[tempPendingRequest]([bagofhopeagegroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$BECID]
    ON [dbo].[tempPendingRequest]([BECID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$CGID]
    ON [dbo].[tempPendingRequest]([CGID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$ChildClothingID]
    ON [dbo].[tempPendingRequest]([ChildClothingID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$CoatAgeGroupID]
    ON [dbo].[tempPendingRequest]([CoatAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$CoatSizeID]
    ON [dbo].[tempPendingRequest]([CoatSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$DiaperSizeID]
    ON [dbo].[tempPendingRequest]([DiaperSizeID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [tempPendingRequest$EmailID]
    ON [dbo].[tempPendingRequest]([EmailID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$emailTypeID]
    ON [dbo].[tempPendingRequest]([emailTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$GALID]
    ON [dbo].[tempPendingRequest]([GALID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$GroupHomeID]
    ON [dbo].[tempPendingRequest]([GroupHomeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$JeanAgeGroupID]
    ON [dbo].[tempPendingRequest]([JeanAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$JeanSizeID]
    ON [dbo].[tempPendingRequest]([JeanSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$OutfitAgeGroupID]
    ON [dbo].[tempPendingRequest]([OutfitAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$OutfitSizeID]
    ON [dbo].[tempPendingRequest]([OutfitSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$PantAgeGroupID]
    ON [dbo].[tempPendingRequest]([PantAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$PantSizeID]
    ON [dbo].[tempPendingRequest]([PantSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$PendingRequestID]
    ON [dbo].[tempPendingRequest]([PendingRequestID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$PJAgeGroupID]
    ON [dbo].[tempPendingRequest]([PJAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$PJSizeID]
    ON [dbo].[tempPendingRequest]([PJSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$RCBID]
    ON [dbo].[tempPendingRequest]([RCBID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$SeasonID]
    ON [dbo].[tempPendingRequest]([SeasonID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$ShirtAgeGroupID]
    ON [dbo].[tempPendingRequest]([ShirtAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$shirtSizeID]
    ON [dbo].[tempPendingRequest]([shirtSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$ShoesAgeGroupID]
    ON [dbo].[tempPendingRequest]([ShoesAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$ShoesSizeID]
    ON [dbo].[tempPendingRequest]([ShoesSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$SocksAgeGroupID]
    ON [dbo].[tempPendingRequest]([SocksAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$SocksSizeID]
    ON [dbo].[tempPendingRequest]([SocksSizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$SWCountyID]
    ON [dbo].[tempPendingRequest]([SWCountyID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$SWID]
    ON [dbo].[tempPendingRequest]([SWID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$UgAgeGroupID]
    ON [dbo].[tempPendingRequest]([UgAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [tempPendingRequest$UGSizeGID]
    ON [dbo].[tempPendingRequest]([UGSizeID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[bagofhopeagegroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$bagofhopeagegroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[BECID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$BECID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CGID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$CGID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildClothingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$ChildClothingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CoatAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$CoatAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CoatSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$CoatSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[DiaperSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$DiaperSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[EmailID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$EmailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[emailTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$emailTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GALID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$GALID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[JeanAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$JeanAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[JeanSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$JeanSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[OutfitAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$OutfitAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[OutfitSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$OutfitSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PantAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$PantAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PantSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$PantSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PendingRequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$PendingRequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PJAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$PJAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PJSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$PJSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[RCBID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$RCBID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ShirtAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$ShirtAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[shirtSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$shirtSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ShoesAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$ShoesAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ShoesSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$ShoesSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SocksAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$SocksAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SocksSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$SocksSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWCountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$SWCountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$SWID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[UgAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$UgAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[UGSizeGID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'INDEX', @level2name = N'tempPendingRequest$UGSizeGID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[EmailID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'EmailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[emailTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'emailTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[Processed]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'Processed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PendingRequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'PendingRequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptRequestType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptRequestType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[RequestDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'RequestDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[NeedbyDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'NeedbyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptRCB]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptRCB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[RCBfname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'RCBfname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[RCBLname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'RCBLname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptRCBRelation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptRCBRelation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptRCBemail]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptRCBemail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptRCBPhoneNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptRCBPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptContactWhenComplete]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptContactWhenComplete';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptSW]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptSW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWfname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SWfname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWLname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SWLname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptSWcounty]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptSWcounty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptswPhoneNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptswPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptGAL]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptGAL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GALfname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'GALfname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GALLname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'GALLname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptgalPhoneNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptgalPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptcaregiver]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptcaregiver';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CGfname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CGfname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CGLname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CGLname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptCGRelation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptCGRelation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptCGPhoneNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptCGPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptcgemail]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptcgemail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptcontactCG]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptcontactCG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptcgLicensingAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptcgLicensingAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildFName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildFName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptchildLI]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptchildLI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptplacementtype]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptplacementtype';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildDOB]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ChildDOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildGender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildGender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildEthnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptSiblingsNames]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptSiblingsNames';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptSameHome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptSameHome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildShirtSize]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildShirtSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildPantSize]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildPantSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildShoeSockSize]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildShoeSockSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildUGSize]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildUGSize';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChildDiapers]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChildDiapers';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptComments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptComments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptAddtlInfo]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptAddtlInfo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2LastInitial]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2LastInitial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2PlacementType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2PlacementType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2Age]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2Age';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[Child2DOB]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'Child2DOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2Gender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2Ethnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2SiblingsNames]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2SiblingsNames';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptChild2SameHome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptChild2SameHome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[qryPendingDataPlainText_status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'qryPendingDataPlainText_status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ProcessedDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ProcessedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CGcount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CGcount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CountChild]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CountChild';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CountChild2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CountChild2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GALcount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'GALcount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[RCBcount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'RCBcount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWcount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SWcount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[RCBID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'RCBID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SWID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GALID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'GALID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CGID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CGID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CHILDID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CHILDID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PendingTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'PendingTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CompleteContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CompleteContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildGender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ChildGender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildEthnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ChildEthnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildPlacementType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ChildPlacementType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SWCountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SWCountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildClothingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ChildClothingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[BagPickUpLocationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'BagPickUpLocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[BedType1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'BedType1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[BedType2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'BedType2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[BECID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'BECID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ShirtAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ShirtAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[shirtSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'shirtSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PantAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'PantAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PantSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'PantSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[JeanAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'JeanAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[JeanSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'JeanSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[UgAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'UgAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[UGSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'UGSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PJAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'PJAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[PJSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'PJSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SocksAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SocksAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SocksSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SocksSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[OutfitAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'OutfitAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[OutfitSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'OutfitSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ShoesAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ShoesAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ShoesSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ShoesSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CoatAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CoatAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CoatSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CoatSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[DiaperSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'DiaperSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[coatcomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'coatcomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[outfitcomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'outfitcomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[shoecomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'shoecomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[jeancomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'jeancomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[pjcomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'pjcomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[bagofhopeagegroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'bagofhopeagegroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[EmbroideryColor]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'EmbroideryColor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[generalclothingcomment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'generalclothingcomment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[BagEmbNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'BagEmbNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[nickname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'nickname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[schoolgrade]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'schoolgrade';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[residingaddress]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'residingaddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[Notattendcamp]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'Notattendcamp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[mailingaddress]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'mailingaddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[howlonginhome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'howlonginhome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[numberofplacement]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'numberofplacement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[lengthcare]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'lengthcare';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[therapeuticcare]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'therapeuticcare';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[emotionalage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'emotionalage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[medication]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'medication';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[receivingtherapy]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'receivingtherapy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[explain]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'explain';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[counselingagency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'counselingagency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[counselorname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'counselorname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[counselorphonenumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'counselorphonenumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[hinderexperience]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'hinderexperience';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[aggressiveness]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'aggressiveness';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[biting]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'biting';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[eatingdisorder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'eatingdisorder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[hyperactive]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'hyperactive';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[hitting]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'hitting';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[lying]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'lying';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[runsaway]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'runsaway';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[sexualbehavior]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'sexualbehavior';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[steals]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'steals';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[tantrums]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'tantrums';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[withdrawn]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'withdrawn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[additionalbehavior]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'additionalbehavior';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[medicationreason]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'medicationreason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ChildFullName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ChildFullName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[DiaperAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'DiaperAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[EventLocationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'EventLocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[TeresaMComments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'TeresaMComments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ReqSchoolGradeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ReqSchoolGradeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[ptEventLocation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'ptEventLocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[EmailDateTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'EmailDateTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tempPendingRequest].[EmailSubject]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tempPendingRequest', @level2type = N'COLUMN', @level2name = N'EmailSubject';

