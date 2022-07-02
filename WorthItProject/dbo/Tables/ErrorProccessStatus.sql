CREATE TABLE [dbo].[ErrorProccessStatus] (
    [processedID] INT           NOT NULL,
    [meaning]     NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ErrorProccessStatus] PRIMARY KEY CLUSTERED ([processedID] ASC)
);

