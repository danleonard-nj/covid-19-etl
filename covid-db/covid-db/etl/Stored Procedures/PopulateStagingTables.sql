CREATE PROCEDURE [etl].[PopulateStagingTables]
AS
BEGIN
	EXECUTE dbo.InsertStageFactCovidDaily
	EXECUTE dbo.InsertStageDimCountryRegion
	EXECUTE dbo.InsertStageDimProvinceState
END