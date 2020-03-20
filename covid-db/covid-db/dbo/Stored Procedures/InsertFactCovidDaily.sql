CREATE PROCEDURE [dbo].[InsertFactCovidDaily]
AS
BEGIN
	INSERT dbo.FactCovidDaily
	SELECT
		SF.RecordDate
		,SF.ProvinceStateId
		,SF.CountryRegionId
		,SF.Confirmed
		,SF.Deaths
		,SF.Recovered
		,SF.Latitude
		,SF.Longitude
		,GETDATE()
	FROM staging.StageFactCovidDaily SF
END