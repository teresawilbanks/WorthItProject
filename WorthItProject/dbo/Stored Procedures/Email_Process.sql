





CREATE                   PROC [dbo].[Email_Process] AS
	BEGIN 
	BEGIN TRY
	BEGIN TRAN
		DECLARE @EmailIds table (EmailId int NOT NULL, Body varchar(max) NULL, [Subject] varchar(max) NULL)
		--set non request emails to processed
		UPDATE EMail
		SET EmailTypeID = 1
			WHERE (Subject like '%Request%'
				OR Subject like '%Bridge%')
				and processed = 0

		UPDATE EMail
		SET EmailTypeID = 2
			WHERE Subject like '%Volunteer%'
				and processed = 0

		UPDATE EMail
		Set EmailTypeID = 3
			WHERE (Subject not like 'Feedback via the LOT%'
				and subject not like '%volunteer%')
				and processed = 0

		UPDATE Email
		SET processed = 1
			WHERE EmailTypeID IN (3,2)
				and processed = 0

		INSERT INTO @EmailIds (EmailId, Body, [subject])
			SELECT EmailId, Body, [subject] FROM EMail
			WHERE processed = 0
	COMMIT
END TRY
BEGIN CATCH
	WHILE(@@TRANCOUNT > 0)
	BEGIN
		ROLLBACK
	END
END CATCH
--select * from @EmailIds
--return

DECLARE @EmailId int, @Body varchar(max), @subject varchar(max),  @tempEmailId int
DECLARE @bodyrow TABLE  (rowtext varchar(max))
DECLARE @rowstrip TABLE (EmailID int, stripText varchar(max) NULL)

--Create temp table to loop through emails and split string
WHILE EXISTS(SELECT * FROM @EmailIds)
BEGIN TRY
	BEGIN TRAN
		SELECT TOP 1 @EmailId = EMailId, @Body = Body from @EmailIds ORDER BY EmailId
		
		DELETE FROM @EmailIds WHERE EmailId = @EmailId

		select @EmailId AS EmailId, @Body AS Body

	--Replace all "<tr" with "|", then split string at pipe creating new row for each "<tr" in the body of email
		DELETE FROM @bodyrow

		INSERT INTO @bodyrow (rowtext)
		SELECT value FROM STRING_SPLIT(REPLACE(@body,'<tr', '|'),'|')

	--SELECT * FROM @bodyrow
	--Remove all HTML with udf
		DELETE FROM @rowstrip

		INSERT INTO @rowstrip (EMailId, stripText)
		SELECT @EmailId, dbo.udf_Stripall(rowtext) from @bodyrow

	--Split into two columns 
		INSERT INTO EmailRow (EmailID, EmailRowLabel, EmailRowValue, EmailRowText)
		SELECT EmailId, SUBSTRING(stripText, 0, CHARINDEX(':', stripText, 0)) AS EmailRowLabel, SUBSTRING(stripText, CHARINDEX(':', stripText, 0) + 1, LEN(stripText)) AS EmailRowValue, stripText AS EmailRowText 
		FROM @rowstrip
		WHERE LTRIM(RTRIM(striptext)) <> ''

	-- UPDATE EmailRow
	-- SET EmailRowLabel = dbo.StripNonAlphaNumeric(EmailRowLabel)
		UPDATE EmailRow
		SET EmailRowValue = dbo.StripNonAlphaNumeric(EmailRowValue)
		WHERE EmailId = @EmailId

	--INSERT into email row for event
declare @firstWord varchar(10) = 'LOT'
declare @lastword varchar(10) = 'request'
declare @start int 
declare @stop int
declare @stringlength INT
declare @event varchar(50)

select @start = charindex(@firstword,subject) + LEN(@firstword)+1
	from email where emailid = @emailid
select @stop = charindex(@lastword,subject)
	from email where emailid = @emailid
Select @stringlength = @stop - @start

Select @event = Substring(subject,@start,@stringlength)
	From Email where emailid = @emailid
		
INSERT INTO Emailrow(EmailID, EmailRowLabel, EmailRowValue, EmailRowText)
			SELECT e.EmailId, 'Request Type', @event, e.subject
			FROM email AS e
			WHERE e.emailid = @emailid
			and (e.subject like '%Bridge Camp%'
				or e.subject like '%christmas%'
				or e.subject like '%shoes of%')
			and e.processed = 0

	--update pendingdata
		INSERT INTO PendingData (EmailID, EmailDateTime, EmailSubject, LOTFormNumber, EmailTypeID)
			SELECT E.EmailID, E.Date, e.Subject, Substring(e.subject,CHARINDEX('[',e.subject,1),CHARINDEX(']',e.subject,1)), e.emailtypeid
			FROM Email AS E
			WHERE E.EmailID = @emailid
			and e.processed = 0

--update email table processed
			UPDATE Email
				SET processed = 1
				WHERE emailID = @EmailId
				

	COMMIT
END TRY
BEGIN CATCH
	WHILE(@@TRANCOUNT > 0)
	BEGIN
		ROLLBACK
	END
END CATCH	
END

EXEC dbo.SetPendingData
EXEC dbo.sp_ReqReceived
EXEC dbo.SetTempRequest

