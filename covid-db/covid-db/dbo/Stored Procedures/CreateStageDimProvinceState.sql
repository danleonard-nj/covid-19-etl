CREATE PROCEDURE [dbo].[CreateStageDimProvinceState]
AS
BEGIN
    CREATE TABLE [staging].[StageDimProvinceState]
    (
	    [ProvinceStateId] INT          IDENTITY (1, 1) NOT NULL,
        [ProvinceState]   VARCHAR (50) NULL,
        PRIMARY KEY CLUSTERED ([ProvinceStateId] ASC)
    )
END