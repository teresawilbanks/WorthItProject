
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateInboundText]
	@InboundMessage NVARCHAR(MAX),
	@PhoneNumber bigint,
	@CurrentDate datetime
AS
BEGIN
	INSERT INTO dbo.InboundTextLog (Message, PhoneNumber, CurrentDate) VALUES (@InboundMessage, @PhoneNumber, @CurrentDate)
END
