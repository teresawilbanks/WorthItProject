CREATE TABLE [dbo].[DeliveryLOG] (
    [DeliveryLogID]      INT               IDENTITY (1, 1) NOT NULL,
    [RequestID]          INT               NOT NULL,
    [Pickup]             BIT               CONSTRAINT [DF_DeliveryLOG_Pickup] DEFAULT ((0)) NOT NULL,
    [Dropoff]            BIT               CONSTRAINT [DF_DeliveryLOG_Dropoff] DEFAULT ((0)) NOT NULL,
    [DriverName]         NVARCHAR (150)    NOT NULL,
    [DateTimeValue]      DATETIME2 (7)     NOT NULL,
    [GPS]                [sys].[geography] NULL,
    [Location]           NVARCHAR (MAX)    NULL,
    [Client/Transporter] NVARCHAR (MAX)    NULL,
    CONSTRAINT [PK_DeliveryLOG] PRIMARY KEY CLUSTERED ([DeliveryLogID] ASC),
    CONSTRAINT [FK_DeliveryLOG_Request] FOREIGN KEY ([RequestID]) REFERENCES [dbo].[Request] ([RequestID])
);

