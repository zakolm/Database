USE EcologyDB
GO
IF OBJECT_ID (N'dbo.RangArea', N'FN') IS NOT NULL
    DROP FUNCTION dbo.RangArea
GO
CREATE FUNCTION dbo.RangArea()
RETURNS INT
AS
BEGIN
       RETURN (SELECT AVG(Rang) FROM dbo.area)
END
GO

SELECT dbo.RangArea()