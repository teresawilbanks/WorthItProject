CREATE TABLE [dbo].[ProductName] (
    [ProductNameID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (50) NULL,
    [SortOrderID]   INT           DEFAULT ((0)) NOT NULL,
    CONSTRAINT [ProductName$PrimaryKey] PRIMARY KEY CLUSTERED ([ProductNameID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ProductName$Name]
    ON [dbo].[ProductName]([Name] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ProductName$sortField1]
    ON [dbo].[ProductName]([SortOrderID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName].[Name]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName', @level2type = N'INDEX', @level2name = N'ProductName$Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName].[sortField1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName', @level2type = N'INDEX', @level2name = N'ProductName$sortField1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName].[ProductNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName', @level2type = N'COLUMN', @level2name = N'ProductNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName].[Name]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName].[SortOrderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName', @level2type = N'COLUMN', @level2name = N'SortOrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductName].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductName', @level2type = N'CONSTRAINT', @level2name = N'ProductName$PrimaryKey';

