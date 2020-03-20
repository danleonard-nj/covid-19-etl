CREATE PROCEDURE [dbo].[CreateFactCovidDaily]
AS
BEGIN
	CREATE TABLE [dbo].[FactCovidDaily] (
    [FactCovidDailyId] INT           IDENTITY (1, 1) NOT NULL,
    [RecordDate]       DATE          NULL,
    [StateProvinceId]  INT           NULL,
    [CountryRegionId]  INT           NULL,
    [Confirmed]        INT           NULL,
    [Deaths]           INT           NULL,
    [Recovered]        INT           NULL,
    [Latitude]         VARCHAR (100) NULL,
    [Longitude]        VARCHAR (100) NULL,
    [CreatedDate]      DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([FactCovidDailyId] ASC)
);
END
