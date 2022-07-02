CREATE TABLE [dbo].[ProductTransactionQ] (
    [QueueID]           INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]         INT           NULL,
    [TransactionTypeID] INT           NULL,
    [TransactionDate]   DATETIME      CONSTRAINT [DF__ProductTr__Trans__141CDE74] DEFAULT (getdate()) NULL,
    [transactionQty]    INT           CONSTRAINT [DF__ProductTr__trans__151102AD] DEFAULT ((0)) NULL,
    [ModifiedBy]        NVARCHAR (50) NULL,
    [active]            INT           NULL,
    CONSTRAINT [PK__ProductT__135C314DFF1A9CD5] PRIMARY KEY CLUSTERED ([QueueID] ASC),
    CONSTRAINT [FK__ProductTr__Produ__16F94B1F] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    CONSTRAINT [FK__ProductTr__Trans__17ED6F58] FOREIGN KEY ([TransactionTypeID]) REFERENCES [dbo].[ProdTransactionType] ([TransactionTypeID])
);

