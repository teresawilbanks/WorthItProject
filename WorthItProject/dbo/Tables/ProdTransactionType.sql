CREATE TABLE [dbo].[ProdTransactionType] (
    [TransactionTypeID] INT            IDENTITY (1, 1) NOT NULL,
    [TransactionName]   NVARCHAR (255) NULL,
    [SortOrder]         INT            DEFAULT ((0)) NULL,
    [shortdesc]         NVARCHAR (25)  NULL,
    CONSTRAINT [ProdTransactionType$PrimaryKey] PRIMARY KEY CLUSTERED ([TransactionTypeID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProdTransactionType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProdTransactionType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProdTransactionType].[TransactionTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProdTransactionType', @level2type = N'COLUMN', @level2name = N'TransactionTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProdTransactionType].[TransactionName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProdTransactionType', @level2type = N'COLUMN', @level2name = N'TransactionName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProdTransactionType].[SortOrder]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProdTransactionType', @level2type = N'COLUMN', @level2name = N'SortOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ProdTransactionType].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ProdTransactionType', @level2type = N'CONSTRAINT', @level2name = N'ProdTransactionType$PrimaryKey';

