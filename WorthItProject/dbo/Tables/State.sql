CREATE TABLE [dbo].[State] (
    [StateID]           INT          IDENTITY (1, 1) NOT NULL,
    [StateAbbreviation] NVARCHAR (2) NOT NULL,
    CONSTRAINT [State$PrimaryKey] PRIMARY KEY CLUSTERED ([StateID] ASC),
    CONSTRAINT [SSMA_CC$State$StateAbbreviation$disallow_zero_length] CHECK (len([StateAbbreviation])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [State$StateAbbreviation]
    ON [dbo].[State]([StateAbbreviation] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[State].[StateAbbreviation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'State', @level2type = N'INDEX', @level2name = N'State$StateAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[State]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[State].[StateID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'State', @level2type = N'COLUMN', @level2name = N'StateID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[State].[StateAbbreviation]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'State', @level2type = N'COLUMN', @level2name = N'StateAbbreviation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'WorthItBACKENDJuly7.[State].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'State', @level2type = N'CONSTRAINT', @level2name = N'State$PrimaryKey';

