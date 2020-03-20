CREATE PROCEDURE [etl].[DropProductionTables]
AS
BEGIN
	DROP TABLE dbo.DimCountryRegion
	DROP TABLE dbo.DimProvinceState
	DROP TABLE dbo.FactCovidDaily
END