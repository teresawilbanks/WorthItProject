CREATE TABLE [dbo].[CampaignStatus] (
    [CampaignStatusID] INT            DEFAULT ((0)) NOT NULL,
    [Status]           NVARCHAR (255) NULL,
    CONSTRAINT [CampaignStatus$PrimaryKey] PRIMARY KEY CLUSTERED ([CampaignStatusID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignStatus]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignStatus].[CampaignStatusID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignStatus', @level2type = N'COLUMN', @level2name = N'CampaignStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignStatus].[Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignStatus', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignStatus].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignStatus', @level2type = N'CONSTRAINT', @level2name = N'CampaignStatus$PrimaryKey';

