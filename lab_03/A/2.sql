USE EcologyDB
GO
IF OBJECT_ID (N'dbo.GoodArea', N'FN') IS NOT NULL
    DROP FUNCTION dbo.GoodArea
GO

CREATE FUNCTION dbo.GoodArea()
RETURNS TABLE
AS
RETURN (
    SELECT district.DistrictName, area.AreaName, area.Rang
    FROM district JOIN area ON district.Id = area.District
    WHERE area.Rang <= 2
    )
GO


SELECT *
FROM dbo.GoodArea()
GO