CREATE TABLE [dbo].[CampAgeGroup] (
    [CampAgeGroupID]      INT           IDENTITY (1, 1) NOT NULL,
    [AgeGroupDescription] NVARCHAR (55) NOT NULL,
    [SortOrder]           INT           NULL,
    CONSTRAINT [CampAgeGroup$PrimaryKey] PRIMARY KEY CLUSTERED ([CampAgeGroupID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampAgeGroup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampAgeGroup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampAgeGroup].[CampAgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampAgeGroup', @level2type = N'COLUMN', @level2name = N'CampAgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampAgeGroup].[AgeGroupDescription]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampAgeGroup', @level2type = N'COLUMN', @level2name = N'AgeGroupDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampAgeGroup].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampAgeGroup', @level2type = N'CONSTRAINT', @level2name = N'CampAgeGroup$PrimaryKey';

