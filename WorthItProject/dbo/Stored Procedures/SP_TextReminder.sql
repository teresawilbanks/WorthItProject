







CREATE                 PROC [dbo].[SP_TextReminder] 
--Network for Good will be used for bulk reminder texts
AS
BEGIN

IF OBJECT_ID('tempdb..#reminder') IS NOT NULL
	DROP TABLE #Reminder
IF OBJECT_ID('tempdb..#textnumber') IS NOT NULL
	DROP TABLE #textnumber

--temp table to select correct phone number to text
SELECT r.requestid, Convert(varchar,r.appointmentdate,107) as [Mdy], format(r.AppointmentTime,'hh:mm') as HourMinute, e.place, e.address1, e.city, r.CareGiverAdultID, 	(CASE 
							WHEN PrimaryTextable = 1 and a.PhoneNumberPrimary is not null Then a.PhoneNumberPrimary
							WHEN AltTextable = 1 and a.altphone is not null Then a.AltPhone
							END) as textnumber
	INTO #textnumber
	from  request r join EventLocation e on r.eventlocationid = e.locationid join adult a on r.CareGiverAdultID = a.AdultID
	where campaignid = 98 and Requeststatusid <25


--temp table to order by phonenumber and assign rownumber based on phonenumber value
Select IDENTITY (int) AS IDcol, Requestid, Mdy, HourMinute, place, address1, city, CareGiverAdultID, textnumber, Row_number() Over (Partition by textnumber order by caregiveradultid) AS RowNumber
	INTO #reminder
	from  #textnumber

--delete duplicate phonenumber line items so each person receives only 1 text reminder
DELETE #reminder where rownumber >1

DECLARE @NumberRecords int = @@Rowcount
DECLARE @Requestid int = (SELECT top 1 Requestid from #reminder where rownumber = 1);
DECLARE @appointmentdate nvarchar (25) = (SELECT mdy from #reminder where #reminder.requestid = @requestid)
DECLARE @appointmenttime nvarchar (25) = (SELECT HourMinute from #reminder where #reminder.requestid = @requestid)
DECLARE @place nvarchar(max) = (SELECT place from #reminder where #reminder.requestid = @requestid)
DECLARE @Address1 nvarchar(max) = (SELECT address1 from #reminder where #reminder.requestid = @requestid)
DECLARE @city nvarchar(55) = (SELECT city from #reminder where #reminder.requestid = @requestid)
DECLARE @CGID int = (SELECT CareGiveradultid from #reminder where #reminder.requestid = @requestid)
DECLARE @phonenumber as nvarchar(20) = (SELECT textnumber from #reminder where #reminder.requestid = @requestid)
DECLARE @txtmsg nvarchar(max) = 'LOTC Appointment Reminder: Your 12 Hours of Christmas appointment is scheduled for: ' + @appointmentdate + ' at ' + @appointmenttime + '.  You will be going to ' + @place + ', ' + @address1 + ', ' + @city + ' . We look forward to seeing you there.  **Automated message, DO NOT REPLY**'
select * from #reminder
--INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
--		VALUES(@RequestID, @Phonenumber, @txtMsg, 0)


END
