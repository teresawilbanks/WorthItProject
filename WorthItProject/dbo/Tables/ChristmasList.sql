CREATE TABLE [dbo].[ChristmasList] (
    [ChristmasListID] INT          IDENTITY (1, 1) NOT NULL,
    [RequestID]       INT          NOT NULL,
    [Item]            VARCHAR (50) NULL,
    CONSTRAINT [PK_ChristmasList] PRIMARY KEY CLUSTERED ([ChristmasListID] ASC)
);

