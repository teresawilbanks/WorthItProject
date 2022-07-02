CREATE TABLE [dbo].[AdultJobType] (
    [AdultJobTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [JobName]        NVARCHAR (75) NOT NULL,
    CONSTRAINT [AdultJobType$PrimaryKey] PRIMARY KEY CLUSTERED ([AdultJobTypeID] ASC),
    CONSTRAINT [SSMA_CC$AdultJobType$JobName$disallow_zero_length] CHECK (len([JobName])>(0))
);


GO
CREATE NONCLUSTERED INDEX [AdultJobType$AdultJobTypeAdultJobTypeID]
    ON [dbo].[AdultJobType]([AdultJobTypeID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AdultJobType$JobName]
    ON [dbo].[AdultJobType]([JobName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobType].[AdultJobTypeAdultJobTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobType', @level2type = N'INDEX', @level2name = N'AdultJobType$AdultJobTypeAdultJobTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobType].[JobName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobType', @level2type = N'INDEX', @level2name = N'AdultJobType$JobName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobType].[AdultJobTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobType', @level2type = N'COLUMN', @level2name = N'AdultJobTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobType].[JobName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobType', @level2type = N'COLUMN', @level2name = N'JobName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultJobType].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultJobType', @level2type = N'CONSTRAINT', @level2name = N'AdultJobType$PrimaryKey';

