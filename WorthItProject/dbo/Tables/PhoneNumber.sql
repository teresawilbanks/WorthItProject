CREATE TABLE [dbo].[PhoneNumber] (
    [PhNoID]      INT           IDENTITY (1, 1) NOT NULL,
    [phonenumber] NCHAR (10)    NOT NULL,
    [adultid]     INT           NOT NULL,
    [extension]   NCHAR (10)    NULL,
    [PrimaryNo]   BIT           CONSTRAINT [DF_PhoneNumber_PrimaryNo] DEFAULT ((0)) NULL,
    [textable]    BIT           CONSTRAINT [DF_PhoneNumber_rectext] DEFAULT ((1)) NOT NULL,
    [active]      BIT           CONSTRAINT [DF_PhoneNumber_active] DEFAULT ((1)) NOT NULL,
    [createdate]  DATETIME2 (7) CONSTRAINT [DF_PhoneNumber_createdate] DEFAULT (getdate()) NOT NULL,
    [modifydate]  DATETIME2 (7) CONSTRAINT [DF_PhoneNumber_modifydate] DEFAULT (getdate()) NOT NULL,
    [modifiedby]  NVARCHAR (50) NULL,
    CONSTRAINT [PK_PhoneNumber] PRIMARY KEY CLUSTERED ([PhNoID] ASC),
    CONSTRAINT [FK_PhoneNumber_PhoneNumber] FOREIGN KEY ([adultid]) REFERENCES [dbo].[Adult] ([AdultID])
);

