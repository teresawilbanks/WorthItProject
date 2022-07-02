

-- =============================================
-- Author:		Keith Sherrill
-- Create date: 11/15/2021
-- Description:	Procedure to monitor status of deliveries and send Text and/or Email messages accordingly.
--				Should be scheduled to run Monday-Thursday at appropriate times.
--				Note: as of 11/29/21, per Teresa, text messages are only sent if there are bags for pickup.
-- 02/01/2022 Keith S - Added RequestGroup logic to only send text/email when all items in group are ready.
-- =============================================

CREATE     PROCEDURE [dbo].[sp_MonitorDelivery] AS

SET NOCOUNT ON

BEGIN

	DECLARE @count int, @weekday varchar(20), @row_nbr smallint, @row_count smallint = 0, @reqID int, @phone nvarchar(20)
	, @bags_exist_msg nvarchar (max), @no_bags_msg nvarchar (max), @txt_msg nvarchar (max), @pri_phone nvarchar(20)
	, @pri_txt bit, @alt_phone nvarchar(10), @alt_txt bit, @subject varchar(50), @email1_count smallint = 0, @email2_count smallint = 0
	, @error_flag int = 0, @email nvarchar (max), @text_err_msg nvarchar (max), @previous_phone nvarchar(20) = '', @text_count smallint = 0
	, @remind_msg nvarchar (max), @remind_count smallint = 0, @bodytext nvarchar (max), @request_ids nvarchar(max), @RowNbr int

	-- Text messages
	SET @bags_exist_msg = 'LOTC Notification: We have bags ready for pickup. Our business hours are 9am to 2pm. If you can not get to our office before 2pm, please call 704-215-4344 and let the receptionist know your eta. AUTOMATED MESSAGE - DO NOT REPLY'
	SET @remind_msg = 'LOTC Reminder: please pick up by 2:00 pm or call 704-215-4344 and let the receptionist know your eta. AUTOMATED MESSAGE - DO NOT REPLY'
	--SET @no_bags_msg  = 'NO PICKUP LOTC Notification: We do not have a pick up this week. Thank you. AUTOMATED MESSAGE - DO NOT REPLY'

	--email address
	SET @email = 'info@lotcarolinas.com'
	
	-- Temp table for text queue
	CREATE TABLE #TextQueue (RowNbr int Identity(1,1) NOT NULL
		, RequestID int NOT NULL
		, Pri_Phone nvarchar(20)
		, Pri_txt bit
		, Alt_Phone nvarchar(10)
		, Alt_txt bit
		, Text_Msg nvarchar(max)
		, Req_Group varchar(50)
		)

	-- Temp table for email queue
	CREATE TABLE #EmailQueue (RowNbr int Identity(1,1) NOT NULL		
		, RequestID int NOT NULL
		, Req_Group varchar(50)
		)

	-- Temp table for Request Group Counts from tempRequest table
	CREATE TABLE #ReqGroupCount (RowNbr int Identity(1,1) NOT NULL	
		,RequestGroup varchar(50) NULL 
		,ReqGrpCount int NULL
		)

	-- Temp table for Text/EMail Message Group Counts from temp tables for texting and emails
	CREATE TABLE #MsgGroupCount (RowNbr int Identity(1,1) NOT NULL	
		,RequestGroup varchar(50) NULL 
		,ReqGrpCount int NULL
		)

	SET @weekday = (SELECT UPPER(DATENAME( DW, GETDATE())))

	IF @weekday = 'MONDAY' -- check for >4 days in transit
			BEGIN
				SET @bodytext = 'The following bags have been in-transit for at least 4 days: (list of requestIds). Please check on the status of these items.'
				INSERT INTO #EmailQueue (RequestID, Req_Group)
					(SELECT Request.RequestID,
					tempRequest.RequestGroup
					FROM Request
					JOIN tempRequest on Request.EmailID = tempRequest.EMailID 
					JOIN RequestStatus on Request.RequestStatusID = RequestStatus.StatusID 
					AND Request.RequestStatusID = 22
					AND Request.BagFilledDate IS NOT NULL
					AND DATEDIFF(MI, Request.BagFilledDate, GETDATE()) > 2460 --Tuesday 4 pm to Monday 9 am = 2460 minutes
					JOIN BagPickupLocation on Request.BagPickupLocation = BagPickupLocation.PULocationID
					AND UPPER(BagPickupLocation.DeliveryMethod) = 'CINTAS'
					AND BagPickupLocation.active = 1
					JOIN LocationContact ON BagPickupLocation.PULocationID = LocationContact.LocationID 
						AND LocationContact.LocContactType = 'DRIVER'
					JOIN Adult ON LocationContact.AdultID = Adult.AdultID
					JOIN ContactMethod ON LocationContact.NotificationTypeID = ContactMethod.MethodID
						AND UPPER(ContactMethod.MethodName) = 'TEXT')
					ORDER BY Adult.PhoneNumberPrimary, Request.RequestID

					SET @email2_count = @@ROWCOUNT

					IF @email2_count > 0
						BEGIN
							SET @request_ids  = ''
							SET @row_nbr = 1
							WHILE @row_nbr <= @email2_count
							BEGIN
								IF @row_nbr > 1 SET @request_ids += ', '
								SELECT @request_ids += CAST(RequestID as nvarchar)
								FROM #EmailQueue WHERE RowNbr = @row_nbr
								-- increment the row reference
								SET @row_nbr = @row_nbr + 1
							END
							SET @bodytext = REPLACE (@bodytext, '(list of requestIds)', @request_ids)
						END
			END

	IF @weekday = 'TUESDAY' -- check for items ready for pickup and send text if found
			BEGIN
				INSERT INTO #TextQueue (RequestID, Pri_Phone, Pri_txt, Alt_Phone, Alt_txt, Text_Msg, Req_Group)
					(SELECT Request.RequestID,
					Adult.PhoneNumberPrimary, 
					Adult.PrimaryTextable, 
					Adult.AltPhone, 
					Adult.AltTextable,
					@bags_exist_msg,
					tempRequest.RequestGroup
					FROM Request
					JOIN tempRequest on Request.EmailID = tempRequest.EMailID 
					JOIN RequestStatus on Request.RequestStatusID = RequestStatus.StatusID 
					AND Request.RequestStatusID = 20
					JOIN BagPickupLocation on Request.BagPickupLocation = BagPickupLocation.PULocationID
					AND UPPER(BagPickupLocation.DeliveryMethod) = 'CINTAS'
					AND BagPickupLocation.active = 1
					JOIN LocationContact ON BagPickupLocation.PULocationID = LocationContact.LocationID 
						AND LocationContact.LocContactType = 'DRIVER'
					JOIN Adult ON LocationContact.AdultID = Adult.AdultID
					JOIN ContactMethod ON LocationContact.NotificationTypeID = ContactMethod.MethodID
						AND UPPER(ContactMethod.MethodName) = 'TEXT')
					ORDER BY Adult.PhoneNumberPrimary, Request.RequestID

				-- Populate the request group counts from any rows in the tempRequest table 
				-- whose group also exists in the #TextQueue table.
				-- This indicates how many items are in a group in any status.
				-- Example: RequestGroup = 123, # of requests in group 123 = 3. 
				INSERT INTO #ReqGroupCount(RequestGroup, ReqGrpCount)
					(SELECT RequestGroup, Count(RequestGroup) 
					from tempRequest
					where RequestGroup is not null
					and exists ( select TOP 1 1 from #TextQueue where Req_Group = RequestGroup )
					group by RequestGroup)

				-- Populate the message group counts from the #TextQueue table.
				-- This indicates how many items are in a group in "completed" status.
				-- Example: RequestGroup = 123, # of text rows in group 123 = 2. 
				INSERT INTO #MsgGroupCount(RequestGroup, ReqGrpCount)
						select Req_Group, count(Req_Group) as grpcount
						from #TextQueue
						join #ReqGroupCount on #TextQueue.Req_Group = #ReqGroupCount.RequestGroup
						where #TextQueue.Req_Group IS NOT NULL
						Group By Req_Group

				-- Delete rows from #TextQueue table where grouped requests are not all in "completed" status.
				-- Example: RequestGroup = 123. Only 2 of 3 in group are "completed", so all rows for group 123 are deleted.
				DELETE #TextQueue
				FROM #MsgGroupCount
				JOIN #ReqGroupCount ON #MsgGroupCount.RequestGroup = #ReqGroupCount.RequestGroup
				WHERE #TextQueue.Req_Group = #MsgGroupCount.RequestGroup
				AND #MsgGroupCount.ReqGrpCount <> #ReqGroupCount.ReqGrpCount

				SET @text_count = (SELECT COUNT(1) FROM #TextQueue)
			END

	IF @weekday = 'WEDNESDAY' -- check for items not picked up by noon and send text reminder if needed
			BEGIN
				INSERT INTO #TextQueue (RequestID, Pri_Phone, Pri_txt, Alt_Phone, Alt_txt, Text_Msg, Req_Group)
					(SELECT Request.RequestID,
					Adult.PhoneNumberPrimary, 
					Adult.PrimaryTextable, 
					Adult.AltPhone, 
					Adult.AltTextable,
					@remind_msg,
					tempRequest.RequestGroup
					FROM Request
					JOIN tempRequest on Request.EmailID = tempRequest.EMailID 
					JOIN RequestStatus on Request.RequestStatusID = RequestStatus.StatusID 
					AND Request.RequestStatusID = 20
					AND Request.BagFilledDate IS NOT NULL
					AND DATEDIFF(MI, Request.BagFilledDate, GETDATE()) > 1200 --Tuesday 4 pm to Wednesday noon = 1200 minutes
					JOIN BagPickupLocation on Request.BagPickupLocation = BagPickupLocation.PULocationID
					AND UPPER(BagPickupLocation.DeliveryMethod) = 'CINTAS'
					AND BagPickupLocation.active = 1
					JOIN LocationContact ON BagPickupLocation.PULocationID = LocationContact.LocationID 
						AND LocationContact.LocContactType = 'DRIVER'
					JOIN Adult ON LocationContact.AdultID = Adult.AdultID
					JOIN ContactMethod ON LocationContact.NotificationTypeID = ContactMethod.MethodID
						AND UPPER(ContactMethod.MethodName) = 'TEXT')
					ORDER BY Adult.PhoneNumberPrimary, Request.RequestID

				-- Populate the request group counts
				INSERT INTO #ReqGroupCount(RequestGroup, ReqGrpCount)
					(SELECT RequestGroup, Count(RequestGroup) 
					from tempRequest
					where RequestGroup is not null
					and exists ( select TOP 1 1 from #TextQueue where Req_Group = RequestGroup )
					group by RequestGroup)

				-- Populate the text group counts
				INSERT INTO #MsgGroupCount(RequestGroup, ReqGrpCount)
						select Req_Group, count(Req_Group) as grpcount
						from #TextQueue
						join #ReqGroupCount on #TextQueue.Req_Group = #ReqGroupCount.RequestGroup
						where #TextQueue.Req_Group IS NOT NULL
						Group By Req_Group

				-- delete rows from text queue where grouped requests are not complete
				DELETE #TextQueue
				FROM #MsgGroupCount
				JOIN #ReqGroupCount ON #MsgGroupCount.RequestGroup = #ReqGroupCount.RequestGroup
				WHERE #TextQueue.Req_Group = #MsgGroupCount.RequestGroup
				AND #MsgGroupCount.ReqGrpCount <> #ReqGroupCount.ReqGrpCount

				SET @remind_count = (SELECT COUNT(1) FROM #TextQueue)
			END

	IF @weekday = 'THURSDAY' -- check for items still not picked up and email LOTC if needed
			BEGIN
				SET @bodytext = 'Please check if bags for Cintas have been picked up. If not, please contact Cintas driver.'
				INSERT INTO #EmailQueue (RequestID, Req_Group)
					(SELECT Request.RequestID,
					tempRequest.RequestGroup
					FROM Request
					JOIN tempRequest on Request.EmailID = tempRequest.EMailID 
					JOIN RequestStatus on Request.RequestStatusID = RequestStatus.StatusID 
					AND Request.RequestStatusID = 20
					AND Request.BagFilledDate IS NOT NULL
					AND DATEDIFF(MI, Request.BagFilledDate, GETDATE()) > 2460 --Tuesday 4 pm to Thursday 9 am = 2460 minutes
					JOIN BagPickupLocation on Request.BagPickupLocation = BagPickupLocation.PULocationID
					AND UPPER(BagPickupLocation.DeliveryMethod) = 'CINTAS'
					AND BagPickupLocation.active = 1
					JOIN LocationContact ON BagPickupLocation.PULocationID = LocationContact.LocationID 
						AND LocationContact.LocContactType = 'DRIVER'
					JOIN Adult ON LocationContact.AdultID = Adult.AdultID
					JOIN ContactMethod ON LocationContact.NotificationTypeID = ContactMethod.MethodID
						AND UPPER(ContactMethod.MethodName) = 'TEXT')
					ORDER BY Adult.PhoneNumberPrimary, Request.RequestID

				-- Populate the request group counts
				INSERT INTO #ReqGroupCount(RequestGroup, ReqGrpCount)
					(SELECT RequestGroup, Count(RequestGroup) 
					from tempRequest
					where RequestGroup is not null
					and exists ( select TOP 1 1 from #EmailQueue where Req_Group = RequestGroup )
					group by RequestGroup)

				-- Populate the text group counts
				INSERT INTO #MsgGroupCount(RequestGroup, ReqGrpCount)
						select Req_Group, count(Req_Group) as grpcount
						from #EmailQueue
						join #ReqGroupCount on #EmailQueue.Req_Group = #ReqGroupCount.RequestGroup
						where #EmailQueue.Req_Group IS NOT NULL
						Group By Req_Group

				-- delete rows from text queue where grouped requests are not complete
				DELETE #EmailQueue
				FROM #MsgGroupCount
				JOIN #ReqGroupCount ON #MsgGroupCount.RequestGroup = #ReqGroupCount.RequestGroup
				WHERE #EmailQueue.Req_Group = #MsgGroupCount.RequestGroup
				AND #MsgGroupCount.ReqGrpCount <> #ReqGroupCount.ReqGrpCount

				SET @email1_count = (SELECT COUNT(1) FROM #EmailQueue)
			END

	-- Send Text messages
	SET @row_count = @text_count + @remind_count
	SET @row_nbr = 1

	IF @row_count > 0
		BEGIN
			WHILE @row_nbr <= @row_count
			BEGIN

				SELECT TOP 1 
				@reqID = RequestID 
				, @pri_phone = Pri_Phone
				, @pri_txt = Pri_txt
				, @alt_phone = Alt_Phone
				, @alt_txt = Alt_txt
				, @txt_msg = Text_Msg
				, @RowNbr = RowNbr
				FROM #TextQueue 
				ORDER BY Pri_Phone, Alt_Phone
								
				IF ( @pri_phone IS NOT NULL AND ISNUMERIC(@pri_phone) = 1 AND @pri_txt = 1 AND LEN(@pri_phone) = 10 )
					BEGIN
						SET @phone = @pri_phone -- use primary
					END
				ELSE
					IF ( @alt_phone IS NOT NULL AND ISNUMERIC(@alt_phone) = 1 AND @alt_txt = 1 AND LEN(@alt_phone) = 10 ) 
						BEGIN
							SET @phone = @alt_phone -- use alternate
						END
					ELSE
						BEGIN
							SET @error_flag = 1 -- set error flag
							SET @text_err_msg = 'Unable to text contact for RequestID ' + CAST(@reqID as varchar) + '. Invalid phone.'
						END

				-- IF first row or different phone then send text
				IF @row_nbr = 1 OR @previous_phone <> @phone
					BEGIN
						IF @error_flag = 0 -- send text if valid phone found
							BEGIN TRY
								-- only send one text message to this number
								INSERT INTO TextsToSend (requestid, phonenumber, TextMsg, SentBool, createdate)
								SELECT @reqID, @phone, @txt_msg, 0, GETDATE()
								WHERE NOT EXISTS ( SELECT 1
									FROM TextsToSend WHERE phonenumber = @phone AND SentBool = 0
									AND TextMsg = @txt_msg )
							END TRY
							BEGIN CATCH
								SET @text_err_msg = 'Unable to text contact for RequestID ' + CAST(@reqID as varchar) + '. SQL Error: ' + (SELECT ERROR_MESSAGE() )
								SET @error_flag = 1
							END CATCH

						IF @error_flag <> 0 --send email if error exists
							BEGIN
								EXEC msdb.dbo.sp_send_dbmail
									@profile_name = 'Notification',
									@recipients = @email,
									@body = @text_err_msg,
									@subject = 'LOTC Auto-Text Error - DO NOT REPLY'

							END
					END

				-- increment the row reference
				SET @row_nbr = @row_nbr + 1
				-- set previous phone to current phone
				SET @previous_phone = @phone
				-- Delete current row
				DELETE #TextQueue WHERE RowNbr = @RowNbr
			END
		END

	--Send Email message for Thursday
	IF @email1_count > 0
		BEGIN
			EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Notification',
			@recipients = @email,
			@body = @bodytext,					
			@subject = 'CINTAS DID NOT PICK UP'  
		END

	--Send Email message for Monday
	IF @email2_count > 0
		BEGIN
			EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'Notification',
			@recipients = @email,
			@body = @bodytext,					
			@subject = 'BAGS IN TRANSIT'
		END

	DROP TABLE #TextQueue 
	DROP TABLE #EmailQueue 
	DROP TABLE #ReqGroupCount
	DROP TABLE #MsgGroupCount 
END
