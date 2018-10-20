--Вывести средний рейтинг в Зеленограде
SELECT AVG(Rang) AS 'Средний рейтинг в Зеленоград'
	FROM EcologyDB.dbo.area
		WHERE District IN
		(
			SELECT District
				FROM EcologyDB.dbo.district
					WHERE DistrictName LIKE 'Зеленоград%'
		)
