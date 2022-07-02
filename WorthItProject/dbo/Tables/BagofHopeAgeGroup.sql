CREATE TABLE [dbo].[BagofHopeAgeGroup] (
    [BoHAgeGroupID]       INT           DEFAULT ((0)) NOT NULL,
    [AgeGroupDescription] NVARCHAR (55) NULL,
    CONSTRAINT [BagofHopeAgeGroup$PrimaryKey] PRIMARY KEY CLUSTERED ([BoHAgeGroupID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagofHopeAgeGroup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagofHopeAgeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagofHopeAgeGroup].[BoHAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagofHopeAgeGroup', @level2type = N'COLUMN', @level2name = N'BoHAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagofHopeAgeGroup].[AgeGroupDescription]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagofHopeAgeGroup', @level2type = N'COLUMN', @level2name = N'AgeGroupDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagofHopeAgeGroup].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagofHopeAgeGroup', @level2type = N'CONSTRAINT', @level2name = N'BagofHopeAgeGroup$PrimaryKey';

