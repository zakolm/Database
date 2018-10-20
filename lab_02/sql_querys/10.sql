SELECT AreaName,
	CASE
		WHEN Rang = 1 THEN '������'
		WHEN Rang = 2 THEN '������������������'
		WHEN Rang = 3 THEN '�������'
		WHEN Rang = 4 THEN '��������'
		ELSE 'Very Expensive'
	END
  FROM EcologyDB.dbo.area
	ORDER BY AreaName