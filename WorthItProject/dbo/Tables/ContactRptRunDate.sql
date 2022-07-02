CREATE TABLE [dbo].[ContactRptRunDate] (
    [ReportID]      INT           IDENTITY (1, 1) NOT NULL,
    [reportrundate] DATETIME2 (0) NULL,
    [reporttype]    NVARCHAR (50) NULL,
    CONSTRAINT [ContactRptRunDate$PrimaryKey] PRIMARY KEY CLUSTERED ([ReportID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactRptRunDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactRptRunDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactRptRunDate].[ReportID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactRptRunDate', @level2type = N'COLUMN', @level2name = N'ReportID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactRptRunDate].[reportrundate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactRptRunDate', @level2type = N'COLUMN', @level2name = N'reportrundate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactRptRunDate].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactRptRunDate', @level2type = N'CONSTRAINT', @level2name = N'ContactRptRunDate$PrimaryKey';

