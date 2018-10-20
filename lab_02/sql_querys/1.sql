--Вывести все районы с рейтингом равным 2, отсортировать по имени.
SELECT DISTINCT A1.Rang, A1.AreaName 
	FROM EcologyDB.dbo.area A1 JOIN EcologyDB.DBO.area AS A2 ON A2.Rang = A1.Rang 
		WHERE A2.Id <> A1.Id AND A1.Rang = 2 ORDER BY A1.AreaName