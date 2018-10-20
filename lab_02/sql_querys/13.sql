SELECT AreaName, Rang
	FROM EcologyDB.dbo.area
		WHERE Rang >= ALL
		(
			SELECT Rang
				FROM EcologyDB.dbo.area
					WHERE District IN
					(
						SELECT District
							FROM EcologyDB.dbo.district
								WHERE DistrictName LIKE 'ÞÂÀÎ%'
					)
		)