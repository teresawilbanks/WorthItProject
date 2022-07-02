CREATE TABLE [dbo].[EmailAddress] (
    [EAID]         INT            IDENTITY (1, 1) NOT NULL,
    [AdultID]      INT            NOT NULL,
    [EmailAddress] NVARCHAR (150) NOT NULL,
    [active]       BIT            CONSTRAINT [DF_EmailAddress_active] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_EmailAddress] PRIMARY KEY CLUSTERED ([EAID] ASC),
    CONSTRAINT [FK_EmailAddress_Adult] FOREIGN KEY ([AdultID]) REFERENCES [dbo].[Adult] ([AdultID])
);

