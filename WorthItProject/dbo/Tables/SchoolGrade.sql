CREATE TABLE [dbo].[SchoolGrade] (
    [SchoolGradeID] INT            IDENTITY (1, 1) NOT NULL,
    [GradeName]     NVARCHAR (255) NULL,
    CONSTRAINT [SchoolGrade$PrimaryKey] PRIMARY KEY CLUSTERED ([SchoolGradeID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[SchoolGrade]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SchoolGrade';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[SchoolGrade].[SchoolGradeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SchoolGrade', @level2type = N'COLUMN', @level2name = N'SchoolGradeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[SchoolGrade].[GradeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SchoolGrade', @level2type = N'COLUMN', @level2name = N'GradeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[SchoolGrade].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SchoolGrade', @level2type = N'CONSTRAINT', @level2name = N'SchoolGrade$PrimaryKey';

