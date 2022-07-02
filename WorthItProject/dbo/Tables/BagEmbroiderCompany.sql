CREATE TABLE [dbo].[BagEmbroiderCompany] (
    [BECID]                INT            IDENTITY (1, 1) NOT NULL,
    [EmbroiderCompanyName] NVARCHAR (255) NULL,
    CONSTRAINT [BagEmbroiderCompany$PrimaryKey] PRIMARY KEY CLUSTERED ([BECID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagEmbroiderCompany]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagEmbroiderCompany';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagEmbroiderCompany].[BECID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagEmbroiderCompany', @level2type = N'COLUMN', @level2name = N'BECID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagEmbroiderCompany].[EmbroiderCompanyName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagEmbroiderCompany', @level2type = N'COLUMN', @level2name = N'EmbroiderCompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagEmbroiderCompany].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagEmbroiderCompany', @level2type = N'CONSTRAINT', @level2name = N'BagEmbroiderCompany$PrimaryKey';

