CREATE TABLE [dbo].[EmailRow] (
    [EmailRowID]        INT           IDENTITY (10000, 1) NOT NULL,
    [EmailId]           INT           NOT NULL,
    [EmailRowText]      VARCHAR (MAX) NULL,
    [EmailRowLabel]     VARCHAR (MAX) NULL,
    [EmailRowValue]     VARCHAR (MAX) NULL,
    [EmailRowProcessed] INT           CONSTRAINT [DF_EmailRow_EmailRowProcessed] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_EmailRow] PRIMARY KEY CLUSTERED ([EmailRowID] ASC)
);

