



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE         PROCEDURE [dbo].[sp_ReqReceived] AS
	-- Add the parameters for the stored procedure here
	
BEGIN

	CREATE TABLE #ids
	(
		rn int,
		id int,
		rcbemail varchar (max),
		rcbname varchar (max),
		requesttype varchar (50),
		child varchar (max),
		LOTFormNumber nvarchar (max),
		RCBPhonenumber nvarchar (max),
		cgemail nvarchar(max)
		
	)

	INSERT into #ids (rn, id, rcbemail, rcbname, requesttype, child, LOTFormNumber, rcbphonenumber, cgemail)
	SELECT distinct ROW_NUMBER() over(order by pendingrequestid) as rn, pendingrequestid, rcbemail, RequestCompletedby, requesttype, ChildFirstName, LOTFormNumber, RCBPhoneNumber, CGEmail
		FROM PendingData where processed = 0 and RecdEmailSent = 0

	DECLARE @id int
	DECLARE @totalrows int = (select count(*) from #ids)
	DECLARE @currentrow int = 1
	DECLARE @email varchar(max)
	DECLARE @requesttype varchar(50)
	DECLARE @child varchar(max)
	DECLARE @LOTFormNumber varchar(max)
	DECLARE @bodytext nvarchar (max)
	DECLARE @rcb nvarchar (max)
	DECLARE @phonenumber nvarchar (max)
	DECLARE @textmsg nvarchar (max)

	WHILE @currentrow <= @totalrows
	
	BEGIN
		SELECT @ID = ID, @email = COALESCE (rcbemail, cgemail), @requesttype = requesttype, @child = child, @lotformnumber = lotformnumber, @rcb = rcbname, @phonenumber = rcbphonenumber from #ids where rn = @currentrow

--email body
		SELECT @bodytext = ISNULL(@rcb,'') + ',

Thank you for contacting Least of These Carolinas.  We have received your ' + ISNULL(@requesttype,'') + ' request for ' + ISNULL(@child,'') + '.  Your LOT Form Request Number is ' + ISNULL(@lotformnumber,'') + '.  
						
Susanna Kavanaugh
Executive Director
Least of These Carolinas

"Do for ONE what you wish you could do for everyone” – Andy Stanley';

		select @bodytext		
	
-- send text 
		--SELECT @textmsg = 'LOTC Noficiation: We have received your ' + ISNULL(@requesttype,'') + ' request for ' + ISNULL(@child,'') + '.  Your LOT Form Request Number is ' + ISNULL(@lotformnumber,'') + ' .'
		--INSERT INTO TextsToSend (PhoneNumber, TextMsg, SentBool)
		--VALUES(@Phonenumber, @textMsg, 0)		

--send email				
		EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Notification',
			@recipients = @email,
			@body = @bodytext,					
			@subject = 'LOTC Request received confirmation - DO NOT REPLY'


		select @ID, @email
		UPDATE PendingData
			SET RecdEmailSent = 1
			Where pendingrequestID = @id
		SET @currentrow = @currentrow +1
	
	END

END
