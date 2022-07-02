




CREATE                                                PROC [dbo].[SP_TextNotification] @RequestID int
AS
BEGIN



DECLARE @notification as int
DECLARE @phonenumber as nvarchar(20)
DECLARE @contactID as int
DECLARE @phone1 as nvarchar(20)
DECLARE @phone2 as nvarchar(20)
DECLARE @text1 as int
DECLARE @text2 as int

SET @notification = (SELECT exception from request where request.requestid = @requestid)
SET @contactID = (SELECT CompletionContactPersonID from vwRequestReady rr join adult a on rr.CompletionContactPersonID = a.adultid AND rr.RequestID = @RequestID)
SET @phone1 = (SELECT phonenumberprimary from adult a where a.adultid = @contactID)
SET @phone2 = (SELECT altphone from adult a where a.adultid = @contactID)
SET @text1 = (SELECT primarytextable from adult a where a.adultid = @contactid)
SET @text2 = (SELECT alttextable from adult a where a.adultid = @contactid)


IF @phone1 is not null and @text1 = 1
	SET @phonenumber = @phone1
ELSE IF @phone2 is not null and @text2 = 1
	SET @phonenumber = @phone2
ELSE
	RETURN

--create text message
DECLARE @tMsg as nvarchar(max);
DECLARE @reqtype as nvarchar(250);
DECLARE @puloc as nvarchar(250);
DECLARE @Hours as nvarchar(255);
SET @reqtype = (SELECT rt.requestname FROM requesttype rt join request r on rt.RequestTypeID = r.RequestTypeID AND r.requestid = @RequestID)
SET @puloc = (SELECT pul.locaddress FROM BagPickupLocation pul join request r on pul.PULocationID = r.BagPickupLocation AND r.requestid = @requestid)
SET @Hours = (SELECT pul.hoursofopperation FROM BagPickupLocation pul join request r on pul.PULocationID = r.BagPickupLocation and r.requestid = @requestid)


IF @reqtype like 'Tracking%'
	SET @reqtype = ''

IF @notification = 0
	SET @tMsg = 'Least of These Carolinas Notification:  ' + @reqtype + ' request is ready for pick up at: ' + @puloc + '. Hours: ' + @hours + ' Reference REQUESTID: '+  CAST(@REQUESTID as nvarchar) + '. Please try to pickup within one week. Upon pickup scan QR code attached to your item or call our office at 704-215-4344 to confirm pickup.   *Automated message. Do not reply'

	INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
		VALUES(@RequestID, @Phonenumber, @tMsg, 0)	
END

