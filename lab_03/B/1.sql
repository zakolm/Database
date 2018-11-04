USE EcologyDB
GO

IF OBJECT_ID ( N'dbo.GoodAreaProc', 'P' ) IS NOT NULL
      DROP PROCEDURE dbo.GoodAreaProc
GO

CREATE PROCEDURE dbo.GoodAreaProc @Amount INT OUTPUT AS
BEGIN
      SELECT district.DistrictName, area.AreaName, area.Rang
	  FROM district JOIN area ON district.Id = area.District
      WHERE area.Rang <= 2

      SET @Amount = @@ROWCOUNT
END
GO

DECLARE @OutParm INT
EXEC dbo.GoodAreaProc @OutParm OUTPUT
SELECT @OutParm "Количество районов"
GO