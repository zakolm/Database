IF OBJECT_ID (N'dbo.CalculateFib', N'FN') IS NOT NULL
    DROP PROCEDURE  dbo.CalculateFib1
GO

CREATE PROCEDURE dbo.CalculateFib1 (@n int = 1 OUTPUT) AS--RETURNS float
--WITH RETURNS NULL ON NULL INPUT
--AS
	BEGIN
		DECLARE @result INT;
			SET @result = NULL;
		IF @n > 0 BEGIN
			SET @result = 0;
			WITH Numbers (a, b, num)
			AS
			(
				SELECT 1, 1, 1
				UNION ALL
				SELECT b, a + b, num + 1 
				FROM Numbers
				WHERE num < @n
			)
			SELECT @result = b
			FROM Numbers;
		END;
		  RETURN @result;
	END;
GO
