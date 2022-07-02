CREATE TABLE [dbo].[Product] (
    [ProductID]         INT            IDENTITY (1, 1) NOT NULL,
    [ProductNameID]     INT            NOT NULL,
    [ProductCategoryID] INT            NULL,
    [SeasonID]          INT            NOT NULL,
    [GenderID]          INT            NULL,
    [SizeGroupID]       INT            NULL,
    [SizeID]            INT            NULL,
    [EstimatedValue]    DECIMAL (18)   NOT NULL,
    [comments]          NVARCHAR (255) NULL,
    CONSTRAINT [Product$PrimaryKey] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [Product${478A1FA1-2615-4C72-A1FC-9462D466F9A5}] FOREIGN KEY ([SizeGroupID]) REFERENCES [dbo].[ProductSizeGroup] ([AgeGroupID]),
    CONSTRAINT [Product${AE76D0F8-3270-4A5F-8635-D0F424A8E19E}] FOREIGN KEY ([SeasonID]) REFERENCES [dbo].[ProductSeason] ([SeasonID]),
    CONSTRAINT [Product${CA687188-1AE7-432D-A4DF-E298401EA371}] FOREIGN KEY ([ProductCategoryID]) REFERENCES [dbo].[ProductCategory] ([ProductCategoryID]),
    CONSTRAINT [Product${D7FE847C-E7F7-4006-8EAC-EEF9CB2D9C15}] FOREIGN KEY ([GenderID]) REFERENCES [dbo].[Gender] ([GenderID]),
    CONSTRAINT [Product$ProductNameProduct] FOREIGN KEY ([ProductNameID]) REFERENCES [dbo].[ProductName] ([ProductNameID]),
    CONSTRAINT [Product$ProductSizeGroupProduct] FOREIGN KEY ([SizeGroupID]) REFERENCES [dbo].[ProductSizeGroup] ([AgeGroupID]),
    CONSTRAINT [Product$SizeProduct] FOREIGN KEY ([SizeID]) REFERENCES [dbo].[Size] ([SizeID])
);


GO
CREATE NONCLUSTERED INDEX [Product${478A1FA1-2615-4C72-A1FC-9462D466F9A5}]
    ON [dbo].[Product]([SizeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product${AE76D0F8-3270-4A5F-8635-D0F424A8E19E}]
    ON [dbo].[Product]([SeasonID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product${CA687188-1AE7-432D-A4DF-E298401EA371}]
    ON [dbo].[Product]([ProductCategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product${D7FE847C-E7F7-4006-8EAC-EEF9CB2D9C15}]
    ON [dbo].[Product]([GenderID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$AgeGroupID]
    ON [dbo].[Product]([SizeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$GenderID]
    ON [dbo].[Product]([GenderID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$InventoryItemCategoryID]
    ON [dbo].[Product]([ProductCategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$InventoryItemSizeID]
    ON [dbo].[Product]([SizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$ItemNameID]
    ON [dbo].[Product]([ProductNameID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$ProductNameProduct]
    ON [dbo].[Product]([ProductNameID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$ProductSizeGroupProduct]
    ON [dbo].[Product]([SizeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$SeasonID]
    ON [dbo].[Product]([SeasonID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product$SizeProduct]
    ON [dbo].[Product]([SizeID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{478A1FA1-2615-4C72-A1FC-9462D466F9A5}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product${478A1FA1-2615-4C72-A1FC-9462D466F9A5}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{AE76D0F8-3270-4A5F-8635-D0F424A8E19E}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product${AE76D0F8-3270-4A5F-8635-D0F424A8E19E}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{CA687188-1AE7-432D-A4DF-E298401EA371}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product${CA687188-1AE7-432D-A4DF-E298401EA371}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{D7FE847C-E7F7-4006-8EAC-EEF9CB2D9C15}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product${D7FE847C-E7F7-4006-8EAC-EEF9CB2D9C15}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[GenderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$GenderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[InventoryItemCategoryID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$InventoryItemCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[InventoryItemSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$InventoryItemSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ItemNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$ItemNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductNameProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$ProductNameProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductSizeGroupProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$ProductSizeGroupProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[SizeProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'INDEX', @level2name = N'Product$SizeProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductCategoryID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[GenderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'GenderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[SizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[SizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'SizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[EstimatedValue]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'EstimatedValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[comments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'COLUMN', @level2name = N'comments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{478A1FA1-2615-4C72-A1FC-9462D466F9A5}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product${478A1FA1-2615-4C72-A1FC-9462D466F9A5}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{AE76D0F8-3270-4A5F-8635-D0F424A8E19E}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product${AE76D0F8-3270-4A5F-8635-D0F424A8E19E}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{CA687188-1AE7-432D-A4DF-E298401EA371}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product${CA687188-1AE7-432D-A4DF-E298401EA371}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[{D7FE847C-E7F7-4006-8EAC-EEF9CB2D9C15}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product${D7FE847C-E7F7-4006-8EAC-EEF9CB2D9C15}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductNameProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product$ProductNameProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[ProductSizeGroupProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product$ProductSizeGroupProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Product].[SizeProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product', @level2type = N'CONSTRAINT', @level2name = N'Product$SizeProduct';

