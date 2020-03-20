CREATE PROCEDURE [etl].[PopulateProductionTables]
AS
BEGIN
	EXECUTE dbo.InsertDimCountryRegion
	EXECUTE dbo.InsertDimProvinceState
	EXECUTE dbo.InsertFactCovidDaily
END