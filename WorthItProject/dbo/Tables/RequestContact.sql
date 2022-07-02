CREATE TABLE [dbo].[RequestContact] (
    [RequestID]      INT NOT NULL,
    [AdultID]        INT NOT NULL,
    [PhNoID]         INT NULL,
    [EmailAddressID] INT NULL,
    CONSTRAINT [PK_RequestContact] PRIMARY KEY CLUSTERED ([RequestID] ASC),
    CONSTRAINT [FK_RequestContact_Adult] FOREIGN KEY ([AdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [FK_RequestContact_EmailAddress] FOREIGN KEY ([EmailAddressID]) REFERENCES [dbo].[EmailAddress] ([EAID]),
    CONSTRAINT [FK_RequestContact_PhoneNumber] FOREIGN KEY ([PhNoID]) REFERENCES [dbo].[PhoneNumber] ([PhNoID]),
    CONSTRAINT [FK_RequestContact_Request] FOREIGN KEY ([RequestID]) REFERENCES [dbo].[Request] ([RequestID])
);

