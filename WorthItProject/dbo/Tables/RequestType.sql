CREATE TABLE [dbo].[RequestType] (
    [RequestTypeID] INT           IDENTITY (1, 1) NOT NULL,
    [RequestName]   NVARCHAR (55) NOT NULL,
    CONSTRAINT [RequestType$PrimaryKey] PRIMARY KEY CLUSTERED ([RequestTypeID] ASC),
    CONSTRAINT [SSMA_CC$RequestType$RequestName$disallow_zero_length] CHECK (len([RequestName])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RequestType$RequestTypeRequestType]
    ON [dbo].[RequestType]([RequestName] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestType].[RequestTypeRequestType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestType', @level2type = N'INDEX', @level2name = N'RequestType$RequestTypeRequestType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestType].[RequestTypeID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestType', @level2type = N'COLUMN', @level2name = N'RequestTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestType].[RequestName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestType', @level2type = N'COLUMN', @level2name = N'RequestName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[RequestType].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RequestType', @level2type = N'CONSTRAINT', @level2name = N'RequestType$PrimaryKey';

