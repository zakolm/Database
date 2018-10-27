USE EcologyDB
GO
IF OBJECT_ID (N'dbo.GoodAreaNorth', N'FN') IS NOT NULL
    DROP FUNCTION dbo.GoodAreaNorth2
GO

CREATE FUNCTION dbo.GoodAreaNorth2()
RETURNS @A TABLE 
(
    DistrictName VARCHAR(100) NOT NULL, 
    AreaName VARCHAR(100) NOT NULL,
    Age INT NOT NULL
)
AS
BEGIN
    INSERT INTO @A
    SELECT district.DistrictName, area.AreaName, area.Rang
    FROM district JOIN area ON district.Id = area.District
    WHERE area.Rang <= 2 AND district.DistrictName LIKE '%Ñ%ÀÎ%'
RETURN
END
GO


SELECT *
FROM dbo.GoodAreaNorth2()