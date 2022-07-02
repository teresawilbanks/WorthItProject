CREATE TABLE [dbo].[BoHRequirement] (
    [ProductName]        INT NOT NULL,
    [BoHAgeGroupID]      INT NOT NULL,
    [ProductSizeGroupID] INT NULL,
    [RequiredQty]        INT DEFAULT ((1)) NULL,
    CONSTRAINT [BoHRequirement$PrimaryKey] PRIMARY KEY CLUSTERED ([ProductName] ASC, [BoHAgeGroupID] ASC),
    CONSTRAINT [BoHRequirement${64EA3F02-C2C0-4DD1-9859-389447FABF0C}] FOREIGN KEY ([ProductSizeGroupID]) REFERENCES [dbo].[ProductSizeGroup] ([AgeGroupID]),
    CONSTRAINT [BoHRequirement$BagofHopeAgeGroupBoHRequirement] FOREIGN KEY ([BoHAgeGroupID]) REFERENCES [dbo].[BagofHopeAgeGroup] ([BoHAgeGroupID]),
    CONSTRAINT [BoHRequirement$ProductNameBoHRequirement] FOREIGN KEY ([ProductName]) REFERENCES [dbo].[ProductName] ([ProductNameID])
);


GO
CREATE NONCLUSTERED INDEX [BoHRequirement${64EA3F02-C2C0-4DD1-9859-389447FABF0C}]
    ON [dbo].[BoHRequirement]([ProductSizeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [BoHRequirement$AgeGroupID]
    ON [dbo].[BoHRequirement]([BoHAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [BoHRequirement$BagofHopeAgeGroupBoHRequirement]
    ON [dbo].[BoHRequirement]([BoHAgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [BoHRequirement$ProductNameBoHRequirement]
    ON [dbo].[BoHRequirement]([ProductName] ASC);


GO
CREATE NONCLUSTERED INDEX [BoHRequirement$ProductSizeGroupID]
    ON [dbo].[BoHRequirement]([ProductSizeGroupID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[{64EA3F02-C2C0-4DD1-9859-389447FABF0C}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'INDEX', @level2name = N'BoHRequirement${64EA3F02-C2C0-4DD1-9859-389447FABF0C}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'INDEX', @level2name = N'BoHRequirement$AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[BagofHopeAgeGroupBoHRequirement]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'INDEX', @level2name = N'BoHRequirement$BagofHopeAgeGroupBoHRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[ProductNameBoHRequirement]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'INDEX', @level2name = N'BoHRequirement$ProductNameBoHRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[ProductSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'INDEX', @level2name = N'BoHRequirement$ProductSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[ProductName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[BoHAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'COLUMN', @level2name = N'BoHAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[ProductSizeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'COLUMN', @level2name = N'ProductSizeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[RequiredQty]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'COLUMN', @level2name = N'RequiredQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[{64EA3F02-C2C0-4DD1-9859-389447FABF0C}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'CONSTRAINT', @level2name = N'BoHRequirement${64EA3F02-C2C0-4DD1-9859-389447FABF0C}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[BagofHopeAgeGroupBoHRequirement]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'CONSTRAINT', @level2name = N'BoHRequirement$BagofHopeAgeGroupBoHRequirement';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'CONSTRAINT', @level2name = N'BoHRequirement$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BoHRequirement].[ProductNameBoHRequirement]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BoHRequirement', @level2type = N'CONSTRAINT', @level2name = N'BoHRequirement$ProductNameBoHRequirement';

