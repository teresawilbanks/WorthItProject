



CREATE                                               PROC [dbo].[SP_TextAppointment] @RequestID int
AS
BEGIN

DECLARE @notification as int;
DECLARE @phonenumber as nvarchar(20);
DECLARE @contactID as int;
DECLARE @phone1 as nvarchar(20)
DECLARE @phone2 as nvarchar(20)
DECLARE @text1 as int
DECLARE @text2 as int
DECLARE @appointmentdate as nvarchar(55);
DECLARE @Appointmenttime as datetime;
DECLARE @tMsg as nvarchar(max);
DECLARE @reqtype as nvarchar(250);
DECLARE @place as nvarchar(250);
DECLARE @eloc as nvarchar(250);
DECLARE @eloccity as nvarchar(250);

SET @notification = (SELECT exception from request where request.requestid = @requestid)
SET @contactID = (SELECT CASE WHEN completioncontactjobtype = 1 Then caregiveradultid
								WHEN completioncontactjobtype = 2 Then socialworkeradultid
								WHEN CompletionContactJobType = 3 then GALAdultID
								end As contactid
							FROM request where requestid = @RequestID)
SET @phone1 = (SELECT phonenumberprimary from adult a where a.adultid = @contactID)
SET @phone2 = (SELECT altphone from adult a where a.adultid = @contactID)
SET @text1 = (SELECT primarytextable from adult a where a.adultid = @contactid)
SET @text2 = (SELECT alttextable from adult a where a.adultid = @contactid)
SET @reqtype = (SELECT rt.requestname FROM requesttype rt join request r on rt.RequestTypeID = r.RequestTypeID AND r.requestid = @RequestID)
SET @place = (SELECT e.place from EventLocation e join request r on e.locationid = r.EventLocationID and r.requestid = @requestid)
SET @eloc = (SELECT e.Address1 FROM EventLocation e join request r on e.LocationID = r.EventLocationID AND r.requestid = @requestid)
SET @eloccity = (SELECT e.city FROM EventLocation e join request r on e.LocationID = r.EventLocationID and r.requestid = @requestid)
SET @appointmentdate = (SELECT Convert(varchar,appointmentdate,107) as [MMM DD,YYY] from request where requestid = @requestid)
SET @appointmenttime = (SELECT appointmenttime from Request where requestid = @requestid)

	IF @phone1 is not null and @text1 = 1
		SET @phonenumber = @phone1
	ELSE IF @phone2 is not null and @text2 = 1
		SET @phonenumber = @phone2
	ELSE
		RETURN

IF @notification = 0
	SET @tMsg = 'Least of These Carolinas Notification:  Your ' + @reqtype + ' appointment is on ' + @appointmentdate + ' at ' + format(@appointmenttime, 'hh:mm tt') + '. Location: ' + @place + ' '+  @eloc + ' ' + @eloccity + '. If you have any questions about your appointment, please call 704-215-4344.  *This is an automated message. Do not reply'

	INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
		VALUES(@RequestID, @Phonenumber, @tMsg, 0)	
END

