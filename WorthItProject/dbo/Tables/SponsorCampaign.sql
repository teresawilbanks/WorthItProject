CREATE TABLE [dbo].[SponsorCampaign] (
    [SCID]       INT IDENTITY (1, 1) NOT NULL,
    [SponsorID]  INT NOT NULL,
    [campaignid] INT NOT NULL,
    [active]     BIT NOT NULL,
    CONSTRAINT [PK_SponsorCampaign] PRIMARY KEY CLUSTERED ([SCID] ASC),
    CONSTRAINT [FK_SponsorCampaign_Campaign] FOREIGN KEY ([campaignid]) REFERENCES [dbo].[Campaign] ([CampaignID]),
    CONSTRAINT [FK_SponsorCampaign_SponsorCampaign] FOREIGN KEY ([SponsorID]) REFERENCES [dbo].[Sponsor] ([SponsorID])
);

