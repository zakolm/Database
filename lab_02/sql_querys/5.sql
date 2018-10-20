SELECT Id, Street
	FROM EcologyDB.dbo.trashbasket
		WHERE EXISTS
			(
			SELECT 'dfddgbd'
				FROM EcologyDB.dbo.area
					WHERE Rang > 2
			)