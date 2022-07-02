CREATE TABLE [dbo].[CareGiverPlacementType] (
    [CGPlacementTypeID] INT            IDENTITY (1, 1) NOT NULL,
    [PlacementTypeName] NVARCHAR (255) NOT NULL,
    CONSTRAINT [CareGiverPlacementType$PrimaryKey] PRIMARY KEY CLUSTERED ([CGPlacementTypeID] ASC),
    CONSTRAINT [SSMA_CC$CareGiverPlacementType$PlacementTypeName$disallow_zero_length] CHECK (len([PlacementTypeName])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CareGiverPlacementType$PlacementTypeName]
    ON [dbo].[CareGiverPlacementType]([PlacementTypeName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CareGiverPlacementType].[PlacementTypeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CareGiverPlacementType', @level2type = N'INDEX', @level2name = N'CareGiverPlacementType$PlacementTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CareGiverPlacementType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CareGiverPlacementType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CareGiverPlacementType].[CGPlacementTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CareGiverPlacementType', @level2type = N'COLUMN', @level2name = N'CGPlacementTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CareGiverPlacementType].[PlacementTypeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CareGiverPlacementType', @level2type = N'COLUMN', @level2name = N'PlacementTypeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CareGiverPlacementType].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CareGiverPlacementType', @level2type = N'CONSTRAINT', @level2name = N'CareGiverPlacementType$PrimaryKey';

