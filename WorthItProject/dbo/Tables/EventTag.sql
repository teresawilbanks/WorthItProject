CREATE TABLE [dbo].[EventTag] (
    [EventTagId]      INT           IDENTITY (1, 1) NOT NULL,
    [RequestID]       INT           NOT NULL,
    [CampaignID]      INT           NOT NULL,
    [EventLocationID] INT           NOT NULL,
    [TagNumber]       NVARCHAR (50) NOT NULL,
    [CreateDate]      DATETIME2 (7) CONSTRAINT [DF_EventTag_CreateDate] DEFAULT (getdate()) NOT NULL,
    [Active]          INT           CONSTRAINT [DF_EventTag_Active] DEFAULT ((1)) NOT NULL,
    [TimeStamp]       ROWVERSION    NULL,
    CONSTRAINT [PK_EventTag] PRIMARY KEY CLUSTERED ([EventTagId] ASC),
    CONSTRAINT [FK_EventTag_Campaign] FOREIGN KEY ([CampaignID]) REFERENCES [dbo].[Campaign] ([CampaignID]),
    CONSTRAINT [FK_EventTag_EventLocation] FOREIGN KEY ([EventLocationID]) REFERENCES [dbo].[EventLocation] ([LocationID]),
    CONSTRAINT [FK_EventTag_EventTag] FOREIGN KEY ([EventTagId]) REFERENCES [dbo].[EventTag] ([EventTagId]),
    CONSTRAINT [FK_EventTag_Request] FOREIGN KEY ([RequestID]) REFERENCES [dbo].[Request] ([RequestID])
);


GO
CREATE   TRIGGER [dbo].[TR_TagInactive]	ON  dbo.EventTag 
   AFTER Insert
AS 
	IF EXISTS ( SELECT 0 FROM Inserted )
		BEGIN 
			UPDATE EventTag
				SET active = 0
				FROM EventTag join INSERTED on eventtag.requestid = inserted.requestid
				WHERE INSERTED.requestID = Eventtag.requestid AND inserted.tagnumber != eventtag.tagnumber
		END
