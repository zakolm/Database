INSERT EcologyDB.dbo.area (Id, AreaName, District, Rang)
	SELECT
	(
		SELECT MAX(Id)+1
			FROM EcologyDB.dbo.area
	),
	'Name',
	(
		SELECT Id
			FROM EcologyDB.dbo.district
				WHERE DistrictName LIKE '%����������%'
	),
	(
		SELECT AVG(Rang)
			FROM EcologyDB.dbo.area JOIN EcologyDB.dbo.district ON district.Id = area.District
				WHERE DistrictName LIKE '%����������%'
	)