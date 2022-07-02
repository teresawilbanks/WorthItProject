





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <8/18/2020,,>
-- Description:	<multiple queries used to determine statistical data of requests,,>
-- =============================================
CREATE            PROC [dbo].[sp_ReqStats]
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DELETE FROM tmpStats

    -- Insert statements for procedure here
	--SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>

	--Request Details Stats
SELECT Request.RequestID, Request.participationID, Request.RequestStatusID, Sum(([requestdetails].[estimatedvalue]*[OrderQty])) AS total
	into #RDstats
	FROM Request 
		LEFT OUTER JOIN (Product LEFT OUTER JOIN RequestDetails ON Product.ProductID = RequestDetails.ProductID) ON Request.RequestID = RequestDetails.RequestID
		GROUP BY Request.RequestID, Request.participationid, Request.RequestStatusID
		HAVING (((Request.participationid)<3)) AND (((Request.RequestStatusID)<26));

	--ProductNonInventory stats
SELECT Request.RequestID, Sum(([ProductQty]*[ProductValue])) AS total, Request.participationid, Request.RequestStatusID
	into #PNIstats
	FROM Request LEFT OUTER JOIN ProductNonInventory ON ProductNonInventory.RequestID = Request.RequestID
	GROUP BY Request.RequestID, Request.participationid, Request.RequestStatusID
	HAVING (((Request.participationid)<3)) AND (((Request.RequestStatusID)<26));

	--GT = GrandTotal statistics of all 3 values
SELECT r.RequestID,r.RequestTypeID,r.ValueNonInventoryItems, (r.ValueNonInventoryItems + COALESCE(RDS.total,0) + COALESCE(PNIS.total,0)) AS GRAND
	into #GT
	FROM Request AS R RIGHT JOIN #RDstats AS RDS ON r.RequestID = RDS.RequestID RIGHT JOIN #PNIstats AS PNIS ON r.RequestID = PNIS.RequestID;

	--add child
SELECT Request.RequestID, Request.ChildID, Request.RequestTypeID, GT.grand
	into #GTwC
	FROM Request RIGHT JOIN #GT AS GT ON Request.RequestID = GT.RequestID;

	--add county
SELECT Request.RequestID, Request.ChildID, Child.CountyID, Request.RequestTypeID, GC.GRAND, Request.participationid, Request.RequestStatusID
	into #GTwCwCTY
	FROM Child RIGHT JOIN (Request RIGHT JOIN #GTwC AS GC ON Request.RequestID = GC.RequestID) ON Child.ChildID = Request.ChildID
	WHERE (((Request.participationid)<3)) AND (((Request.RequestStatusID)<26));

	--add closed date and bagfilleddate
SELECT Request.requestid, Request.ChildID, Child.CountyID, Request.RequestTypeID, Request.RequestClosedDate, request.BagFilledDate, Year(request.BagFilledDate) AS ReqYear, County.CountyName, County.State, RequestType.RequestName, GTCC.GRAND, request.requeststatusid
	into #FinalStats  
	FROM Child RIGHT JOIN RequestType 
							RIGHT JOIN County
										RIGHT JOIN Request RIGHT JOIN #GTwCwCTY AS GTCC ON Request.RequestID = GTCC.RequestID
										ON County.CountyID = GTCC.CountyID
							ON (RequestType.RequestTypeID = Request.RequestTypeID) AND (RequestType.RequestTypeID = GTCC.RequestTypeID)
							ON (County.CountyID = Child.CountyID) AND (Child.ChildID = Request.ChildID);

INSERT INTO tmpStats (RequestID, ChildID,CountyID,RequestTypeID,RequestClosedDate,YEAR,CountyName,State,RequestName,GRAND, RequestStatusID, BagFilledDate)
	SELECT RequestID, ChildID,CountyID,RequestTypeID,RequestClosedDate,ReqYear,CountyName,State,RequestName,GRAND, requeststatusid, BagFilledDate FROM #FinalStats

DROP TABLE #FinalStats
DROP TABLE #GT
DROP TABLE #GTwC
DROP TABLE #GTwCwCTY
DROP TABLE #PNIstats
DROP TABLE #RDstats

END
