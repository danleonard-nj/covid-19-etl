CREATE TABLE [dbo].[StageCovidDailyReports] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [RecordDate]      DATE          NULL,
    [StateProvince]   VARCHAR (50)  NULL,
    [StateProvinceId] INT           NULL,
    [CountryRegion]   VARCHAR (100) NULL,
    [CountryRegionId] INT           NULL,
    [Confirmed]       INT           NULL,
    [Deaths]          INT           NULL,
    [Recovered]       INT           NULL,
    [Latitude]        VARCHAR (100) NULL,
    [Longitude]       VARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

