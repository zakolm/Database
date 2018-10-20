SELECT district.DistrictName,
	AVG(Rang) OVER(PARTITION BY /*district.Id, */district.DistrictName) AS AvgPrice
		FROM EcologyDB.dbo.area JOIN EcologyDB.dbo.district ON district.Id = area.District
			--GROUP BY district.DistrictName, area.Rang