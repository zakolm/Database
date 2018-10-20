SELECT Street,
(
	SELECT AreaName
		FROM EcologyDB.dbo.area
			WHERE Id = T.Area
) AS [Area Name]
	FROM EcologyDB.dbo.trashbasket T