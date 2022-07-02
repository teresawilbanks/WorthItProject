CREATE TABLE [dbo].[TextsToSend] (
    [TextID]         INT            IDENTITY (1, 1) NOT NULL,
    [RequestID]      INT            NULL,
    [PhoneNumber]    NVARCHAR (15)  NOT NULL,
    [TextMsg]        NVARCHAR (MAX) NOT NULL,
    [SentBool]       INT            CONSTRAINT [DF_TextsToSend_SentBool] DEFAULT ((0)) NOT NULL,
    [flag]           NVARCHAR (MAX) NULL,
    [createdate]     DATETIME2 (7)  CONSTRAINT [DF_TextsToSend_createdate] DEFAULT (getdate()) NOT NULL,
    [StatusCallBack] NVARCHAR (MAX) NULL,
    [ErrorProcessed] INT            CONSTRAINT [DF_TextsToSend_ErrorProcessed] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_TextsToSend] PRIMARY KEY CLUSTERED ([TextID] ASC),
    CONSTRAINT [FK_TextsToSend_ErrorProccessStatus] FOREIGN KEY ([ErrorProcessed]) REFERENCES [dbo].[ErrorProccessStatus] ([processedID])
);

