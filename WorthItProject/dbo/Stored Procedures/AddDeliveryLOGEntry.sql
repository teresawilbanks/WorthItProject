












-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE                           PROCEDURE [dbo].[AddDeliveryLOGEntry]
	@RequestID int,
	@DriverName nvarchar(150),
	@DateTimeValue datetime2(7),
	@Location nvarchar(max),
	@ClientTransporter nvarchar(max)

	--get locationid from table

AS
BEGIN
	
	INSERT INTO dbo.DeliveryLOG (RequestID, DriverName, DateTimeValue, location, [Client/Transporter])
				VALUES (@RequestID, @DriverName, @DateTimeValue,  @Location, @ClientTransporter)
	
	DECLARE @PickupLocation as int
	DECLARE @currentlocation as int
	DECLARE @Currentstatus as int
	--DECLARE @persontype as nvarchar(55)

	SET @pickuplocation = (SELECT BagPickupLocation from request where request.requestid = @requestid)
	SET @currentlocation = (SELECT PUlocationid from BagPickupLocation bl where bl.LocationName = @location)
	SET @currentStatus = (SELECT requeststatusid from request where request.requestid = @requestid)
	--SET @persontype = (SELECT [client/transporter] from DeliveryLOG where requestid = @requestid)

	IF (@currentlocation <> @pickuplocation and @currentlocation is not null)
		BEGIN
			UPDATE Request
			SET Requeststatusid = 22,
				ModifyDate = getdate()
			Where request.requestid = @requestid
		END
	

	IF (@currentlocation = @pickuplocation and @clienttransporter like 'transporter')
		BEGIN
			update Request
			SET RequestStatusID = 23,
				ModifyDate = getdate()
			where request.requestid = @requestid
			EXEC SP_TextNotification @requestid
		END
	

	IF (@currentstatus = 23 and @ClientTransporter = 'client')
		BEGIN
			UPDATE Request
			SET RequestStatusid = 25,
				Modifydate = getdate(),
				RequestClosedDate = getdate()
			WHERE request.requestid = @Requestid
		END
END


