﻿CREATE TABLE [dbo].[AU_CHILD] (
    [AU_ChildID]         INT            IDENTITY (1, 1) NOT NULL,
    [ChildID]            INT            NULL,
    [FirstName]          NVARCHAR (55)  NULL,
    [LastInitial]        NVARCHAR (255) NULL,
    [Nickname]           NVARCHAR (255) NULL,
    [DOB]                DATETIME2 (0)  NULL,
    [Gender]             INT            NULL,
    [EthnicityID]        INT            NULL,
    [ChildPlacementID]   INT            NULL,
    [CountyID]           INT            NULL,
    [SiblingsNames]      NVARCHAR (MAX) NULL,
    [SameHome]           NVARCHAR (255) NULL,
    [Comments]           NVARCHAR (MAX) NULL,
    [LOTID]              NVARCHAR (243) NULL,
    [CountySocialWorker] BIT            NULL,
    [CountyResidence]    BIT            NULL,
    [IdentifiesAsGender] INT            NULL,
    [LastName]           NVARCHAR (25)  NULL,
    [ModifyDate]         DATETIME2 (0)  NULL,
    [Operation]          NCHAR (10)     NULL,
    [SSMA_TimeStamp]     ROWVERSION     NOT NULL,
    [lastModifiedBy]     NVARCHAR (300) NULL
);

