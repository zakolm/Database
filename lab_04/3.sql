CREATE ASSEMBLY SqlServerTVF
FROM
'C:\Users\marina\source\repos\Database1\Database1\bin\Debug\Database1.dll'
GO

CREATE FUNCTION NameToAscii ( @InputName NVARCHAR(4000) )
RETURNS TABLE 
(
   charpart NCHAR, 
   intpart INT
)
AS
EXTERNAL NAME
SqlServerTVF.[SqlServerTVF.UserDefinedFunctions].NameToAscii 
GO

SELECT * FROM dbo.NameToAscii ('Maksim Zakolesnik' )
GO

DROP FUNCTION NameToAscii
GO
DROP ASSEMBLY SqlServerTVF
GO