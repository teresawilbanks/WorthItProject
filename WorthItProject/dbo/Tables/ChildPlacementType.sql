CREATE TABLE [dbo].[ChildPlacementType] (
    [ChildPlacementID] INT           IDENTITY (1, 1) NOT NULL,
    [Type]             NVARCHAR (55) NOT NULL,
    CONSTRAINT [ChildPlacementType$PrimaryKey] PRIMARY KEY CLUSTERED ([ChildPlacementID] ASC),
    CONSTRAINT [SSMA_CC$ChildPlacementType$Type$disallow_zero_length] CHECK (len([Type])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [ChildPlacementType$Type]
    ON [dbo].[ChildPlacementType]([Type] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ChildPlacementType].[Type]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ChildPlacementType', @level2type = N'INDEX', @level2name = N'ChildPlacementType$Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ChildPlacementType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ChildPlacementType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ChildPlacementType].[ChildPlacementID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ChildPlacementType', @level2type = N'COLUMN', @level2name = N'ChildPlacementID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ChildPlacementType].[Type]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ChildPlacementType', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ChildPlacementType].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ChildPlacementType', @level2type = N'CONSTRAINT', @level2name = N'ChildPlacementType$PrimaryKey';

