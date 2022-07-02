CREATE TABLE [dbo].[LocationContact] (
    [LocationContactID]  INT          IDENTITY (1, 1) NOT NULL,
    [AdultID]            INT          NOT NULL,
    [LocationID]         INT          NOT NULL,
    [NotificationTypeID] INT          NOT NULL,
    [LocContactType]     VARCHAR (20) NULL,
    CONSTRAINT [PK_LocationContact] PRIMARY KEY CLUSTERED ([LocationContactID] ASC),
    CONSTRAINT [FK_LocationContact_Adult] FOREIGN KEY ([AdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [FK_LocationContact_BagPickupLocation] FOREIGN KEY ([LocationID]) REFERENCES [dbo].[BagPickupLocation] ([PULocationID]),
    CONSTRAINT [FK_LocationContact_ContactMethod] FOREIGN KEY ([NotificationTypeID]) REFERENCES [dbo].[ContactMethod] ([MethodID])
);

