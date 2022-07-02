CREATE TABLE [dbo].[tmpStats] (
    [RequestID]              INT            NOT NULL,
    [ChildID]                INT            NULL,
    [CountyID]               INT            NULL,
    [RequestTypeID]          INT            NULL,
    [ValueNonInventoryItems] MONEY          NULL,
    [detailsTotal]           NVARCHAR (255) NULL,
    [GRAND]                  MONEY          NULL,
    [RequestClosedDate]      DATETIME2 (0)  NULL,
    [Year]                   SMALLINT       NULL,
    [CountyName]             NVARCHAR (50)  NULL,
    [RequestName]            NVARCHAR (55)  NULL,
    [State]                  NVARCHAR (255) NULL,
    [RequestStatusID]        INT            NULL,
    [BagFilledDate]          DATETIME2 (7)  NULL
);


GO
CREATE NONCLUSTERED INDEX [tmpStats$ChildID]
    ON [dbo].[tmpStats]([ChildID] ASC);


GO
CREATE NONCLUSTERED INDEX [tmpStats$CountyID]
    ON [dbo].[tmpStats]([CountyID] ASC);


GO
CREATE NONCLUSTERED INDEX [tmpStats$RequestID]
    ON [dbo].[tmpStats]([RequestID] ASC);


GO
CREATE NONCLUSTERED INDEX [tmpStats$RequestTypeID]
    ON [dbo].[tmpStats]([RequestTypeID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[ChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'INDEX', @level2name = N'tmpStats$ChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'INDEX', @level2name = N'tmpStats$CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'INDEX', @level2name = N'tmpStats$RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[RequestTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'INDEX', @level2name = N'tmpStats$RequestTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[ChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'ChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[RequestTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'RequestTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[ValueNonInventoryItems]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'ValueNonInventoryItems';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[detailsTotal]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'detailsTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[GRAND]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'GRAND';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[RequestClosedDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'RequestClosedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[Year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'Year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[CountyName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'CountyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[RequestName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'RequestName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[tmpStats].[State]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tmpStats', @level2type = N'COLUMN', @level2name = N'State';

