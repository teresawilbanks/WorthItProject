CREATE TABLE [dbo].[BagPickupLocation] (
    [PULocationID]      INT            IDENTITY (1, 1) NOT NULL,
    [LocationName]      NVARCHAR (255) NULL,
    [FormLocationName]  NVARCHAR (255) NULL,
    [DeliveryMethod]    NVARCHAR (50)  NULL,
    [active]            BIT            CONSTRAINT [DF_BagPickupLocation_active] DEFAULT ((1)) NOT NULL,
    [LocAddress]        NVARCHAR (255) NULL,
    [HoursofOpperation] NVARCHAR (255) NULL,
    [phonenumber]       NVARCHAR (10)  NULL,
    [finaldestination]  BIT            NULL,
    CONSTRAINT [BagPickupLocation$PrimaryKey] PRIMARY KEY CLUSTERED ([PULocationID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagPickupLocation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagPickupLocation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagPickupLocation].[PULocationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagPickupLocation', @level2type = N'COLUMN', @level2name = N'PULocationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagPickupLocation].[LocationName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagPickupLocation', @level2type = N'COLUMN', @level2name = N'LocationName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[BagPickupLocation].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'BagPickupLocation', @level2type = N'CONSTRAINT', @level2name = N'BagPickupLocation$PrimaryKey';

