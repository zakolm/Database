CREATE TABLE dbo.recycling
(
	recyclingID smallint NOT NULL,
	Title nvarchar(50) NOT NULL,
	decompositionID int NULL,
	CONSTRAINT recyclingID PRIMARY KEY CLUSTERED (recyclingID ASC)
);
GO

INSERT INTO dbo.recycling VALUES(1, 'Полиэтилентерефталат', NULL);
INSERT INTO dbo.recycling VALUES(2, 'Полиэтилен высокой плотности', 1);
INSERT INTO dbo.recycling VALUES(3, 'Поливинилхлорид', 2);
INSERT INTO dbo.recycling VALUES(4, 'Полиэтилен низкой плотности', 3);

-- Заполнение таблицы значениями.
/*DECLARE @number INT
SET @number = 1;
WHILE @number < 5
BEGIN
	INSERT INTO dbo.recycling (recyclingID, Title, decompositionID)
		SELECT
			@number,
			(
				SELECT ElementName
					FROM EcologyDB.dbo.element
						WHERE element.Id = @number
			),
			NULL
	SET @number = @number + 1
END;
GO*/

WITH DirectReports (decompositionID, recyclingID, Title, Level)
AS
(
	 SELECT e.decompositionID, e.recyclingID, e.Title, 0 AS Level
	 FROM dbo.recycling AS e
	 WHERE decompositionID IS NULL
	 UNION ALL
	 SELECT e.decompositionID, e.recyclingID, e.Title, Level + 1
	 FROM dbo.recycling AS e INNER JOIN DirectReports AS d ON e.decompositionID = d.recyclingID
)

SELECT decompositionID, recyclingID, Title, Level
	FROM DirectReports 

IF OBJECT_ID('recycling', 'U') IS NOT NULL
DROP TABLE dbo.recycling
GO