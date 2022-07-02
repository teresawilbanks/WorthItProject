CREATE TABLE [dbo].[CampTribe] (
    [TribeID]    INT           IDENTITY (1, 1) NOT NULL,
    [TribeName]  NVARCHAR (55) NULL,
    [AgeGroupID] INT           DEFAULT ((0)) NULL,
    [CampaignID] INT           NULL,
    [MaxCabins]  INT           NULL,
    [UserID]     NVARCHAR (50) NULL,
    [ModifyDate] DATETIME2 (7) CONSTRAINT [DF_CampTribe_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [Active]     BIT           NULL,
    CONSTRAINT [CampTribe$PrimaryKey] PRIMARY KEY CLUSTERED ([TribeID] ASC),
    CONSTRAINT [FK_CampTribe_CampAgeGroup] FOREIGN KEY ([AgeGroupID]) REFERENCES [dbo].[CampAgeGroup] ([CampAgeGroupID]),
    CONSTRAINT [FK_CampTribe_Campaign] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaign] ([CampaignID])
);


GO
CREATE NONCLUSTERED INDEX [CampTribe$AgeGroupID]
    ON [dbo].[CampTribe]([AgeGroupID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampTribe].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampTribe', @level2type = N'INDEX', @level2name = N'CampTribe$AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampTribe]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampTribe';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampTribe].[TribeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampTribe', @level2type = N'COLUMN', @level2name = N'TribeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampTribe].[TribeName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampTribe', @level2type = N'COLUMN', @level2name = N'TribeName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampTribe].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampTribe', @level2type = N'COLUMN', @level2name = N'AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampTribe].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampTribe', @level2type = N'CONSTRAINT', @level2name = N'CampTribe$PrimaryKey';

