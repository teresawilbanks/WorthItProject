CREATE TABLE [dbo].[Email] (
    [EmailId]          INT           IDENTITY (2900, 1) NOT NULL,
    [MessageId]        VARCHAR (50)  NULL,
    [FromEmailAddress] VARCHAR (256) NULL,
    [Date]             DATETIME2 (7) NULL,
    [Subject]          VARCHAR (256) NULL,
    [Body]             VARCHAR (MAX) NULL,
    [EmailTypeID]      INT           NULL,
    [Processed]        BIT           CONSTRAINT [DF_Email_Processed] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED ([EmailId] ASC)
);

