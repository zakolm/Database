SELECT AreaName,
	CASE
		WHEN Rang = 1 THEN 'Плохой'
		WHEN Rang = 2 THEN 'Удовлетворительный'
		WHEN Rang = 3 THEN 'Хороший'
		WHEN Rang = 4 THEN 'Отличный'
		ELSE 'Very Expensive'
	END
  FROM EcologyDB.dbo.area
	ORDER BY AreaName