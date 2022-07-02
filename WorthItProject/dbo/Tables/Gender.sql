CREATE TABLE [dbo].[Gender] (
    [GenderID]   INT           IDENTITY (1, 1) NOT NULL,
    [GenderType] NVARCHAR (10) NOT NULL,
    [SortOrder]  INT           DEFAULT ((0)) NULL,
    CONSTRAINT [Gender$PrimaryKey] PRIMARY KEY CLUSTERED ([GenderID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Gender$GenderType]
    ON [dbo].[Gender]([GenderType] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Gender].[GenderType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Gender', @level2type = N'INDEX', @level2name = N'Gender$GenderType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Gender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Gender].[GenderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Gender', @level2type = N'COLUMN', @level2name = N'GenderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Gender].[GenderType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Gender', @level2type = N'COLUMN', @level2name = N'GenderType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Gender].[SortOrder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Gender', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Gender].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Gender', @level2type = N'CONSTRAINT', @level2name = N'Gender$PrimaryKey';

