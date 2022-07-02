CREATE TABLE [dbo].[Raffle] (
    [tempRaffleID] INT            IDENTITY (1, 1) NOT NULL,
    [Month]        NCHAR (10)     NULL,
    [year]         NCHAR (10)     NULL,
    [Caregiver]    INT            NULL,
    [child]        INT            NULL,
    [item]         NVARCHAR (255) NULL,
    [value]        NUMERIC (18)   NULL,
    [processed]    BIT            NULL,
    [createdate]   DATETIME2 (7)  CONSTRAINT [DF_Raffle_createdate] DEFAULT (getdate()) NULL,
    [SaveRequest]  BIT            NULL,
    [Active]       BIT            CONSTRAINT [DF_Raffle_Active] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Raffle] PRIMARY KEY CLUSTERED ([tempRaffleID] ASC)
);

