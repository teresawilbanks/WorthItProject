














CREATE                              PROC [dbo].[SP_TextNotification2] @RequestID int
AS
BEGIN

DECLARE @phonenumber as nvarchar(20)
DECLARE @contactID as int
SET @contactID = (SELECT completioncontactpersonid from vwRequestReady rr join adult a on rr.CompletionContactPersonID = a.adultid AND rr.RequestID = @RequestID)
SET @Phonenumber =(SELECT PhoneNumberPrimary from adult a where a.adultid = @contactID)
DECLARE @tMsg as nvarchar(max);
DECLARE @reqtype as nvarchar(250);
DECLARE @puloc as nvarchar(250);
DECLARE @Hours as nvarchar(255);
SET @reqtype = (SELECT rt.requestname FROM requesttype rt join request r on rt.RequestTypeID = r.RequestTypeID AND r.requestid = @RequestID)
SET @puloc = (SELECT pul.locaddress FROM BagPickupLocation pul join request r on pul.PULocationID = r.BagPickupLocation AND r.requestid = @requestid)
SET @Hours = (SELECT pul.hoursofopperation FROM BagPickupLocation pul join request r on pul.PULocationID = r.BagPickupLocation and r.requestid = @requestid)

SET @tMsg = 'LOTC Reminder: You have a ' + @reqtype + ' waiting for pick up at: ' + @puloc + '. Hours: ' + @hours + ' Please pick up ASAP. If you cannot pick up this item, or have already picked it up, call our office. Reference REQUESTID: '+  CAST(@REQUESTID as nvarchar) + '. Scan QR code attached to your item or call our office at 704-215-4344 to confirm pickup.  *Automated message. Do not reply'

INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
	VALUES(@RequestID, @Phonenumber, @tMsg, 0)	
END

