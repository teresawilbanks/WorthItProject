

-- =============================================
-- Author:		Keith Sherrill
-- Create date: 02/08/2022
-- Description:	Procedure to return count of items in a group and count of completed items in the group
-- =============================================

CREATE     PROCEDURE [dbo].[sp_RequestGroupCounts] 
	@RequestID INT, @GroupCount INT OUTPUT, @CompletedCount INT OUTPUT
AS

DECLARE @RequestGroup INT

SET NOCOUNT ON

BEGIN

	-- Get the group ID for the Request
	SET @RequestGroup = (SELECT RequestGroup
		from Request
		join tempRequest on Request.EmailID = tempRequest.EMailID
		where Request.RequestID = @RequestID
		group by RequestGroup)

	-- Get the group count for the group request
	SET @GroupCount = (SELECT Count(RequestGroup) 
		from Request
		join tempRequest on Request.EmailID = tempRequest.EMailID
		where RequestGroup = @RequestGroup
		group by RequestGroup )


	-- Get the group COMPLETED count for the group request
	SET @CompletedCount = (SELECT Count(RequestGroup) 
		from Request
		join tempRequest on Request.EmailID = tempRequest.EMailID
		where RequestGroup = @RequestGroup
		and Request.RequestStatusID = '20'
		group by RequestGroup)

	SELECT @GroupCount, @CompletedCount
END
