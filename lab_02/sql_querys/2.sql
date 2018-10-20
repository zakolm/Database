--Вывести строку сертификата и его id в категории продуктов от 1 до 5. Отсортировать по строке сертификата
SELECT DISTINCT string_sertificate, id_sertificate
	FROM EcologyDB.dbo.element
		WHERE id_sertificate BETWEEN 1 AND 5