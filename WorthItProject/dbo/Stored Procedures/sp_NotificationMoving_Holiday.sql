-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_NotificationMoving/Holiday] AS
	-- Add the parameters for the stored procedure here
	
BEGIN

	CREATE TABLE #ids
	(
		rn int,
		id int,
		rcbemail varchar (max)
	)

	INSERT into #ids (rn, id, rcbemail)
	SELECT distinct ROW_NUMBER() over(order by pendingrequestid) as rn, pendingrequestid, rcbemail
		FROM PendingData where processed = 0

	DECLARE @id int
	DECLARE @totalrows int = (select count(*) from #ids)
	DECLARE @currentrow int = 1
	DECLARE @email varchar(max)

	WHILE @currentrow <= @totalrows
	
	BEGIN
		SET @ID = (SELECT ID from #ids where rn = @currentrow)
		SET @email = (SELECT rcbemail from #ids where rn = @currentrow)

		EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Notification',
			@recipients = @email,
			@body = 'Thank you for contacting Least of These Carolinas! It is an exciting time for us as we are in the process of moving to our new 18,000 square foot office across town!! We will be completely in and ready to serve children in foster care on Monday, January 4, 2021.	
	
						During this transition we still want to SERVE children & families that need emergency items and support.

						If this is a true emergency – please contact Susanna Kavanaugh @ 704-616-5172 OR Selina Johnson @ 704-466-6262.

						We wish everyone a great Christmas and we look forward to serving you in 2021

						Susanna Kavanaugh
						Executive Director
						Least of These Carolinas

						“Do for ONE what you wish you could do for everyone” – Andy Stanley',
			@subject = 'LOTC Moving/Holiday Notification'
		select @ID, @email
		SET @currentrow = @currentrow +1
	
	END
END
select * from #ids
drop table #ids
