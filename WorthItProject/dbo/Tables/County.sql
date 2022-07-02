CREATE TABLE [dbo].[County] (
    [CountyID]   INT            IDENTITY (1, 1) NOT NULL,
    [CountyName] NVARCHAR (50)  NOT NULL,
    [State]      NVARCHAR (255) NULL,
    CONSTRAINT [County$PrimaryKey] PRIMARY KEY CLUSTERED ([CountyID] ASC),
    CONSTRAINT [SSMA_CC$County$CountyName$disallow_zero_length] CHECK (len([CountyName])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[County]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'County';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[County].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'County', @level2type = N'COLUMN', @level2name = N'CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[County].[CountyName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'County', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[County].[State]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'County', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[County].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'County', @level2type = N'CONSTRAINT', @level2name = N'County$PrimaryKey';

