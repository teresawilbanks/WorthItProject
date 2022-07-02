CREATE TABLE [dbo].[EventLocation] (
    [LocationID]   INT            IDENTITY (1, 1) NOT NULL,
    [Place]        NVARCHAR (255) NULL,
    [Address1]     NVARCHAR (255) NULL,
    [City]         NVARCHAR (50)  NULL,
    [StateID]      INT            NULL,
    [ZipCode]      NVARCHAR (50)  NULL,
    [ProgramTitle] NVARCHAR (50)  NULL,
    [FormTitle]    NVARCHAR (255) NULL,
    [Section]      NCHAR (10)     NULL,
    [Active]       BIT            CONSTRAINT [DF_EventLocation_Active] DEFAULT ((1)) NULL,
    CONSTRAINT [EventLocation$PrimaryKey] PRIMARY KEY CLUSTERED ([LocationID] ASC),
    FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID]),
    CONSTRAINT [FK__EventLoca__State__090A5324] FOREIGN KEY ([StateID]) REFERENCES [dbo].[State] ([StateID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[EventLocation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventLocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[EventLocation].[LocationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventLocation', @level2type = N'COLUMN', @level2name = N'LocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[EventLocation].[Place]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventLocation', @level2type = N'COLUMN', @level2name = N'Place';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[EventLocation].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EventLocation', @level2type = N'CONSTRAINT', @level2name = N'EventLocation$PrimaryKey';

