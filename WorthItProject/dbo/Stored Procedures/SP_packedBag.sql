


-- =============================================
-- Author:		Teresa Wilbanks
-- Create date: 02/10/2022
-- Description:	Procedure to update Request table after bag is packed
-- =============================================




CREATE                                    PROC [dbo].[SP_packedBag] @RequestID int, @packedName varchar(255), @cuser varchar(255)


AS

SET NOCOUNT ON

BEGIN

UPDATE Request
	SET BagFilledDate = getdate(),
		requeststatusid = 20,
		packedBy = @packedname,
		LastModifiedBy = @cuser,
		ModifyDate = getdate()
	WHERE RequestID = @RequestID

END

