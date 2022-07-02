CREATE TABLE [dbo].[Productupdate] (
    [ProductID]         INT            IDENTITY (1, 1) NOT NULL,
    [ProductNameID]     INT            NOT NULL,
    [ProductCategoryID] INT            NULL,
    [SeasonID]          INT            NOT NULL,
    [GenderID]          INT            NULL,
    [SizeGroupID]       INT            NULL,
    [SizeID]            INT            NULL,
    [EstimatedValue]    MONEY          NOT NULL,
    [comments]          NVARCHAR (255) NULL,
    CONSTRAINT [Productupdate$PrimaryKey] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Productupdate$AgeGroupID]
    ON [dbo].[Productupdate]([SizeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [Productupdate$GenderID]
    ON [dbo].[Productupdate]([GenderID] ASC);


GO
CREATE NONCLUSTERED INDEX [Productupdate$InventoryItemCategoryID]
    ON [dbo].[Productupdate]([ProductCategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [Productupdate$InventoryItemSizeID]
    ON [dbo].[Productupdate]([SizeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Productupdate$ItemNameID]
    ON [dbo].[Productupdate]([ProductNameID] ASC);


GO
CREATE NONCLUSTERED INDEX [Productupdate$SeasonID]
    ON [dbo].[Productupdate]([SeasonID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'INDEX', @level2name = N'Productupdate$AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[GenderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'INDEX', @level2name = N'Productupdate$GenderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[InventoryItemCategoryID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'INDEX', @level2name = N'Productupdate$InventoryItemCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[InventoryItemSizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'INDEX', @level2name = N'Productupdate$InventoryItemSizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[ItemNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'INDEX', @level2name = N'Productupdate$ItemNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'INDEX', @level2name = N'Productupdate$SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[ProductID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[ProductNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'ProductNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[ProductCategoryID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[SeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'SeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[GenderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'GenderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[SizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'SizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[SizeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'SizeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[EstimatedValue]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'EstimatedValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[comments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'COLUMN', @level2name = N'comments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Productupdate].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Productupdate', @level2type = N'CONSTRAINT', @level2name = N'Productupdate$PrimaryKey';

