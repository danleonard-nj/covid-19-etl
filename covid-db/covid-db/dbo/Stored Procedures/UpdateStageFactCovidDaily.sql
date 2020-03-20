CREATE PROCEDURE [dbo].[UpdateStageFactCovidDaily]
AS
BEGIN
	UPDATE staging.StageFactCovidDaily
	SET ProvinceStateId = SD.ProvinceStateId
	FROM staging.StageFactCovidDaily SF
		JOIN staging.StageDimProvinceState SD ON SD.ProvinceState = SF.ProvinceState

	UPDATE staging.StageFactCovidDaily
	SET CountryRegionId = SD.CountryRegionId
	FROM staging.StageFactCovidDaily SF
		JOIN staging.StageDimCountryRegion SD ON SD.CountryRegion = SF.CountryRegion
END 
