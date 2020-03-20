CREATE PROCEDURE [dbo].[InsertStageDimProvinceState]
AS
BEGIN
	INSERT staging.StageDimProvinceState
	SELECT DISTINCT
		SFCD.ProvinceState
	FROM staging.StageFactCovidDaily SFCD
END