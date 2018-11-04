USE EcologyDB;
GO

IF OBJECT_ID('AInsert', 'TR') IS NOT NULL
	DROP TRIGGER AInsert
GO

CREATE TRIGGER AInsert
ON area
INSTEAD OF INSERT
AS
BEGIN
    RAISERROR('This is uneditable table.',10,1);
END