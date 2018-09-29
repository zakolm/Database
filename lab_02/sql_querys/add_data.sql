-- Export data from CSV-file to DataBase
-- Table district
BULK INSERT EcologyDB.dbo.district
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\data\district_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO

-- Export data from CSV-file to DataBase
-- Table area
BULK INSERT EcologyDB.dbo.area
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\data\area_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO 

-- Export data from CSV-file to DataBase
-- Table element
BULK INSERT EcologyDB.dbo.element
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\data\elements_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO 

-- Export data from CSV-file to DataBase
-- Table link
BULK INSERT EcologyDB.dbo.link
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\data\link_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO

-- Export data from CSV-file to DataBase
-- Table trashbasket
BULK INSERT EcologyDB.dbo.trashbasket
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\data\trashbasket_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO
