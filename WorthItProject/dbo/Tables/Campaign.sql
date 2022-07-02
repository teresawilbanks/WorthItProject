CREATE TABLE [dbo].[Campaign] (
    [CampaignID]       INT            IDENTITY (1, 1) NOT NULL,
    [CampaignTypeID]   INT            NOT NULL,
    [CampaignYear]     INT            DEFAULT (datepart(year,getdate())) NOT NULL,
    [CampaignComplete] BIT            DEFAULT ((0)) NULL,
    [CampaignSeasonID] INT            DEFAULT ((0)) NULL,
    [CampaignStatusID] INT            DEFAULT ((0)) NOT NULL,
    [CreateDate]       DATETIME2 (7)  CONSTRAINT [DF_Campaign_CreateDate] DEFAULT (getdate()) NULL,
    [UserID]           NVARCHAR (255) NULL,
    [ModifyDate]       DATETIME2 (7)  CONSTRAINT [DF_Campaign_ModifyDate] DEFAULT (getdate()) NULL,
    CONSTRAINT [Campaign$PrimaryKey] PRIMARY KEY CLUSTERED ([CampaignID] ASC),
    CONSTRAINT [Campaign${92740E28-3E3B-4352-97E0-A2D9D2181C1D}] FOREIGN KEY ([CampaignTypeID]) REFERENCES [dbo].[CampaignType] ([CampaignTypeID]),
    CONSTRAINT [Campaign${C4146E83-0B36-4414-89A9-2E65D8D0AE42}] FOREIGN KEY ([CampaignStatusID]) REFERENCES [dbo].[CampaignStatus] ([CampaignStatusID])
);


GO
CREATE NONCLUSTERED INDEX [Campaign${92740E28-3E3B-4352-97E0-A2D9D2181C1D}]
    ON [dbo].[Campaign]([CampaignTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Campaign${C4146E83-0B36-4414-89A9-2E65D8D0AE42}]
    ON [dbo].[Campaign]([CampaignStatusID] ASC);


GO
CREATE NONCLUSTERED INDEX [Campaign$CampaignSeasonID]
    ON [dbo].[Campaign]([CampaignSeasonID] ASC);


GO
CREATE NONCLUSTERED INDEX [Campaign$CampaignStatusID]
    ON [dbo].[Campaign]([CampaignStatusID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Campaign$TypeYear]
    ON [dbo].[Campaign]([CampaignTypeID] ASC, [CampaignYear] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[{92740E28-3E3B-4352-97E0-A2D9D2181C1D}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'INDEX', @level2name = N'Campaign${92740E28-3E3B-4352-97E0-A2D9D2181C1D}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[{C4146E83-0B36-4414-89A9-2E65D8D0AE42}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'INDEX', @level2name = N'Campaign${C4146E83-0B36-4414-89A9-2E65D8D0AE42}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignSeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'INDEX', @level2name = N'Campaign$CampaignSeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignStatusID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'INDEX', @level2name = N'Campaign$CampaignStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[TypeYear]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'INDEX', @level2name = N'Campaign$TypeYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'COLUMN', @level2name = N'CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'COLUMN', @level2name = N'CampaignTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignYear]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'COLUMN', @level2name = N'CampaignYear';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignComplete]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'COLUMN', @level2name = N'CampaignComplete';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignSeasonID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'COLUMN', @level2name = N'CampaignSeasonID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[CampaignStatusID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'COLUMN', @level2name = N'CampaignStatusID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[{92740E28-3E3B-4352-97E0-A2D9D2181C1D}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'CONSTRAINT', @level2name = N'Campaign${92740E28-3E3B-4352-97E0-A2D9D2181C1D}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[{C4146E83-0B36-4414-89A9-2E65D8D0AE42}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'CONSTRAINT', @level2name = N'Campaign${C4146E83-0B36-4414-89A9-2E65D8D0AE42}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Campaign].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Campaign', @level2type = N'CONSTRAINT', @level2name = N'Campaign$PrimaryKey';

