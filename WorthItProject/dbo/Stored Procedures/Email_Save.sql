

CREATE   PROC [dbo].[Email_Save] @MessageId nvarchar(50), @FromEmailAddress nvarchar(256), @Date datetime2(7), @Subject nvarchar(256), @Body nvarchar(max)
AS
BEGIN
	INSERT INTO [dbo].[Email]
			   ([MessageId]
			   ,[FromEmailAddress]
			   ,[Date]
			   ,[Subject]
			   ,[Body])
		 VALUES
			   (@MessageId
			   ,@FromEmailAddress
			   ,@Date
			   ,@Subject
			   ,@Body)
END
