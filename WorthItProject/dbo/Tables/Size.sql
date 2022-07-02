CREATE TABLE [dbo].[Size] (
    [SizeID]      INT           IDENTITY (1, 1) NOT NULL,
    [SizeName]    NVARCHAR (15) NULL,
    [Description] NVARCHAR (25) NULL,
    [Category]    INT           NULL,
    [SortOrder]   INT           DEFAULT ((0)) NULL,
    CONSTRAINT [Size$PrimaryKey] PRIMARY KEY CLUSTERED ([SizeID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Size$SizeID]
    ON [dbo].[Size]([SizeName] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Size$SortOrder]
    ON [dbo].[Size]([SortOrder] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[SizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'INDEX', @level2name = N'Size$SizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[SortOrder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'INDEX', @level2name = N'Size$SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[SizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'COLUMN', @level2name = N'SizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[SizeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'COLUMN', @level2name = N'SizeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[Category]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'COLUMN', @level2name = N'Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[SortOrder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Size].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Size', @level2type = N'CONSTRAINT', @level2name = N'Size$PrimaryKey';

