CREATE TABLE [dbo].[AU_CabinDetail] (
    [AU_CabinDetailID] INT            IDENTITY (1, 1) NOT NULL,
    [CabinDetailID]    INT            NULL,
    [CabinID]          INT            NULL,
    [ChildID]          INT            NULL,
    [CampaignID]       INT            NULL,
    [Description]      NVARCHAR (255) NULL,
    [ModifiedBy]       NVARCHAR (50)  NULL,
    [ModifyDate]       DATETIME2 (7)  NOT NULL,
    [Active]           BIT            NULL,
    [Operation]        NCHAR (10)     NULL,
    CONSTRAINT [AU_CabinDetail$PrimaryKey] PRIMARY KEY CLUSTERED ([AU_CabinDetailID] ASC)
);

