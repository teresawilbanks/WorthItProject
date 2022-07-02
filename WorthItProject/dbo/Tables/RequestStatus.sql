CREATE TABLE [dbo].[RequestStatus] (
    [StatusID]          INT            DEFAULT ((0)) NOT NULL,
    [StatusType]        NVARCHAR (255) NULL,
    [StatusDescription] NVARCHAR (255) NULL,
    [Active]            INT            NULL,
    CONSTRAINT [RequestStatus$PrimaryKey] PRIMARY KEY CLUSTERED ([StatusID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestStatus]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestStatus].[StatusID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestStatus', @level2type = N'COLUMN', @level2name = N'StatusID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestStatus].[StatusType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestStatus', @level2type = N'COLUMN', @level2name = N'StatusType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestStatus].[StatusDescription]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestStatus', @level2type = N'COLUMN', @level2name = N'StatusDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestStatus].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestStatus', @level2type = N'CONSTRAINT', @level2name = N'RequestStatus$PrimaryKey';

