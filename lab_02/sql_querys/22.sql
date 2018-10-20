WITH RANG (SupplierNo, NumberOfShips)
AS
(
	SELECT Rang, COUNT(*) AS Total
		FROM EcologyDB.dbo.area
			WHERE Rang IS NOT NULL
				GROUP BY Rang
)

SELECT SupplierNo AS Rang, NumberOfShips AS 'Количество значений рейтинга'
	FROM RANG