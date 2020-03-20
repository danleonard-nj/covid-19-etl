CREATE PROCEDURE [etl].[DropStagingTables]
AS
BEGIN
	DROP TABLE staging.StageDimCountryRegion
	DROP TABLE staging.StageDimProvinceState
	DROP TABLE staging.StageFactCovidDaily
END