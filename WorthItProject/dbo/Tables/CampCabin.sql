CREATE TABLE [dbo].[CampCabin] (
    [CabinID]         INT           IDENTITY (1, 1) NOT NULL,
    [CabinName]       NVARCHAR (40) NULL,
    [AgeGroupID]      INT           DEFAULT ((0)) NULL,
    [genderID]        INT           DEFAULT ((0)) NULL,
    [CampaignID]      INT           NULL,
    [MaxOcc]          INT           NULL,
    [CampgroundRefID] NVARCHAR (50) NULL,
    [modifyDate]      DATETIME2 (7) CONSTRAINT [DF_CampCabin_modifyDate] DEFAULT (getdate()) NOT NULL,
    [modifiedBy]      NVARCHAR (50) NULL,
    [Active]          BIT           NULL,
    [time_stamp]      ROWVERSION    NULL,
    CONSTRAINT [CampCabin$PrimaryKey] PRIMARY KEY CLUSTERED ([CabinID] ASC),
    CONSTRAINT [FK_CampCabin_CampAgeGroup] FOREIGN KEY ([AgeGroupID]) REFERENCES [dbo].[CampAgeGroup] ([CampAgeGroupID]),
    CONSTRAINT [FK_CampCabin_Campaign] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaign] ([CampaignID]),
    CONSTRAINT [FK_CampCabin_Gender] FOREIGN KEY ([genderID]) REFERENCES [dbo].[Gender] ([GenderID])
);


GO
CREATE NONCLUSTERED INDEX [CampCabin$AgeGroupID]
    ON [dbo].[CampCabin]([AgeGroupID] ASC);


GO
CREATE NONCLUSTERED INDEX [CampCabin$genderID]
    ON [dbo].[CampCabin]([genderID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'INDEX', @level2name = N'CampCabin$AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[genderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'INDEX', @level2name = N'CampCabin$genderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[CabinID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'COLUMN', @level2name = N'CabinID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[CabinName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'COLUMN', @level2name = N'CabinName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[AgeGroupID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'COLUMN', @level2name = N'AgeGroupID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[genderID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'COLUMN', @level2name = N'genderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampCabin].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampCabin', @level2type = N'CONSTRAINT', @level2name = N'CampCabin$PrimaryKey';

