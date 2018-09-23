BULK INSERT district
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\district_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO

BULK INSERT area
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\area_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO 

BULK INSERT element
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\elements.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO 

BULK INSERT link
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\link_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO

BULK INSERT trashbasket
FROM 'C:\Users\massi\PycharmProjects\Database\lab_01\trashbasket_table.csv'
WITH (DATAFILETYPE = 'char', FIRSTROW = 2, FIELDTERMINATOR = ',', ROWTERMINATOR = '0x0a');
GO

