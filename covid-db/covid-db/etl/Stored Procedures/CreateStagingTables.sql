CREATE PROCEDURE [etl].[CreateStagingTables]
AS
BEGIN
	EXECUTE dbo.CreateStageDimCountryRegion
	EXECUTE dbo.CreateStageDimProvinceState
	EXECUTE dbo.CreateStageFactCovidDaily
END