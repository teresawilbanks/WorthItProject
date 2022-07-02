






CREATE                            PROC [dbo].[SP_TextSpecial] @RequestID int, @textMsg nvarchar(max), @phonenumber nvarchar(25)

AS
BEGIN

DECLARE @heading nvarchar (55)
DECLARE @autoreply nvarchar (255)
DECLARE @tMsg nvarchar (255)

SET @heading = 'Least of These Carolinas: '
SET @autoreply = '  * Automated message. Do not reply *'
SET @tMsg = @heading + @textMsg + @autoreply
	INSERT into TextsTosend (RequestID, PhoneNumber, TextMsg, sentbool)
		VALUES(@RequestID, @Phonenumber, @tMsg, 0)	
END

