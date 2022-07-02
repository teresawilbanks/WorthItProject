CREATE TABLE [dbo].[CampaignType] (
    [CampaignTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [CampaignName]   NVARCHAR (55) NOT NULL,
    CONSTRAINT [CampaignType$PrimaryKey] PRIMARY KEY CLUSTERED ([CampaignTypeID] ASC),
    CONSTRAINT [SSMA_CC$CampaignType$CampaignName$disallow_zero_length] CHECK (len([CampaignName])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CampaignType$RequestTypeRequestType]
    ON [dbo].[CampaignType]([CampaignName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignType].[RequestTypeRequestType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignType', @level2type = N'INDEX', @level2name = N'CampaignType$RequestTypeRequestType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignType].[CampaignTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignType', @level2type = N'COLUMN', @level2name = N'CampaignTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignType].[CampaignName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignType', @level2type = N'COLUMN', @level2name = N'CampaignName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignType].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignType', @level2type = N'CONSTRAINT', @level2name = N'CampaignType$PrimaryKey';

