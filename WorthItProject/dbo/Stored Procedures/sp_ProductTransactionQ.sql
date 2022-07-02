

-- =============================================
-- Author:		Keith Sherrill
-- Create date: 02/15/2022
-- Description:	Procedure to update inventory. 
-- Inserts product acquisition, disposal, and audit quantities from 
-- the ProductTransactionQ table to the ProductTransaction table.
-- =============================================

CREATE     PROC [dbo].[sp_ProductTransactionQ] AS

SET NOCOUNT ON

DECLARE @QueueID INT, @ProductID INT, @transactionQty INT
, @row_count INT, @row_nbr INT, @QtyOnHand INT

BEGIN
	-- Insert acquisition transaction qty as is.
	INSERT INTO ProductTransaction (productid, TransactionQty, TransactionTypeID)
		SELECT Productid, transactionqty, TransactionTypeID
			FROM ProductTransactionQ
			WHERE TransactionTypeID in (2,5) AND active = 1

	-- Clear the acquisition transaction records from the Q table.
	DELETE ProductTransactionQ
		WHERE TransactionTypeID in (2,5)

	-- Insert disposal transaction qty as negative quantity
	INSERT INTO ProductTransaction (productid, TransactionQty, TransactionTypeID)
			SELECT Productid, transactionqty * -1, TransactionTypeID
				FROM ProductTransactionQ
				WHERE TransactionTypeID in (3,6) AND active = 1

	-- Clear the disposal transaction records from the Q table.
	DELETE ProductTransactionQ
		WHERE TransactionTypeID in (3,6)

	-- Process each audit transaction (type = 4)
	-- Calculate transaction qty using current on-hand qty and audit quantity.
	-- Get count of number of active audit rows in Q table.
	SET @row_count = ( SELECT COUNT(1) FROM ProductTransactionQ
	WHERE TransactionTypeID = 4	AND active = 1 )

	WHILE @row_count > 0 
		BEGIN
			-- For each row, get the QueueID, ProductID, and transactionQty
			SELECT TOP 1 @QueueID = QueueID, @ProductID = ProductID, @transactionQty = transactionQty
			FROM ProductTransactionQ
			WHERE TransactionTypeID = 4
			AND active = 1
			ORDER BY ProductTransactionQ.ProductID

			-- Get the on-hand quantity for the Product ID
			SET @QtyOnHand = ( SELECT Sum(TransactionQty) 
				FROM ProductTransaction
				WHERE ProductID = @ProductID )

			-- Subtract the on-hand quantity from the audit quantity
			SET @transactionQty = @transactionQty - @QtyOnHand

			-- Insert the audit transaction
			INSERT INTO ProductTransaction (productid, TransactionQty, TransactionTypeID)
			SELECT @ProductID, @transactionQty, 4
	
			-- Clear this audit record fro the Q table.
			DELETE ProductTransactionQ
			WHERE QueueID = @QueueID 
					
			-- Decrement the row count
			SET @row_count = @row_count - 1
		END

		-- Ensure all rows, including inactive ones, are cleared from the Q table.
		DELETE ProductTransactionQ
END
