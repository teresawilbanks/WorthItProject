CREATE TABLE [dbo].[AU_RequestGroup] (
    [AU_RequestGroupID] INT            IDENTITY (1, 1) NOT NULL,
    [EmailID]           INT            NULL,
    [RequestGroup]      NVARCHAR (255) NULL,
    [BagPickUpLocation] INT            NULL,
    [ModifyDate]        DATETIME2 (0)  NOT NULL,
    [Operation]         NCHAR (10)     NULL,
    [SSMA_TimeStamp]    ROWVERSION     NOT NULL,
    [lastModifiedBy]    NVARCHAR (300) NULL
);

