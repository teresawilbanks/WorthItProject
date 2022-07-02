





CREATE                            PROC [dbo].[SP_TextNoticeToLocation] @RequestID int
AS
BEGIN

DECLARE @Location int;
DECLARE @reqType int;
DECLARE @Contact int;
DECLARE @phoneNumber nvarchar (20);
DECLARE @tMsg as nvarchar(max);

SET @Location =(SELECT BagPickupLocation FROM Request where request.requestid = @requestid)
SET @reqtype = (SELECT rt.requestname FROM requesttype rt join request r on rt.RequestTypeID = r.RequestTypeID AND r.requestid = @RequestID)
SET @Contact = (SELECT adultid from LocationContact where LocationContact.LocationID = @location)
SET @phoneNumber = (SELECT phonenumberprimary from Adult where adult.adultid = @Contact)
SET @tMsg = 'Least of These Carolinas Notification: ' + @reqtype + ' REQUESTID: '+  CAST(@REQUESTID as nvarchar) + ' is on the way to your location.  Thank you!  **Automated Message - DO NOT REPLY **'

	INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
		VALUES(@RequestID, @Phonenumber, @tMsg, 0)	
END

