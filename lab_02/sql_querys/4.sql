--¬ывести id и название улицы на которой находитс€ контейнер дл€ сортировки мусора, наход€щийс€ в районе с экологическим рейтингом равным 2
SELECT Id, Street
	FROM EcologyDB.dbo.trashbasket
		WHERE Area IN 
			(
			SELECT Area
				FROM EcologyDB.dbo.area
					WHERE Rang > 2
			)