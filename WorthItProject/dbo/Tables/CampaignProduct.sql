CREATE TABLE [dbo].[CampaignProduct] (
    [CampaignProductNameID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]                  NVARCHAR (50) NOT NULL,
    CONSTRAINT [CampaignProduct$PrimaryKey] PRIMARY KEY CLUSTERED ([CampaignProductNameID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CampaignProduct$Name]
    ON [dbo].[CampaignProduct]([Name] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignProduct].[Name]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignProduct', @level2type = N'INDEX', @level2name = N'CampaignProduct$Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignProduct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignProduct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignProduct].[CampaignProductNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignProduct', @level2type = N'COLUMN', @level2name = N'CampaignProductNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignProduct].[Name]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignProduct', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignProduct].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignProduct', @level2type = N'CONSTRAINT', @level2name = N'CampaignProduct$PrimaryKey';

