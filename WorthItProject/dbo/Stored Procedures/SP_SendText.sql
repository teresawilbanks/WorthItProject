




CREATE       PROC [dbo].[SP_SendText] @RequestID int
AS
BEGIN

UPDATE TextsToSend
	SET SentBool = 0,
	createdate = getdate()
	WHERE Requestid = @RequestID and SentBool = 9

SELECT requestid, phonenumber, textmsg, getdate() as createdate
	INTO #newMsg
	FROM TextsToSend
	WHERE RequestID = @Requestid and SentBool in (1,2)

INSERT INTO textstosend (requestid, phonenumber, TextMsg, createdate)
	SELECT requestid, phonenumber, textmsg, createdate
		FROM #newmsg where requestid = @RequestID

DROP TABLE #newMsg

END
