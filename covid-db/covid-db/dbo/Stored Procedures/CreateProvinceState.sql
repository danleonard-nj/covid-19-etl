CREATE PROCEDURE [dbo].[CreateProvinceState]
AS
BEGIN
    CREATE TABLE [dbo].[DimProvinceState] (
    [ProvinceStateId] INT          IDENTITY (1, 1) NOT NULL,
    [ProvinceState]   VARCHAR (50) NULL,
    [CreatedDate]     DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ProvinceStateId] ASC)
);
END