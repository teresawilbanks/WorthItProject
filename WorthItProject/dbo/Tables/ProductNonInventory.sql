CREATE TABLE [dbo].[ProductNonInventory] (
    [NonInventoryProductID] INT            IDENTITY (1, 1) NOT NULL,
    [ProductName]           NVARCHAR (255) NULL,
    [ProductQty]            INT            DEFAULT ((0)) NULL,
    [ProductValue]          INT            DEFAULT ((0)) NULL,
    [RequestID]             INT            DEFAULT ((0)) NULL,
    CONSTRAINT [ProductNonInventory$PrimaryKey] PRIMARY KEY CLUSTERED ([NonInventoryProductID] ASC),
    CONSTRAINT [ProductNonInventory$RequestProductNonInventory] FOREIGN KEY ([RequestID]) REFERENCES [dbo].[Request] ([RequestID])
);


GO
CREATE NONCLUSTERED INDEX [ProductNonInventory$RequestID]
    ON [dbo].[ProductNonInventory]([RequestID] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductNonInventory$RequestProductNonInventory]
    ON [dbo].[ProductNonInventory]([RequestID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'INDEX', @level2name = N'ProductNonInventory$RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[RequestProductNonInventory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'INDEX', @level2name = N'ProductNonInventory$RequestProductNonInventory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[NonInventoryProductID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'COLUMN', @level2name = N'NonInventoryProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[ProductName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'COLUMN', @level2name = N'ProductName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[ProductQty]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'COLUMN', @level2name = N'ProductQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[ProductValue]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'COLUMN', @level2name = N'ProductValue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'COLUMN', @level2name = N'RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'CONSTRAINT', @level2name = N'ProductNonInventory$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductNonInventory].[RequestProductNonInventory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductNonInventory', @level2type = N'CONSTRAINT', @level2name = N'ProductNonInventory$RequestProductNonInventory';

