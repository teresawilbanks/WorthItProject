



CREATE       PROC [dbo].[ProdTransMultiForm] @ProductID int, @TransactionTypeID int, @TransactionQty int, @Comment nvarchar(max)
AS
BEGIN
	INSERT INTO [dbo].[ProductTransaction]	
			(ProductID, TransactionTypeID, TransactionQty, Comment)
		VALUES
			(@ProductID, @TransactionTypeID, @TransactionQty, @Comment)
END
