CREATE TABLE [dbo].[Child] (
    [ChildID]            INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]          NVARCHAR (55)  NOT NULL,
    [LastInitial]        NVARCHAR (255) NULL,
    [Nickname]           NVARCHAR (255) NULL,
    [DOB]                DATETIME       NULL,
    [Gender]             INT            NULL,
    [EthnicityID]        INT            NULL,
    [ChildPlacementID]   INT            NULL,
    [CountyID]           INT            NULL,
    [SiblingsNames]      NVARCHAR (MAX) NULL,
    [SameHome]           NVARCHAR (255) NULL,
    [Comments]           NVARCHAR (MAX) NULL,
    [LOTID]              NVARCHAR (243) NULL,
    [CountySocialWorker] BIT            CONSTRAINT [DF__Child__CountySoc__4C6B5938] DEFAULT ((1)) NULL,
    [CountyResidence]    BIT            CONSTRAINT [DF__Child__CountyRes__4D5F7D71] DEFAULT ((0)) NULL,
    [IdentifiesAsGender] INT            NULL,
    [LastName]           NVARCHAR (25)  NULL,
    [CreateDate]         DATETIME2 (0)  CONSTRAINT [DF__Child__CreateDat__4E53A1AA] DEFAULT (getdate()) NULL,
    [ModifyDate]         DATETIME2 (0)  NULL,
    [duplicate]          BIT            CONSTRAINT [DF__Child__duplicate__4F47C5E3] DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]     ROWVERSION     NOT NULL,
    [DuplicateID]        INT            NULL,
    [LastModifiedBy]     NVARCHAR (MAX) NULL,
    CONSTRAINT [Child$PrimaryKey] PRIMARY KEY CLUSTERED ([ChildID] ASC),
    CONSTRAINT [SSMA_CC$Child$DOB$validation_rule] CHECK ([DOB]<=getdate()),
    CONSTRAINT [SSMA_CC$Child$FirstName$disallow_zero_length] CHECK (len([FirstName])>(0)),
    CONSTRAINT [SSMA_CC$Child$LastInitial$disallow_zero_length] CHECK (len([LastInitial])>(0)),
    CONSTRAINT [SSMA_CC$Child$LOTID$disallow_zero_length] CHECK (len([LOTID])>(0)),
    CONSTRAINT [Child${2ED5A6CB-8A35-47B9-8E69-037CD2DDA4CB}] FOREIGN KEY ([Gender]) REFERENCES [dbo].[Gender] ([GenderID]),
    CONSTRAINT [Child${70AD9E84-6C3C-47C8-BFC2-2081F0964950}] FOREIGN KEY ([IdentifiesAsGender]) REFERENCES [dbo].[Gender] ([GenderID]),
    CONSTRAINT [Child${9AE560EB-C59C-41C7-AE1C-183041084FCB}] FOREIGN KEY ([EthnicityID]) REFERENCES [dbo].[Race] ([EthnicityID]),
    CONSTRAINT [Child${D10B332F-7254-40C4-B322-E75BB6C1CD83}] FOREIGN KEY ([ChildPlacementID]) REFERENCES [dbo].[ChildPlacementType] ([ChildPlacementID]),
    CONSTRAINT [Child${D5BAED79-6918-4F61-AD32-CCF308AD1433}] FOREIGN KEY ([CountyID]) REFERENCES [dbo].[County] ([CountyID])
);


GO
CREATE NONCLUSTERED INDEX [Child${2ED5A6CB-8A35-47B9-8E69-037CD2DDA4CB}]
    ON [dbo].[Child]([Gender] ASC);


GO
CREATE NONCLUSTERED INDEX [Child${70AD9E84-6C3C-47C8-BFC2-2081F0964950}]
    ON [dbo].[Child]([IdentifiesAsGender] ASC);


GO
CREATE NONCLUSTERED INDEX [Child${9AE560EB-C59C-41C7-AE1C-183041084FCB}]
    ON [dbo].[Child]([EthnicityID] ASC);


GO
CREATE NONCLUSTERED INDEX [Child${D10B332F-7254-40C4-B322-E75BB6C1CD83}]
    ON [dbo].[Child]([ChildPlacementID] ASC);


GO
CREATE NONCLUSTERED INDEX [Child${D5BAED79-6918-4F61-AD32-CCF308AD1433}]
    ON [dbo].[Child]([CountyID] ASC);


GO
CREATE NONCLUSTERED INDEX [Child$ChildEthnicityID]
    ON [dbo].[Child]([EthnicityID] ASC);


GO
CREATE NONCLUSTERED INDEX [Child$CountyID]
    ON [dbo].[Child]([CountyID] ASC);


GO
CREATE NONCLUSTERED INDEX [Child$FirstName]
    ON [dbo].[Child]([FirstName] ASC);


GO
CREATE NONCLUSTERED INDEX [Child$IdentifiesAsGender]
    ON [dbo].[Child]([IdentifiesAsGender] ASC);


GO
CREATE NONCLUSTERED INDEX [Child$PlacementID]
    ON [dbo].[Child]([ChildPlacementID] ASC);


GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[TR_AU_CHILD]	ON  dbo.Child 
   FOR DELETE,UPDATE
AS 
IF EXISTS ( SELECT 0 FROM Deleted )
	BEGIN
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN
			INSERT INTO dbo.AU_CHILD 
						(ChildID, FirstName, LastInitial,Nickname,DOB,Gender,EthnicityID,ChildPlacementID,CountyID,
						 SiblingsNames,SameHome,Comments,CountySocialWorker,CountyResidence,IdentifiesAsGender,LastName,
						 ModifyDate,operation, lastmodifiedby)
					SELECT	D.ChildID, D.FirstName, D.LastInitial, D.Nickname, D.DOB, D.Gender, D.EthnicityID, D.ChildPlacementID,
							D.CountyID, D.SiblingsNames, D.SameHome, D.Comments, D.CountySocialWorker, D.CountyResidence,
							D.IdentifiesAsGender, D.LastName, GETDATE(), 'U', d.LastModifiedBy
					FROM	Deleted D
		END
	ELSE
		BEGIN
			INSERT INTO dbo.AU_CHILD 
						(ChildID, FirstName, LastInitial,Nickname,DOB,Gender,EthnicityID,ChildPlacementID,CountyID,
						 SiblingsNames,SameHome,Comments,CountySocialWorker,CountyResidence,IdentifiesAsGender,LastName,
						 ModifyDate,operation, lastModifiedBy)
					SELECT	D.ChildID, D.FirstName, D.LastInitial, D.Nickname, D.DOB, D.Gender, D.EthnicityID, D.ChildPlacementID,
							D.CountyID, D.SiblingsNames, D.SameHome, D.Comments, D.CountySocialWorker, D.CountyResidence,
							D.IdentifiesAsGender, D.LastName, GETDATE(), 'D', LastModifiedBy
					FROM	Deleted D
		END
	END

GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{2ED5A6CB-8A35-47B9-8E69-037CD2DDA4CB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child${2ED5A6CB-8A35-47B9-8E69-037CD2DDA4CB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{70AD9E84-6C3C-47C8-BFC2-2081F0964950}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child${70AD9E84-6C3C-47C8-BFC2-2081F0964950}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{9AE560EB-C59C-41C7-AE1C-183041084FCB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child${9AE560EB-C59C-41C7-AE1C-183041084FCB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{D10B332F-7254-40C4-B322-E75BB6C1CD83}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child${D10B332F-7254-40C4-B322-E75BB6C1CD83}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{D5BAED79-6918-4F61-AD32-CCF308AD1433}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child${D5BAED79-6918-4F61-AD32-CCF308AD1433}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[ChildEthnicityID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child$ChildEthnicityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child$CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child$FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[IdentifiesAsGender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child$IdentifiesAsGender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[PlacementID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'INDEX', @level2name = N'Child$PlacementID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[ChildID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'ChildID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[LastInitial]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'LastInitial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[Nickname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'Nickname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[DOB]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'DOB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[Gender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[EthnicityID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'EthnicityID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[ChildPlacementID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'ChildPlacementID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[CountyID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'CountyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[SiblingsNames]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'SiblingsNames';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[SameHome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'SameHome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[Comments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'Comments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[LOTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'LOTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[CountySocialWorker]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'CountySocialWorker';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[CountyResidence]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'CountyResidence';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[IdentifiesAsGender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'IdentifiesAsGender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[LastName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[CreateDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'CreateDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[ModifyDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'ModifyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[duplicate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'COLUMN', @level2name = N'duplicate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{2ED5A6CB-8A35-47B9-8E69-037CD2DDA4CB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'CONSTRAINT', @level2name = N'Child${2ED5A6CB-8A35-47B9-8E69-037CD2DDA4CB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{70AD9E84-6C3C-47C8-BFC2-2081F0964950}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'CONSTRAINT', @level2name = N'Child${70AD9E84-6C3C-47C8-BFC2-2081F0964950}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{9AE560EB-C59C-41C7-AE1C-183041084FCB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'CONSTRAINT', @level2name = N'Child${9AE560EB-C59C-41C7-AE1C-183041084FCB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{D10B332F-7254-40C4-B322-E75BB6C1CD83}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'CONSTRAINT', @level2name = N'Child${D10B332F-7254-40C4-B322-E75BB6C1CD83}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[{D5BAED79-6918-4F61-AD32-CCF308AD1433}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'CONSTRAINT', @level2name = N'Child${D5BAED79-6918-4F61-AD32-CCF308AD1433}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Child].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Child', @level2type = N'CONSTRAINT', @level2name = N'Child$PrimaryKey';

