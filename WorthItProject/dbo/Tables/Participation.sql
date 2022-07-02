CREATE TABLE [dbo].[Participation] (
    [ParticipationID]   INT            DEFAULT ((0)) NOT NULL,
    [ParticipationType] NVARCHAR (255) NULL,
    CONSTRAINT [Participation$PrimaryKey] PRIMARY KEY CLUSTERED ([ParticipationID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Participation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Participation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Participation].[ParticipationID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Participation', @level2type = N'COLUMN', @level2name = N'ParticipationID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Participation].[ParticipationType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Participation', @level2type = N'COLUMN', @level2name = N'ParticipationType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[Participation].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Participation', @level2type = N'CONSTRAINT', @level2name = N'Participation$PrimaryKey';

