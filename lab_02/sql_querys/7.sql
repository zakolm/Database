--������� ������� ������� � �����������
SELECT AVG(Rang) AS '������� ������� � ����������'
	FROM EcologyDB.dbo.area
		WHERE District IN
		(
			SELECT District
				FROM EcologyDB.dbo.district
					WHERE DistrictName LIKE '����������%'
		)
