








CREATE                   PROC [dbo].[SP_BedDetails] @emailID int

AS
BEGIN


--'CRIB	frame
INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1180
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = @emailID and tr.bedtype1 like '%crib%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1180)
	WHERE estimatedvalue = 0 and productid = 1180

	--crib mattress
INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1181
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = @emailID and tr.bedtype1 like '%crib%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1181)
	WHERE estimatedvalue = 0 and productid = 1181

--'TODDLER BED frame
INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1183
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = @emailID and tr.bedtype1 like '%TODDLER%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1183)
	WHERE estimatedvalue = 0 and productid = 1183

--'TWIN BED frame
INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1184
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = @emailID and tr.bedtype1 like '%TWIN%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1184)
	WHERE estimatedvalue = 0 and productid = 1184

--'TWIN BED mattress
INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1185
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = @emailID and tr.bedtype1 like '%TWIN%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1185)
	WHERE estimatedvalue = 0 and productid = 1185


--'BUNK BED frame
INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1187
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = 8415 and tr.bedtype1 like '%BUNK%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1187)
	WHERE estimatedvalue = 0 and productid = 1187

INSERT INTO RequestDetails (RequestID, ProductID)
	SELECT r.RequestID, 1185
		from Request r join temprequest tr on r.emailid = tr.emailid
		WHERE r.emailid = @emailID and tr.bedtype1 like '%BUNK%'
UPDATE REQUESTDETAILS
	SET EstimatedValue = (SELECT EstimatedValue FROM PRODUCT where productid = 1185)
	WHERE estimatedvalue =0 and productid = 1185
END
