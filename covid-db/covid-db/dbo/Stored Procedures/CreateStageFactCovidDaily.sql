CREATE PROCEDURE [dbo].[CreateStageFactCovidDaily]
AS
BEGIN
    CREATE TABLE [staging].[StageFactCovidDaily]
    (
        [Id]              INT           IDENTITY (1, 1) NOT NULL,
        [RecordDate]      DATE          NULL,
        [ProvinceState]   VARCHAR (50)  NULL,
        [ProvinceStateId] INT           NULL,
        [CountryRegion]   VARCHAR (100) NULL,
        [CountryRegionId] INT           NULL,
        [Confirmed]       INT           NULL,
        [Deaths]          INT           NULL,
        [Recovered]       INT           NULL,
        [Latitude]        VARCHAR (100) NULL,
        [Longitude]       VARCHAR (100) NULL,
        PRIMARY KEY CLUSTERED ([Id] ASC)
    )
END