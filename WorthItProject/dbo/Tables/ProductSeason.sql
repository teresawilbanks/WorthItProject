CREATE TABLE [dbo].[ProductSeason] (
    [SeasonID]   INT           IDENTITY (1, 1) NOT NULL,
    [SeasonName] NVARCHAR (10) NOT NULL,
    CONSTRAINT [ProductSeason$PrimaryKey] PRIMARY KEY CLUSTERED ([SeasonID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductSeason$SeasonName]
    ON [dbo].[ProductSeason]([SeasonName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSeason].[SeasonName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSeason', @level2type = N'INDEX', @level2name = N'ProductSeason$SeasonName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSeason]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSeason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSeason].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSeason', @level2type = N'COLUMN', @level2name = N'SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSeason].[SeasonName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSeason', @level2type = N'COLUMN', @level2name = N'SeasonName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSeason].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSeason', @level2type = N'CONSTRAINT', @level2name = N'ProductSeason$PrimaryKey';

