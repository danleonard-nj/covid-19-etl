CREATE TABLE [staging].[StageDimCountryRegion]
(
	[CountryRegionId] INT          IDENTITY (1, 1) NOT NULL,
    [CountryRegion]   VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CountryRegionId] ASC)
)
