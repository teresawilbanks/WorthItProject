CREATE TABLE [dbo].[Adult] (
    [AdultID]               INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]             NVARCHAR (255) NOT NULL,
    [LastName]              NVARCHAR (255) NULL,
    [Alias]                 NVARCHAR (255) NULL,
    [AddressLine1]          NVARCHAR (255) NULL,
    [AddressLine2]          NVARCHAR (255) NULL,
    [City]                  NVARCHAR (50)  NULL,
    [StateID]               INT            NULL,
    [Zip]                   NVARCHAR (5)   NULL,
    [CountyID]              INT            NULL,
    [Email]                 NVARCHAR (255) NULL,
    [NewEmail]              BIT            CONSTRAINT [DF__Adult__NewEmail__37703C52] DEFAULT ((0)) NULL,
    [LicensingAgencyID]     INT            NULL,
    [Comment]               NVARCHAR (MAX) NULL,
    [PhoneNumberPrimary]    NVARCHAR (20)  NULL,
    [PhoneStrip]            NCHAR (10)     NULL,
    [PhoneNumberStrip]      NCHAR (10)     NULL,
    [PhonePrimaryExtension] NVARCHAR (10)  NULL,
    [PrimaryTextable]       BIT            CONSTRAINT [DF_Adult_RecText] DEFAULT ((1)) NULL,
    [AltPhone]              NVARCHAR (10)  NULL,
    [AltExtension]          NCHAR (10)     NULL,
    [AltStrip]              NCHAR (10)     NULL,
    [AltTextable]           BIT            CONSTRAINT [DF_Adult_AltRecText] DEFAULT ((0)) NULL,
    [JobTitle]              NVARCHAR (255) NULL,
    [DuplicateEntry]        BIT            CONSTRAINT [DF__Adult__Duplicate__3A4CA8FD] DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]        ROWVERSION     NOT NULL,
    [DuplicateID]           INT            NULL,
    [AlternateEmail]        NVARCHAR (255) NULL,
    [CreateDate]            DATETIME2 (0)  CONSTRAINT [DF__Adult__CreateDat__3864608B] DEFAULT (getdate()) NULL,
    [ModifyDate]            DATETIME2 (0)  CONSTRAINT [DF__Adult__ModifyDat__395884C4] DEFAULT (getdate()) NULL,
    [LastModifiedBy]        NVARCHAR (MAX) NULL,
    CONSTRAINT [Adult$PrimaryKey] PRIMARY KEY CLUSTERED ([AdultID] ASC),
    CONSTRAINT [SSMA_CC$Adult$FirstName$disallow_zero_length] CHECK (len([FirstName])>(0)),
    CONSTRAINT [Adult$AdultLicensingAgencyAdult] FOREIGN KEY ([LicensingAgencyID]) REFERENCES [dbo].[AdultLicensingAgency] ([AgencyID])
);


GO
CREATE NONCLUSTERED INDEX [Adult$AdultLicensingAgencyAdult]
    ON [dbo].[Adult]([LicensingAgencyID] ASC);


GO
CREATE NONCLUSTERED INDEX [Adult$AdultStateID]
    ON [dbo].[Adult]([StateID] ASC);


GO
CREATE NONCLUSTERED INDEX [Adult$CountyID]
    ON [dbo].[Adult]([CountyID] ASC);


GO
CREATE NONCLUSTERED INDEX [Adult$LicensingAgencyID]
    ON [dbo].[Adult]([LicensingAgencyID] ASC);


GO
-- =============================================
-- Author:		<Teresa Wilbanks>
-- Create date: <8/19/2020>
-- Description:	<Modify adult id's in temprequest after an adult record has been modified or inserted>
-- =============================================
CREATE       TRIGGER [dbo].[tr_modifyTempReq] 
   ON  dbo.Adult
   AFTER INSERT,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	
UPDATE tempRequest
			SET CGID = a.adultID
			FROM adult AS a join temprequest as tr
			ON a.FirstName = tr.CGFName AND a.LastName = tr.CGLName
			WHERE tr.CGID is Null AND tr.Status = 3

UPDATE tempRequest
			SET SWID = a.adultID
			FROM adult AS a join temprequest as tr
			ON a.FirstName = tr.SWFName AND a.LastName = tr.SWLName
			WHERE tr.SWID is Null
			AND tr.Status = 3

UPDATE tempRequest
			SET GALID = a.adultID
			FROM adult AS a join temprequest as tr
			ON a.FirstName = tr.GALfname AND a.LastName = tr.GALLName
			WHERE tr.GALID is Null
			AND tr.Status = 3

UPDATE tempRequest
			SET RCBID = a.adultID
			FROM adult AS a join temprequest as tr
			ON a.FirstName = tr.RCBFName AND a.LastName = tr.RCBLName
			AND tr.Status = 3

END

GO
-- =============================================
-- Author:		<Teresa Wilbanks>
-- Create date: <8/2/2021>
-- Description:	<Strip phonenumberprimary>
-- =============================================
CREATE         TRIGGER [dbo].[tr_phonestrip] 
   ON  dbo.Adult
   AFTER INSERT,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	
UPDATE adult
			SET PhoneNumberStrip = replace(replace(replace(replace(phonenumberprimary,'(',''),')',''),' ',''),'-',''),
				AltStrip = replace(replace(replace(replace(AltPhone,'(',''),')',''),' ',''),'-','')
		

END

GO
DISABLE TRIGGER [dbo].[tr_phonestrip]
    ON [dbo].[Adult];


GO

-- =============================================
-- Author:		<Teresa Wilbanks>
-- Create date: <8/19/2020>
-- Description:	<Modify adult id's in temprequest after an adult record has been modified or inserted>
-- =============================================
CREATE         TRIGGER [dbo].[tr_modifyPhoneStripTrim] 
   ON  [dbo].[Adult]
   AFTER INSERT,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	
UPDATE adult
			SET phonestrip = ltrim(rtrim(Replace(replace(replace(replace(phonenumberprimary,'(',''),')',''),' ',''),'-',''))),
				altstrip = ltrim(rtrim(Replace(replace(replace(replace(AltPhone,'(',''),')',''),' ',''),'-','')))



ALTER TABLE [dbo].[Adult] ENABLE TRIGGER [tr_modifyTempReq]
end

GO
DISABLE TRIGGER [dbo].[tr_modifyPhoneStripTrim]
    ON [dbo].[Adult];


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AdultLicensingAgencyAdult]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'INDEX', @level2name = N'Adult$AdultLicensingAgencyAdult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AdultStateID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'INDEX', @level2name = N'Adult$AdultStateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'INDEX', @level2name = N'Adult$CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[LicensingAgencyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'INDEX', @level2name = N'Adult$LicensingAgencyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'AdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[LastName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AddressLine1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AddressLine2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[StateID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'StateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[Zip]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[Email]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[NewEmail]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'NewEmail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[LicensingAgencyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'LicensingAgencyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[Comment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[PhoneNumberPrimary]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'PhoneNumberPrimary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[PhonePrimaryExtension]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'PhonePrimaryExtension';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AltPhone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'AltPhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[JobTitle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'JobTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[DuplicateEntry]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'DuplicateEntry';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[CreateDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[ModifyDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'COLUMN', @level2name = N'ModifyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[AdultLicensingAgencyAdult]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'CONSTRAINT', @level2name = N'Adult$AdultLicensingAgencyAdult';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Adult].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Adult', @level2type = N'CONSTRAINT', @level2name = N'Adult$PrimaryKey';

