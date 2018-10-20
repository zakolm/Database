
WITH DELWORK
AS
(
	SELECT *,
		ROW_NUMBER() OVER(PARTITION BY ElementName ORDER BY Id) rn
	  FROM EcologyDB.dbo.element
)
select *fROM DELWORK
	WHERE 1 = rn



DELETE FROM EcologyDB.dbo.element
WHERE Id in
(
	SELECT Id
	FROM
	(
		SELECT *,
			ROW_NUMBER() OVER(PARTITION BY ElementName ORDER BY Id) rn
		  FROM EcologyDB.dbo.element
	) a
	WHERE rn>1
)
