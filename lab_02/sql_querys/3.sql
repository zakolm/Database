--Вывести имя района и Административный округ который находится на западе Москвы
SELECT DISTINCT AreaName, DistrictName
	FROM EcologyDB.dbo.district JOIN EcologyDB.dbo.area ON area.District = district.id
		WHERE district.DistrictName LIKE '%ЗАО%'