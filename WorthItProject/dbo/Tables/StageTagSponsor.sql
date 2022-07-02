CREATE TABLE [dbo].[StageTagSponsor] (
    [StageID]       INT            IDENTITY (1, 1) NOT NULL,
    [Task]          NVARCHAR (MAX) NULL,
    [tagnumber]     NVARCHAR (50)  NULL,
    [tagtagsection] NVARCHAR (50)  NULL,
    [tagval]        NVARCHAR (50)  NULL,
    [tagExtensions] NVARCHAR (50)  NULL,
    [who]           NVARCHAR (MAX) NULL,
    [FirstName]     NVARCHAR (50)  NULL,
    [LastName]      NVARCHAR (50)  NULL,
    [Email]         NVARCHAR (MAX) NULL,
    [Phone]         NVARCHAR (50)  NULL,
    [SignUpTime]    DATETIME2 (7)  NULL,
    CONSTRAINT [PK_StageTagSponsor] PRIMARY KEY CLUSTERED ([StageID] ASC)
);

