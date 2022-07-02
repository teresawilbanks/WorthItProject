CREATE TABLE [dbo].[TrackingComment] (
    [TID]        INT            IDENTITY (1, 1) NOT NULL,
    [RequestID]  INT            NOT NULL,
    [createdate] DATETIME2 (7)  CONSTRAINT [DF_TrackingComment_createdate] DEFAULT (getdate()) NOT NULL,
    [Comment]    NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [FK_TrackingComment_Request] FOREIGN KEY ([RequestID]) REFERENCES [dbo].[Request] ([RequestID])
);

