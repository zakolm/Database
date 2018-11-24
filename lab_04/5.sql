CREATE ASSEMBLY SqlServerUDF
FROM 'C:\Users\marina\source\repos\Database1\Database1\bin\Debug\Database1.dll'
GO

USE EcologyDB
GO

CREATE TRIGGER SafeTr
ON area
INSTEAD OF DELETE
AS
EXTERNAL NAME
SqlServerUDF.[Triggers].SafeTrigger
GO

DELETE EcologyDB.dbo.area
WHERE ID = 1
GO

DROP TRIGGER SafeTr

DROP ASSEMBLY SqlServerUDF