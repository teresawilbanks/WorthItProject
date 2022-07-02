CREATE TABLE [dbo].[CabinDetail] (
    [CabinDetailID] INT            IDENTITY (1, 1) NOT NULL,
    [CabinID]       INT            CONSTRAINT [DF__CabinDeta__Cabin__3E1D39E1] DEFAULT ((0)) NOT NULL,
    [ChildID]       INT            CONSTRAINT [DF__CabinDeta__Child__3F115E1A] DEFAULT ((0)) NULL,
    [Description]   NVARCHAR (255) NULL,
    [CampaignID]    INT            NULL,
    [ModifiedBy]    NVARCHAR (50)  NULL,
    [ModifyDate]    DATETIME2 (7)  CONSTRAINT [DF_CabinDetail_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [Active]        BIT            CONSTRAINT [DF_CabinDetail_Active] DEFAULT ((1)) NULL,
    CONSTRAINT [CabinDetail$PrimaryKey] PRIMARY KEY CLUSTERED ([CabinDetailID] ASC),
    CONSTRAINT [FK_CabinDetail_Campaign] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaign] ([CampaignID]),
    CONSTRAINT [FK_CabinDetail_CampCabin] FOREIGN KEY ([CabinID]) REFERENCES [dbo].[CampCabin] ([CabinID]),
    CONSTRAINT [FK_CabinDetail_Child] FOREIGN KEY ([ChildID]) REFERENCES [dbo].[Child] ([ChildID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CabinDetail$cabinchild]
    ON [dbo].[CabinDetail]([CabinID] ASC, [ChildID] ASC);


GO
CREATE NONCLUSTERED INDEX [CabinDetail$CabinID]
    ON [dbo].[CabinDetail]([CabinID] ASC);


GO
CREATE NONCLUSTERED INDEX [CabinDetail$ChildID]
    ON [dbo].[CabinDetail]([ChildID] ASC);


GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   TRIGGER [dbo].[TR_AU_CabinDetail]	ON  [dbo].[CabinDetail] 
   FOR DELETE,UPDATE
AS 
IF EXISTS ( SELECT 0 FROM Deleted )
	BEGIN
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN
			INSERT INTO dbo.AU_CabinDetail 
						(CabinDetailID, CabinID, ChildID, CampaignID, ModifiedBy, ModifyDate, Operation)
					SELECT	D.CabinDetailID, D.CabinID, D.ChildID, D.CampaignID, D.ModifiedBy, GETDATE(), 'U'
					FROM	Deleted D
		END
	ELSE
		BEGIN
			INSERT INTO dbo.AU_CabinDetail 
						(CabinDetailID, CabinID, ChildID, CampaignID, ModifiedBy, ModifyDate,operation)
					SELECT	D.CabinDetailID, D.CabinID, D.ChildID, D.CampaignID, D.Modifiedby, GETDATE(), 'D'
					FROM	Deleted D
		END
	END

GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[cabinchild]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'INDEX', @level2name = N'CabinDetail$cabinchild';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[CabinID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'INDEX', @level2name = N'CabinDetail$CabinID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[ChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'INDEX', @level2name = N'CabinDetail$ChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[CabinDetailID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'COLUMN', @level2name = N'CabinDetailID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[CabinID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'COLUMN', @level2name = N'CabinID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[ChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'COLUMN', @level2name = N'ChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[CabinDetail].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CabinDetail', @level2type = N'CONSTRAINT', @level2name = N'CabinDetail$PrimaryKey';

