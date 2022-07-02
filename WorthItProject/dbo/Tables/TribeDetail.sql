CREATE TABLE [dbo].[TribeDetail] (
    [TribeDetailID] INT            IDENTITY (1, 1) NOT NULL,
    [TribeID]       INT            DEFAULT ((0)) NULL,
    [CabinID]       INT            DEFAULT ((0)) NULL,
    [Description]   NVARCHAR (255) NULL,
    [campaignID]    INT            DEFAULT ((0)) NULL,
    [ModifiedBy]    NVARCHAR (50)  NULL,
    [Modifieddate]  DATETIME2 (7)  CONSTRAINT [DF_TribeDetail_Modifieddate] DEFAULT (getdate()) NOT NULL,
    [Active]        BIT            NULL,
    CONSTRAINT [TribeDetail$PrimaryKey] PRIMARY KEY CLUSTERED ([TribeDetailID] ASC),
    CONSTRAINT [FK_TribeDetail_Campaign] FOREIGN KEY ([campaignID]) REFERENCES [dbo].[Campaign] ([CampaignID]),
    CONSTRAINT [FK_TribeDetail_CampCabin] FOREIGN KEY ([CabinID]) REFERENCES [dbo].[CampCabin] ([CabinID]),
    CONSTRAINT [FK_TribeDetail_CampTribe] FOREIGN KEY ([TribeID]) REFERENCES [dbo].[CampTribe] ([TribeID])
);


GO
CREATE NONCLUSTERED INDEX [TribeDetail$CabinID]
    ON [dbo].[TribeDetail]([CabinID] ASC);


GO
CREATE NONCLUSTERED INDEX [TribeDetail$campaignID]
    ON [dbo].[TribeDetail]([campaignID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [TribeDetail$TribeCabin]
    ON [dbo].[TribeDetail]([TribeID] ASC, [CabinID] ASC);


GO
CREATE NONCLUSTERED INDEX [TribeDetail$TribeID]
    ON [dbo].[TribeDetail]([TribeID] ASC);


GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[TR_AU_TribeDetail]	ON  [dbo].[TribeDetail] 
   FOR DELETE,UPDATE
AS 
IF EXISTS ( SELECT 0 FROM Deleted )
	BEGIN
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN
			INSERT INTO dbo.AU_TribeDetail 
						(TribeDetailID, TribeID, CabinID, Description, CampaignID, ModifiedBy, modifieddate, Operation)
					SELECT	D.TribeDetailID, D.TribeID, D.CabinID, D.Description, D.CampaignID, D.ModifiedBy, GETDATE(), 'U'
					FROM	Deleted D
		END
	ELSE
		BEGIN
			INSERT INTO dbo.AU_TribeDetail 
						(TribeDetailID, TribeID, CabinID, Description, CampaignID, ModifiedBy, modifieddate, Operation)
					SELECT	D.TribeDetailID, D.TribeID, D.CabinID, D.Description, D.CampaignID, D.ModifiedBy, GETDATE(), 'D'
					FROM	Deleted D
		END
	END

GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[CabinID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'INDEX', @level2name = N'TribeDetail$CabinID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[campaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'INDEX', @level2name = N'TribeDetail$campaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[TribeCabin]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'INDEX', @level2name = N'TribeDetail$TribeCabin';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[TribeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'INDEX', @level2name = N'TribeDetail$TribeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[TribeDetailID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'COLUMN', @level2name = N'TribeDetailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[TribeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'COLUMN', @level2name = N'TribeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[CabinID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'COLUMN', @level2name = N'CabinID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[campaignID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'COLUMN', @level2name = N'campaignID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[TribeDetail].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TribeDetail', @level2type = N'CONSTRAINT', @level2name = N'TribeDetail$PrimaryKey';

