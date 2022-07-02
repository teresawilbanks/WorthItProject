CREATE TABLE [dbo].[Race] (
    [EthnicityID]   INT           IDENTITY (1, 1) NOT NULL,
    [EthnicityName] NVARCHAR (25) NOT NULL,
    CONSTRAINT [Race$PrimaryKey] PRIMARY KEY CLUSTERED ([EthnicityID] ASC),
    CONSTRAINT [SSMA_CC$Race$EthnicityName$disallow_zero_length] CHECK (len([EthnicityName])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Race$EthnicityName]
    ON [dbo].[Race]([EthnicityName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Race].[EthnicityName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Race', @level2type = N'INDEX', @level2name = N'Race$EthnicityName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Race]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Race';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Race].[EthnicityID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Race', @level2type = N'COLUMN', @level2name = N'EthnicityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Race].[EthnicityName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Race', @level2type = N'COLUMN', @level2name = N'EthnicityName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Race].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Race', @level2type = N'CONSTRAINT', @level2name = N'Race$PrimaryKey';

