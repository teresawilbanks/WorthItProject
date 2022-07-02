CREATE TABLE [dbo].[AdultLicensingAgency] (
    [AgencyID]   INT           IDENTITY (1, 1) NOT NULL,
    [AgencyName] NVARCHAR (75) NOT NULL,
    CONSTRAINT [AdultLicensingAgency$PrimaryKey] PRIMARY KEY CLUSTERED ([AgencyID] ASC),
    CONSTRAINT [SSMA_CC$AdultLicensingAgency$AgencyName$disallow_zero_length] CHECK (len([AgencyName])>(0))
);


GO
CREATE NONCLUSTERED INDEX [AdultLicensingAgency$CompanyName]
    ON [dbo].[AdultLicensingAgency]([AgencyName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultLicensingAgency].[CompanyName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultLicensingAgency', @level2type = N'INDEX', @level2name = N'AdultLicensingAgency$CompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultLicensingAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultLicensingAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultLicensingAgency].[AgencyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultLicensingAgency', @level2type = N'COLUMN', @level2name = N'AgencyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultLicensingAgency].[AgencyName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultLicensingAgency', @level2type = N'COLUMN', @level2name = N'AgencyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[AdultLicensingAgency].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AdultLicensingAgency', @level2type = N'CONSTRAINT', @level2name = N'AdultLicensingAgency$PrimaryKey';

