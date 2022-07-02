CREATE TABLE [dbo].[AU_REQUESTDETAILS] (
    [AuditID]      INT           IDENTITY (1, 1) NOT NULL,
    [LineID]       INT           NOT NULL,
    [RequestID]    INT           NOT NULL,
    [ProductID]    INT           NOT NULL,
    [OrderQty]     INT           NOT NULL,
    [lasteditdate] DATETIME2 (7) CONSTRAINT [DF_AU_RequestDetails_lasteditdate] DEFAULT (getdate()) NOT NULL,
    [Operation]    NCHAR (10)    NULL
);

