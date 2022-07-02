CREATE TABLE [dbo].[AdultJobAssignment] (
    [AdultNameID]       INT            DEFAULT ((0)) NOT NULL,
    [AdultJobTypeID]    INT            NOT NULL,
    [CGPlacementTypeID] INT            NULL,
    [GroupHomeID]       INT            NULL,
    [Active]            BIT            CONSTRAINT [DF_AdultJobAssignment_Active] DEFAULT ((1)) NULL,
    [Modifiedby]        NVARCHAR (255) NULL,
    [modifyDate]        DATETIME2 (7)  CONSTRAINT [DF_AdultJobAssignment_modifyDate] DEFAULT (getdate()) NULL,
    CONSTRAINT [AdultJobAssignment$PrimaryKey] PRIMARY KEY CLUSTERED ([AdultNameID] ASC, [AdultJobTypeID] ASC),
    CONSTRAINT [AdultJobAssignment${C3694F21-385B-4907-962C-1646B566F409}] FOREIGN KEY ([GroupHomeID]) REFERENCES [dbo].[GroupHome] ([GroupHomeID]),
    CONSTRAINT [AdultJobAssignment${DEE9244F-75C2-4289-A667-8E3E50624CC3}] FOREIGN KEY ([AdultJobTypeID]) REFERENCES [dbo].[AdultJobType] ([AdultJobTypeID]),
    CONSTRAINT [AdultJobAssignment$AdultAdultJobAssignment] FOREIGN KEY ([AdultNameID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [AdultJobAssignment$CareGiverPlacementTypeAdultJobAssignment] FOREIGN KEY ([CGPlacementTypeID]) REFERENCES [dbo].[CareGiverPlacementType] ([CGPlacementTypeID])
);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment${C3694F21-385B-4907-962C-1646B566F409}]
    ON [dbo].[AdultJobAssignment]([GroupHomeID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment${DEE9244F-75C2-4289-A667-8E3E50624CC3}]
    ON [dbo].[AdultJobAssignment]([AdultJobTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment$AdultAdultJobAssignment]
    ON [dbo].[AdultJobAssignment]([AdultNameID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment$CareGiverPlacementTypeAdultJobAssignment]
    ON [dbo].[AdultJobAssignment]([CGPlacementTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment$CGPlacementTypeID]
    ON [dbo].[AdultJobAssignment]([CGPlacementTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment$GroupHomeID]
    ON [dbo].[AdultJobAssignment]([GroupHomeID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment$JobID]
    ON [dbo].[AdultJobAssignment]([AdultJobTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [AdultJobAssignment$PersonID]
    ON [dbo].[AdultJobAssignment]([AdultNameID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[{C3694F21-385B-4907-962C-1646B566F409}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment${C3694F21-385B-4907-962C-1646B566F409}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[{DEE9244F-75C2-4289-A667-8E3E50624CC3}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment${DEE9244F-75C2-4289-A667-8E3E50624CC3}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[AdultAdultJobAssignment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment$AdultAdultJobAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[CareGiverPlacementTypeAdultJobAssignment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment$CareGiverPlacementTypeAdultJobAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[CGPlacementTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment$CGPlacementTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment$GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[JobID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment$JobID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[PersonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'INDEX', @level2name = N'AdultJobAssignment$PersonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[AdultNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'COLUMN', @level2name = N'AdultNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[AdultJobTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'COLUMN', @level2name = N'AdultJobTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[CGPlacementTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'COLUMN', @level2name = N'CGPlacementTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'COLUMN', @level2name = N'GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[{C3694F21-385B-4907-962C-1646B566F409}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'CONSTRAINT', @level2name = N'AdultJobAssignment${C3694F21-385B-4907-962C-1646B566F409}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[{DEE9244F-75C2-4289-A667-8E3E50624CC3}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'CONSTRAINT', @level2name = N'AdultJobAssignment${DEE9244F-75C2-4289-A667-8E3E50624CC3}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[AdultAdultJobAssignment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'CONSTRAINT', @level2name = N'AdultJobAssignment$AdultAdultJobAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[CareGiverPlacementTypeAdultJobAssignment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'CONSTRAINT', @level2name = N'AdultJobAssignment$CareGiverPlacementTypeAdultJobAssignment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobAssignment].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobAssignment', @level2type = N'CONSTRAINT', @level2name = N'AdultJobAssignment$PrimaryKey';

