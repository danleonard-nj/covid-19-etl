CREATE PROCEDURE [dbo].[InsertDimProvinceState]
AS
BEGIN
	INSERT dbo.DimProvinceState
	SELECT
		SD.ProvinceState
		,GETDATE()
	FROM staging.StageDimProvinceState SD
END