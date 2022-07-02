CREATE TABLE [dbo].[PhoneType] (
    [PhoneTypeID] INT        IDENTITY (1, 1) NOT NULL,
    [TypeName]    NCHAR (50) NOT NULL,
    CONSTRAINT [PK_PhoneType] PRIMARY KEY CLUSTERED ([PhoneTypeID] ASC)
);

