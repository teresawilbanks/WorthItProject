CREATE TABLE [dbo].[DeliveryTable] (
    [DeliveryTableID]     INT IDENTITY (1, 1) NOT NULL,
    [bagpickuplocationID] INT NOT NULL,
    [deliveryLocationID]  INT NOT NULL,
    [deliveryorder]       INT NOT NULL,
    CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED ([DeliveryTableID] ASC)
);

