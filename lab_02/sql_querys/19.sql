UPDATE EcologyDB.dbo.area SET Rang = 
(
	SELECT AVG(Rang)
		FROM EcologyDB.dbo.area
			WHERE District = 
			(
				SELECT Id
					FROM EcologyDB.dbo.district
						WHERE DistrictName LIKE '�������������� �����%'
			)
)
WHERE AreaName = '���������'