sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO

CREATE TABLE Numbers
(
   Number INT
)
GO

INSERT INTO Numbers(Number) VALUES (1)
INSERT INTO Numbers(Number) VALUES (4)
INSERT INTO Numbers(Number) VALUES (5)
INSERT INTO Numbers(Number) VALUES (9)
GO

CREATE ASSEMBLY CodeFile1
FROM 'C:\Users\marina\source\repos\Database1\Database1\bin\Debug\Database1.dll'

CREATE AGGREGATE CountSimple( @instr int )
RETURNS INT
EXTERNAL NAME
CodeFile1.[Simple]
GO

SELECT dbo.CountSimple(Number) AS SimpleStaffNum
FROM dbo.Numbers
GO

DROP AGGREGATE CountSimple
GO
DROP ASSEMBLY CodeFile1
GO
DROP TABLE Numbers
GO