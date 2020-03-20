CREATE PROCEDURE [dbo].[InsertStageFactCovidDaily]
AS
BEGIN
	INSERT staging.StageFactCovidDaily 
	SELECT
		SCD.[Last Update]
		,SCD.[Province/State]
		,NULL
		,SCD.[Country/Region]
		,NULL
		,SCD.Confirmed
		,SCD.Deaths
		,SCD.Recovered
		,SCD.Latitude
		,SCD.Longitude
	FROM staging.StageCovidDaily SCD
END