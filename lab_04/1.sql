sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO

alter database EcologyDB set trustworthy on
go

CREATE ASSEMBLY Database1 AUTHORIZATION dbo
FROM 'C:\Users\marina\source\repos\Database1\Database1\bin\Debug\Database1.dll'
WITH PERMISSION_SET = SAFE
GO

CREATE FUNCTION GetRandomNumber ()
RETURNS INT
AS
EXTERNAL NAME
Database1.[ClassFile1].GetRandomNumber
GO

SELECT dbo.GetRandomNumber() AS RandomNumber
GO

DROP FUNCTION GetRandomNumber
GO
DROP ASSEMBLY Database1
GO