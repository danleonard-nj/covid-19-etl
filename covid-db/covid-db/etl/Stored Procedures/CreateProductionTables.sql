CREATE PROCEDURE [etl].[CreateProductionTables]
AS
BEGIN
	EXECUTE dbo.CreateDimCountryRegion
	EXECUTE dbo.CreateFactCovidDaily
	EXECUTE dbo.CreateProvinceState
END