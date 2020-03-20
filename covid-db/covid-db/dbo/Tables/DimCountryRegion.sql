CREATE TABLE [dbo].[DimCountryRegion] (
    [CountryRegionId] INT          IDENTITY (1, 1) NOT NULL,
    [CountryRegion]   VARCHAR (50) NULL,
    [CreatedDate]     DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([CountryRegionId] ASC)
);

