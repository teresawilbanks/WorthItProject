CREATE TABLE [dbo].[RequestDetails] (
    [LineID]         INT           IDENTITY (16900, 1) NOT NULL,
    [RequestID]      INT           NOT NULL,
    [ProductID]      INT           CONSTRAINT [DF__RequestDe__Produ__793DFFAF] DEFAULT ((0)) NOT NULL,
    [OrderQty]       INT           CONSTRAINT [DF__RequestDe__Order__7A3223E8] DEFAULT ((1)) NOT NULL,
    [WaitingOnQty]   INT           CONSTRAINT [DF__RequestDe__Waiti__7B264821] DEFAULT ((0)) NULL,
    [EstimatedValue] MONEY         CONSTRAINT [DF__RequestDe__Estim__7C1A6C5A] DEFAULT ((0)) NULL,
    [LastEditDate]   DATETIME2 (0) NULL,
    CONSTRAINT [PK_RequestDetails_1] PRIMARY KEY CLUSTERED ([LineID] ASC),
    CONSTRAINT [RequestDetails$ProductRequestDetails] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    CONSTRAINT [RequestDetails$RequestRequestDetails] FOREIGN KEY ([RequestID]) REFERENCES [dbo].[Request] ([RequestID]),
    CONSTRAINT [IX_RequestDetails_1] UNIQUE NONCLUSTERED ([RequestID] ASC, [ProductID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [RequestDetails$InventoryID]
    ON [dbo].[RequestDetails]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [RequestDetails$ProductRequestDetails]
    ON [dbo].[RequestDetails]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [RequestDetails$RequestID]
    ON [dbo].[RequestDetails]([RequestID] ASC);


GO
CREATE NONCLUSTERED INDEX [RequestDetails$RequestRequestDetails]
    ON [dbo].[RequestDetails]([RequestID] ASC);


GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[TR_AU_RequestDetails]	ON  [dbo].[RequestDetails] 
   FOR DELETE,UPDATE
AS 
IF EXISTS ( SELECT 0 FROM Deleted )
	BEGIN
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN
			INSERT INTO dbo.AU_RequestDetails 
						(LineID, RequestID, ProductID, OrderQty, LastEditDate, Operation)
					SELECT	D.Lineid, d.requestid, d.productid, d.orderqty, GETDATE(), 'U'
					FROM	Deleted D
		END
	ELSE
		BEGIN
			INSERT INTO dbo.AU_RequestDetails 
						(LineID, RequestID, ProductID, OrderQty, LastEditDate, operation)
					SELECT	D.Lineid, d.requestid, d.productid, d.orderqty, GETDATE(), 'D'
					FROM	Deleted D
		END
	END

GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[InventoryID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'INDEX', @level2name = N'RequestDetails$InventoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[ProductRequestDetails]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'INDEX', @level2name = N'RequestDetails$ProductRequestDetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'INDEX', @level2name = N'RequestDetails$RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[RequestRequestDetails]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'INDEX', @level2name = N'RequestDetails$RequestRequestDetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'COLUMN', @level2name = N'RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[ProductID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[OrderQty]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'COLUMN', @level2name = N'OrderQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[WaitingOnQty]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'COLUMN', @level2name = N'WaitingOnQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[EstimatedValue]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'COLUMN', @level2name = N'EstimatedValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[LastEditDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'COLUMN', @level2name = N'LastEditDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[ProductRequestDetails]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'CONSTRAINT', @level2name = N'RequestDetails$ProductRequestDetails';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestDetails].[RequestRequestDetails]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestDetails', @level2type = N'CONSTRAINT', @level2name = N'RequestDetails$RequestRequestDetails';

