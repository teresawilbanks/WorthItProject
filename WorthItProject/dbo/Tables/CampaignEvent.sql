CREATE TABLE [dbo].[CampaignEvent] (
    [CampaignEventID] INT            IDENTITY (1, 1) NOT NULL,
    [CampaignID]      INT            CONSTRAINT [DF__CampaignE__Campa__47A6A41B] DEFAULT ((0)) NOT NULL,
    [EventLocationID] INT            NOT NULL,
    [CEventStartDate] DATETIME2 (0)  NOT NULL,
    [CEventEndDate]   DATETIME2 (0)  NULL,
    [MaxAttendees]    INT            NULL,
    [StartTime]       DATETIME2 (7)  NULL,
    [EndTime]         DATETIME2 (7)  NULL,
    [Modifiedby]      NVARCHAR (255) NULL,
    [modifiedDate]    DATE           NULL,
    CONSTRAINT [CampaignEvent$PrimaryKey] PRIMARY KEY CLUSTERED ([CampaignEventID] ASC),
    CONSTRAINT [CampaignEvent$EventLocationCampaignEvent] FOREIGN KEY ([EventLocationID]) REFERENCES [dbo].[EventLocation] ([LocationID]),
    CONSTRAINT [CampaignEventCampaign] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaign] ([CampaignID])
);


GO
CREATE NONCLUSTERED INDEX [CampaignEvent${73649E05-7101-46E1-BD33-7E54DF613C1B}]
    ON [dbo].[CampaignEvent]([CampaignID] ASC);


GO
CREATE NONCLUSTERED INDEX [CampaignEvent$CampaignID]
    ON [dbo].[CampaignEvent]([CampaignID] ASC);


GO
CREATE NONCLUSTERED INDEX [CampaignEvent$EventLocationCampaignEvent]
    ON [dbo].[CampaignEvent]([EventLocationID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CampaignEvent$LocationDate]
    ON [dbo].[CampaignEvent]([EventLocationID] ASC, [CEventStartDate] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[{73649E05-7101-46E1-BD33-7E54DF613C1B}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'INDEX', @level2name = N'CampaignEvent${73649E05-7101-46E1-BD33-7E54DF613C1B}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'INDEX', @level2name = N'CampaignEvent$CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[EventLocationCampaignEvent]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'INDEX', @level2name = N'CampaignEvent$EventLocationCampaignEvent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[LocationDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'INDEX', @level2name = N'CampaignEvent$LocationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[CampaignEventID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'COLUMN', @level2name = N'CampaignEventID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[CampaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'COLUMN', @level2name = N'CampaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[EventLocationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'COLUMN', @level2name = N'EventLocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[CEventStartDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'COLUMN', @level2name = N'CEventStartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[CEventEndDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'COLUMN', @level2name = N'CEventEndDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[EventLocationCampaignEvent]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'CONSTRAINT', @level2name = N'CampaignEvent$EventLocationCampaignEvent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'CONSTRAINT', @level2name = N'CampaignEvent$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CampaignEvent].[{73649E05-7101-46E1-BD33-7E54DF613C1B}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CampaignEvent', @level2type = N'CONSTRAINT', @level2name = N'CampaignEventCampaign';

