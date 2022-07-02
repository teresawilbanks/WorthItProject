CREATE TABLE [dbo].[ProductSizeGroup] (
    [AgeGroupID]  INT            IDENTITY (1, 1) NOT NULL,
    [AgeGroup]    NVARCHAR (25)  NOT NULL,
    [Description] NVARCHAR (255) NULL,
    [SortOrder]   INT            DEFAULT ((0)) NULL,
    CONSTRAINT [ProductSizeGroup$PrimaryKey] PRIMARY KEY CLUSTERED ([AgeGroupID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductSizeGroup$AgeGroup]
    ON [dbo].[ProductSizeGroup]([AgeGroup] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup].[AgeGroup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup', @level2type = N'INDEX', @level2name = N'ProductSizeGroup$AgeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup', @level2type = N'COLUMN', @level2name = N'AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup].[AgeGroup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup', @level2type = N'COLUMN', @level2name = N'AgeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup].[SortOrder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductSizeGroup].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductSizeGroup', @level2type = N'CONSTRAINT', @level2name = N'ProductSizeGroup$PrimaryKey';

