CREATE TABLE [dbo].[ProductTransaction] (
    [TransactionID]     INT            IDENTITY (1, 1) NOT NULL,
    [TransactionDate]   DATETIME2 (0)  DEFAULT (getdate()) NOT NULL,
    [ProductID]         INT            DEFAULT ((0)) NOT NULL,
    [TransactionQty]    INT            DEFAULT ((0)) NOT NULL,
    [StaffID]           INT            NULL,
    [TransactionTypeID] INT            NULL,
    [Comment]           NVARCHAR (255) NULL,
    [RequestID]         INT            DEFAULT ((0)) NULL,
    CONSTRAINT [ProductTransaction$PrimaryKey] PRIMARY KEY CLUSTERED ([TransactionID] ASC),
    CONSTRAINT [ProductTransaction${F6457985-CD7B-406F-AB36-2A3FE80922FB}] FOREIGN KEY ([TransactionTypeID]) REFERENCES [dbo].[ProdTransactionType] ([TransactionTypeID]),
    CONSTRAINT [ProductTransaction$ProductProductTransaction] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
);


GO
CREATE NONCLUSTERED INDEX [ProductTransaction${F6457985-CD7B-406F-AB36-2A3FE80922FB}]
    ON [dbo].[ProductTransaction]([TransactionTypeID] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTransaction$InventoryItemID]
    ON [dbo].[ProductTransaction]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTransaction$ProductProductTransaction]
    ON [dbo].[ProductTransaction]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTransaction$RequestID]
    ON [dbo].[ProductTransaction]([RequestID] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTransaction$StaffID]
    ON [dbo].[ProductTransaction]([StaffID] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTransaction$TransactionTypeID]
    ON [dbo].[ProductTransaction]([TransactionTypeID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[{F6457985-CD7B-406F-AB36-2A3FE80922FB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'INDEX', @level2name = N'ProductTransaction${F6457985-CD7B-406F-AB36-2A3FE80922FB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[InventoryItemID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'INDEX', @level2name = N'ProductTransaction$InventoryItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[ProductProductTransaction]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'INDEX', @level2name = N'ProductTransaction$ProductProductTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'INDEX', @level2name = N'ProductTransaction$RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[StaffID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'INDEX', @level2name = N'ProductTransaction$StaffID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[TransactionTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'INDEX', @level2name = N'ProductTransaction$TransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[TransactionID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'TransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[TransactionDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'TransactionDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[ProductID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'ProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[TransactionQty]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'TransactionQty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[StaffID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'StaffID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[TransactionTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'TransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[Comment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'COLUMN', @level2name = N'RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[{F6457985-CD7B-406F-AB36-2A3FE80922FB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'CONSTRAINT', @level2name = N'ProductTransaction${F6457985-CD7B-406F-AB36-2A3FE80922FB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'CONSTRAINT', @level2name = N'ProductTransaction$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProductTransaction].[ProductProductTransaction]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProductTransaction', @level2type = N'CONSTRAINT', @level2name = N'ProductTransaction$ProductProductTransaction';

