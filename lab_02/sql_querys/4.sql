--������� id � �������� ����� �� ������� ��������� ��������� ��� ���������� ������, ����������� � ������ � ������������� ��������� ������ 2
SELECT Id, Street
	FROM EcologyDB.dbo.trashbasket
		WHERE Area IN 
			(
			SELECT Area
				FROM EcologyDB.dbo.area
					WHERE Rang > 2
			)