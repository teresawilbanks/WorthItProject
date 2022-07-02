CREATE TABLE [dbo].[Sponsor] (
    [SponsorID]          INT            IDENTITY (1, 1) NOT NULL,
    [SponsorName]        NVARCHAR (255) NULL,
    [SponsorPhoneNumber] NVARCHAR (255) NULL,
    [SponsorEmail]       NVARCHAR (255) NULL,
    CONSTRAINT [Sponsor$PrimaryKey] PRIMARY KEY CLUSTERED ([SponsorID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Sponsor]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sponsor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Sponsor].[SponsorID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sponsor', @level2type = N'COLUMN', @level2name = N'SponsorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Sponsor].[SponsorName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sponsor', @level2type = N'COLUMN', @level2name = N'SponsorName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Sponsor].[SponsorPhoneNumber]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sponsor', @level2type = N'COLUMN', @level2name = N'SponsorPhoneNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Sponsor].[SponsorEmail]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sponsor', @level2type = N'COLUMN', @level2name = N'SponsorEmail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Sponsor].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Sponsor', @level2type = N'CONSTRAINT', @level2name = N'Sponsor$PrimaryKey';

