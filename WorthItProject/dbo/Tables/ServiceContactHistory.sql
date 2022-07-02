CREATE TABLE [dbo].[ServiceContactHistory] (
    [ContractTransactionID] INT            IDENTITY (1, 1) NOT NULL,
    [RequestID]             INT            DEFAULT ((0)) NULL,
    [ContactAdultID]        INT            DEFAULT ((0)) NULL,
    [ContactDate]           DATETIME2 (0)  NULL,
    [ContactMethodID]       INT            DEFAULT ((0)) NULL,
    [Comments]              NVARCHAR (MAX) NULL,
    [SSMA_TimeStamp]        ROWVERSION     NOT NULL,
    CONSTRAINT [ServiceContactHistory$PrimaryKey] PRIMARY KEY CLUSTERED ([ContractTransactionID] ASC),
    CONSTRAINT [ServiceContactHistory$AdultServiceContactHistory] FOREIGN KEY ([ContactAdultID]) REFERENCES [dbo].[Adult] ([AdultID]),
    CONSTRAINT [ServiceContactHistory$ContactMethodServiceContactHistory] FOREIGN KEY ([ContactMethodID]) REFERENCES [dbo].[ContactMethod] ([MethodID])
);


GO
CREATE NONCLUSTERED INDEX [ServiceContactHistory$AdultServiceContactHistory]
    ON [dbo].[ServiceContactHistory]([ContactAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceContactHistory$CareGiverAdultID]
    ON [dbo].[ServiceContactHistory]([ContactAdultID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceContactHistory$ContactMethodID]
    ON [dbo].[ServiceContactHistory]([ContactMethodID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceContactHistory$ContactMethodServiceContactHistory]
    ON [dbo].[ServiceContactHistory]([ContactMethodID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceContactHistory$RequestID]
    ON [dbo].[ServiceContactHistory]([RequestID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[AdultServiceContactHistory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'INDEX', @level2name = N'ServiceContactHistory$AdultServiceContactHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[CareGiverAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'INDEX', @level2name = N'ServiceContactHistory$CareGiverAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContactMethodID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'INDEX', @level2name = N'ServiceContactHistory$ContactMethodID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContactMethodServiceContactHistory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'INDEX', @level2name = N'ServiceContactHistory$ContactMethodServiceContactHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'INDEX', @level2name = N'ServiceContactHistory$RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContractTransactionID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'COLUMN', @level2name = N'ContractTransactionID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[RequestID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'COLUMN', @level2name = N'RequestID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContactAdultID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'COLUMN', @level2name = N'ContactAdultID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContactDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'COLUMN', @level2name = N'ContactDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContactMethodID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'COLUMN', @level2name = N'ContactMethodID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[Comments]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'COLUMN', @level2name = N'Comments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[AdultServiceContactHistory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'CONSTRAINT', @level2name = N'ServiceContactHistory$AdultServiceContactHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[ContactMethodServiceContactHistory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'CONSTRAINT', @level2name = N'ServiceContactHistory$ContactMethodServiceContactHistory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[ServiceContactHistory].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ServiceContactHistory', @level2type = N'CONSTRAINT', @level2name = N'ServiceContactHistory$PrimaryKey';

