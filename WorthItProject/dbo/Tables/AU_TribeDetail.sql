CREATE TABLE [dbo].[AU_TribeDetail] (
    [AU_TribeDetailID] INT            IDENTITY (1, 1) NOT NULL,
    [TribeDetailID]    INT            NOT NULL,
    [TribeID]          INT            NULL,
    [CabinID]          INT            NULL,
    [Description]      NVARCHAR (255) NULL,
    [campaignID]       INT            NULL,
    [ModifiedBy]       NVARCHAR (50)  NULL,
    [modifieddate]     DATETIME2 (7)  NULL,
    [Active]           BIT            NULL,
    [Operation]        NCHAR (10)     NULL,
    CONSTRAINT [AU_TribeDetail$PrimaryKey] PRIMARY KEY CLUSTERED ([AU_TribeDetailID] ASC)
);

