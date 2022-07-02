


CREATE                            PROC [dbo].[SP_MissingFormNumber]
	
AS

	IF EXISTS(SELECT [name] FROM tempdb.sys.tables WHERE [name] like '#missingnumber%') 
		BEGIN
			DROP TABLE #missingnumber;
		END;

BEGIN	
	WITH CTE_Gaps (Requesttypeid, requestdate, status, LOTFormNumber, MaxNumber, NextNumber, prevnumber) AS
	(
		SELECT Requesttypeid, requestdate, status, lotFormNumber, max(lotformnumber) OVER (PARTITION BY RequestTypeid ORDER BY requesttypeid) MaxNumber, LEAD(lotformnumber) OVER (PARTITION BY requesttypeid ORDER BY Lotformnumber) As NextNumber, LAG(lotformnumber) OVER (PARTITION BY requesttypeid ORDER BY lotformnumber) As PrevNumber
		from temprequest 
		
	)
	
	SELECT lotformnumber + 1 as missing
	INTO #MissingNumber
	FROM CTE_GAPS
	WHERE  lotformnumber <> maxnumber and nextnumber <> LOTFormNumber + 1 and requestdate > '9/1/2021' and requesttypeid in (6,7,8)
	ORDER BY Requesttypeid, lotformnumber
END

--select * from #missingnumber
WHILE EXISTS (Select * from #MissingNumber)
BEGIN

	DECLARE @tMsg as nvarchar(max);
	DECLARE @missing as nvarchar(10);

	set @missing = (SELECT top 1 missing from #missingnumber)
	SET @tMsg = 'Missing form number:  ' + @missing

		INSERT into TextsTosend (PhoneNumber, TextMsg, sentbool)
			VALUES('7046899897', @tMsg, 0)	

	Delete #missingnumber where missing = @missing
END

