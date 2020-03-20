CREATE PROCEDURE [dbo].[InsertStageDimCountryRegion]
AS
BEGIN
	INSERT staging.StageDimCountryRegion
	SELECT DISTINCT
		SFCD.CountryRegion
	FROM staging.StageFactCovidDaily SFCD
END