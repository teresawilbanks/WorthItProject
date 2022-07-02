CREATE TABLE [dbo].[GroupHome] (
    [GroupHomeID]   INT            IDENTITY (1, 1) NOT NULL,
    [GroupHomeName] NVARCHAR (255) NULL,
    [PhoneNumber]   NVARCHAR (255) NULL,
    CONSTRAINT [GroupHome$PrimaryKey] PRIMARY KEY CLUSTERED ([GroupHomeID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [GroupHome$GroupHomeName]
    ON [dbo].[GroupHome]([GroupHomeName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[GroupHome].[GroupHomeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GroupHome', @level2type = N'INDEX', @level2name = N'GroupHome$GroupHomeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[GroupHome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GroupHome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[GroupHome].[GroupHomeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GroupHome', @level2type = N'COLUMN', @level2name = N'GroupHomeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[GroupHome].[GroupHomeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GroupHome', @level2type = N'COLUMN', @level2name = N'GroupHomeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[GroupHome].[PhoneNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GroupHome', @level2type = N'COLUMN', @level2name = N'PhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[GroupHome].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'GroupHome', @level2type = N'CONSTRAINT', @level2name = N'GroupHome$PrimaryKey';

