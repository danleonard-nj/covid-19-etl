CREATE PROCEDURE [dbo].[InsertDimCountryRegion]
AS
BEGIN
	INSERT dbo.DimCountryRegion
	SELECT
		SD.CountryRegion
		,GETDATE()
	FROM staging.StageDimCountryRegion SD
END