CREATE PROCEDURE [etl].[InvokeEtlJob]
AS
BEGIN
	EXECUTE etl.DropStagingTables
	EXECUTE etl.CreateStagingTables
	EXECUTE etl.PopulateStagingTables

	EXECUTE dbo.UpdateStageFactCovidDaily

	EXECUTE etl.DropProductionTables
	EXECUTE etl.CreateProductionTables
	EXECUTE etl.PopulateProductionTables
END