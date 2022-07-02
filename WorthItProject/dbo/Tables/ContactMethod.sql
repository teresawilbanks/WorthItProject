CREATE TABLE [dbo].[ContactMethod] (
    [MethodID]   INT            IDENTITY (1, 1) NOT NULL,
    [MethodName] NVARCHAR (255) NULL,
    [SortOrder]  INT            DEFAULT ((0)) NULL,
    CONSTRAINT [ContactMethod$PrimaryKey] PRIMARY KEY CLUSTERED ([MethodID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactMethod]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactMethod].[MethodID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactMethod', @level2type = N'COLUMN', @level2name = N'MethodID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactMethod].[MethodName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactMethod', @level2type = N'COLUMN', @level2name = N'MethodName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactMethod].[SortOrder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactMethod', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ContactMethod].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ContactMethod', @level2type = N'CONSTRAINT', @level2name = N'ContactMethod$PrimaryKey';

