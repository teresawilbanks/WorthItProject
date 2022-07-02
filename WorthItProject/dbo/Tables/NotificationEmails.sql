CREATE TABLE [dbo].[NotificationEmails] (
    [EmailtoSendID]  INT            IDENTITY (1, 1) NOT NULL,
    [RequestID]      INT            NOT NULL,
    [CCName]         NVARCHAR (255) NOT NULL,
    [CCemailAddress] NVARCHAR (255) NOT NULL,
    [EmailMessage]   NVARCHAR (MAX) NOT NULL,
    [RequestType]    NVARCHAR (50)  NOT NULL,
    [SentBool]       BIT            CONSTRAINT [DF_NotificationEmails_SentBool] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_NotificationEmails] PRIMARY KEY CLUSTERED ([EmailtoSendID] ASC)
);

