CREATE TABLE [dbo].[AU_REQUEST] (
    [AU_REQUESTID]              INT            IDENTITY (1, 1) NOT NULL,
    [RequestID]                 INT            NULL,
    [RequestCompletedbyAdultID] INT            NULL,
    [SocialWorkerAdultID]       INT            NULL,
    [GALAdultID]                INT            NULL,
    [CareGiverAdultID]          INT            NULL,
    [ChildID]                   INT            NULL,
    [ModifyDate]                DATETIME2 (0)  NULL,
    [Operation]                 NCHAR (10)     NULL,
    [LastModifiedBy]            NVARCHAR (300) NULL,
    CONSTRAINT [PK_AU_REQUEST] PRIMARY KEY CLUSTERED ([AU_REQUESTID] ASC)
);

