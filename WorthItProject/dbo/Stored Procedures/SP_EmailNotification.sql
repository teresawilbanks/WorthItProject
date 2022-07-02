





-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE             PROCEDURE [dbo].[SP_EmailNotification] @RequestID int
AS
BEGIN

--DECLARE @phonenumber as nvarchar(20)
--DECLARE @contactID as int
--SET @contactID = (SELECT contactadultid from vwRequestReady rr join adult a on rr.CONTACTADULTid = a.adultid AND rr.RequestID = @RequestID)
--SET @Phonenumber = (SELECT CASE WHEN rectext = 1 Then a.phonenumberprimary 
--								WHEN rectext = 0 Then CASE WHEN AltRecText = 1 THEN a.AltPhone
--														ELSE a.PhoneNumberPrimary
--														END 
--								WHEN rectext is null THEN PhoneNumberPrimary
--							END AS phonenumber
--							from adult a where a.adultid = @contactID)
--DECLARE @tMsg as nvarchar(max);
--DECLARE @reqtype as nvarchar(250);
--DECLARE @puloc as nvarchar(250);
--DECLARE @Hours as nvarchar(255);
--SET @reqtype = (SELECT rt.requestname FROM requesttype rt join request r on rt.RequestTypeID = r.RequestTypeID AND r.requestid = @RequestID)
--SET @puloc = (SELECT pul.locaddress FROM BagPickupLocation pul join request r on pul.PULocationID = r.BagPickupLocation AND r.requestid = @requestid)
--SET @Hours = (SELECT pul.hoursofopperation FROM BagPickupLocation pul join request r on pul.PULocationID = r.BagPickupLocation and r.requestid = @requestid)

--IF @reqtype like 'Tracking%'
--	SET @reqtype = ''

--SET @tMsg = 'Least of These Carolinas Notification:  ' + @reqtype + ' request is ready for pick up at: ' + @puloc + '. Hours: ' + @hours + ' Reference REQUESTID: '+  CAST(@REQUESTID as nvarchar) + '. Please try to pickup within one week. Upon pickup scan QR code attached to your item or call our office at 704-215-4344 to confirm pickup.   *Automated message. Do not reply'

--INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
--	VALUES(@RequestID, @Phonenumber, @tMsg, 0)	
--END	

--BEGIN

	CREATE TABLE #ids
	(
		rn int,
		id int,
		ccemail varchar (max),
		ccname varchar (max),
		requesttype varchar (50),
		emailmessage varchar (max)		
	)

	INSERT into #ids (rn, id, ccemail, ccname, requesttype, emailmessage)
	SELECT distinct ROW_NUMBER() over(order by requestid) as rn, requestid, CCEmailAddress, CCName, requesttype, emailmessage
		FROM notificationemails where sentbool = 0 and requestID = @RequestID

	DECLARE @id int
	DECLARE @totalrows int = (select count(*) from #ids)
	DECLARE @currentrow int = 1
	DECLARE @email varchar(max)
	DECLARE @requesttype varchar(50)
	DECLARE @ccname varchar(max)
	DECLARE @bodytext nvarchar (max)
	
	WHILE @currentrow <= @totalrows
	
	BEGIN
		SELECT @ID = ID, @email = ccemail, @requesttype = requesttype, @ccname = ccname, @bodytext = emailmessage from #ids where rn = @currentrow

		select @bodytext		
		
		EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Notification',
			@recipients = @email,
			@body = @bodytext,					
			@subject = 'LOTC Notification - DO NOT REPLY'
				
		select @ID, @email
		UPDATE NotificationEmails
			SET SentBool = 1
			Where requestID = @id
		SET @currentrow = @currentrow +1
	
	END
END
