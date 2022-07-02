CREATE TABLE [dbo].[ArchieveTagNumber] (
    [TagID]           INT        IDENTITY (1, 1) NOT NULL,
    [TagNumber]       INT        NOT NULL,
    [TagSection]      NCHAR (10) CONSTRAINT [DF_TagNumber_TagSection] DEFAULT ('z') NOT NULL,
    [CampaignID]      INT        NOT NULL,
    [EventLocationID] INT        NOT NULL,
    [RequestID]       INT        NOT NULL,
    CONSTRAINT [UC_tag] UNIQUE NONCLUSTERED ([TagNumber] ASC, [TagSection] ASC, [CampaignID] ASC, [EventLocationID] ASC)
);

