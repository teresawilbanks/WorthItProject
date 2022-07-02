CREATE TABLE [dbo].[CampaignBOM] (
    [CampaignBOMID]         INT        IDENTITY (1, 1) NOT NULL,
    [CampaignID]            INT        DEFAULT ((0)) NOT NULL,
    [CampaignProductNameID] INT        DEFAULT ((0)) NOT NULL,
    [CampaignProductValue]  MONEY      DEFAULT ((0)) NULL,
    [UseInventoryValue]     BIT        DEFAULT ((1)) NULL,
    [SSMA_TimeStamp]        ROWVERSION NOT NULL,
    CONSTRAINT [CampaignBOM$PrimaryKey] PRIMARY KEY CLUSTERED ([CampaignBOMID] ASC),
    CONSTRAINT [CampaignBOM${4D83CD41-FB28-442C-B010-615EC98D650B}] FOREIGN KEY ([CampaignProductNameID]) REFERENCES [dbo].[CampaignProduct] ([CampaignProductNameID]),
    CONSTRAINT [CampaignBOM${6D487160-457B-4025-8425-94A777C80FD0}] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaign] ([CampaignID])
);


GO
CREATE NONCLUSTERED INDEX [CampaignBOM${4D83CD41-FB28-442C-B010-615EC98D650B}]
    ON [dbo].[CampaignBOM]([CampaignProductNameID] ASC);


GO
CREATE NONCLUSTERED INDEX [CampaignBOM${6D487160-457B-4025-8425-94A777C80FD0}]
    ON [dbo].[CampaignBOM]([CampaignID] ASC);


GO
CREATE NONCLUSTERED INDEX [CampaignBOM$CampaignID]
    ON [dbo].[CampaignBOM]([CampaignID] ASC);


GO
CREATE NONCLUSTERED INDEX [CampaignBOM$EventProductID]
    ON [dbo].[CampaignBOM]([CampaignProductNameID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[{4D83CD41-FB28-442C-B010-615EC98D650B}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'INDEX', @level2name = N'CampaignBOM${4D83CD41-FB28-442C-B010-615EC98D650B}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[{6D487160-457B-4025-8425-94A777C80FD0}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'INDEX', @level2name = N'CampaignBOM${6D487160-457B-4025-8425-94A777C80FD0}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'INDEX', @level2name = N'CampaignBOM$CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[EventProductID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'INDEX', @level2name = N'CampaignBOM$EventProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[CampaignBOMID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'COLUMN', @level2name = N'CampaignBOMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'COLUMN', @level2name = N'CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[CampaignProductNameID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'COLUMN', @level2name = N'CampaignProductNameID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[CampaignProductValue]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'COLUMN', @level2name = N'CampaignProductValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[UseInventoryValue]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'COLUMN', @level2name = N'UseInventoryValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[{4D83CD41-FB28-442C-B010-615EC98D650B}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'CONSTRAINT', @level2name = N'CampaignBOM${4D83CD41-FB28-442C-B010-615EC98D650B}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[{6D487160-457B-4025-8425-94A777C80FD0}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'CONSTRAINT', @level2name = N'CampaignBOM${6D487160-457B-4025-8425-94A777C80FD0}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignBOM].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignBOM', @level2type = N'CONSTRAINT', @level2name = N'CampaignBOM$PrimaryKey';

