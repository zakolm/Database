SELECT distinct p1.Street AS �����,
(
	SELECT
		CASE p2.id_sertificate
		WHEN 70 THEN '����� ����� ������'
		ELSE ''
		END
	FROM EcologyDB.dbo.element p2 INNER JOIN EcologyDB.dbo.link p3
			ON p2.id = p3.id_element
          WHERE p1.id = p3.id_trashbasket
           FOR XML PATH('')
) AS [����� �� ������������� ������]
FROM EcologyDB.dbo.trashbasket p1