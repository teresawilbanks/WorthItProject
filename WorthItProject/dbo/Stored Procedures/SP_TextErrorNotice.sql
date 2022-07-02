






CREATE                                      PROC [dbo].[SP_TextErrorNotice] 
AS

BEGIN

	CREATE TABLE #ids
	(
		rn int,
		id int,
		RequestID int,
		ccphonenumber varchar (max),
		requesttype varchar (50)
	)

	INSERT into #ids (rn, id, requestid, ccphonenumber, requesttype)
	SELECT distinct ROW_NUMBER() over(order by t.requestid) as rn, t.TextID, t.requestid, phonenumber, rt.RequestName
		FROM textstosend t
			join request r on t.requestid = r.requestid
			join requesttype rt on r.RequestTypeID = rt.RequestTypeID
		where StatusCallBack = 'undelivered' and ErrorProcessed = 0

--select * from #ids

	DECLARE @id int
	DECLARE @requestid int
	DECLARE @totalrows int = (select count(*) from #ids)
	DECLARE @currentrow int = 1
	DECLARE @email varchar(max)
	DECLARE @requesttype varchar(50)
	DECLARE @bodytext nvarchar (max)
	DECLARE @phonenumber nvarchar (max)

	WHILE @currentrow <= @totalrows
	
	BEGIN
		SELECT	@ID = ID, 
				@requestid = requestid, 
				@email = 'info@lotcarolinas.com',
				@requesttype = requesttype,
				@phonenumber = ccphonenumber
		from #ids where rn = @currentrow

--email body
		SELECT @bodytext = 'Undeliverable Text Notification:  RequestID ' + ISNULL(@requestID,'') + ' for  ' + ISNULL(@requesttype,'')  
						
--select @bodytext		
	

--send email				
		EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Notification',
			@recipients = @email,
			@body = @bodytext,					
			@subject = 'Undelivered Text Notification - DO NOT REPLY'


		select @ID, @email
		UPDATE TextsToSend
			SET ErrorProcessed = 2
			Where TextID = @id
		SET @currentrow = @currentrow +1
	
	END

drop table #ids

END
