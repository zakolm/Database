SELECT AreaName, DistrictName 
	FROM EcologyDB.dbo.area JOIN EcologyDB.dbo.district ON district.Id = area.District
		GROUP BY AreaName, DistrictName