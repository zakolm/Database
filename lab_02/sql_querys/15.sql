SELECT Rang, AreaName, DistrictName 
	FROM EcologyDB.dbo.area JOIN EcologyDB.dbo.district ON district.Id = area.District
		GROUP BY AreaName, DistrictName, Rang
			HAVING Rang > 2