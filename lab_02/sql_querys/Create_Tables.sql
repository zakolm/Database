-- Create a new database called 'EcologyDB'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'EcologyDB'
) 

CREATE DATABASE EcologyDB
GO

USE EcologyDB
GO

-- Create a new table
-- Drop the table if it already exists
IF OBJECT_ID('link', 'U') IS NOT NULL
DROP TABLE link
GO
-- Create the table in the specified schema
CREATE TABLE link
(
    Id  INT NOT NULL,
    id_trashbasket INT NOT NULL,
	id_element INT NOT NULL,
);
GO

-- Create a new table
-- Drop the table if it already exists
IF OBJECT_ID('element', 'U') IS NOT NULL
DROP TABLE element
GO
-- Create the table in the specified schema
CREATE TABLE element
(
	Id INT NOT NULL,
	ElementName NVARCHAR(85) NOT NULL,
	string_sertificate NVARCHAR(85),
	id_sertificate INT
);
GO

-- Create a new table
-- Drop the table if it already exists
IF OBJECT_ID('trashbasket', 'U') IS NOT NULL
DROP TABLE trashbasket
GO
-- Create the table in the specified schema
CREATE TABLE trashbasket
(
    Id  INT NOT NULL,
    Street NVARCHAR(85) NOT NULL,
	Area INT NOT NULL
);
GO

-- Create a new table
-- Drop the table if it already exists
IF OBJECT_ID('area', 'U') IS NOT NULL
DROP TABLE area                
GO
-- Create the table in the specified schema
CREATE TABLE area
(
    Id INT NOT NULL,
    AreaName NVARCHAR(85) NOT NULL,
    District INT NOT NULL,
	Rang INT NOT NULL
);
GO

-- Create a new table
-- Drop the table if it already exists
IF OBJECT_ID('district', 'U') IS NOT NULL
DROP TABLE district
GO
-- Create the table in the specified schema
CREATE TABLE district
(
    Id INT NOT NULL, 
    DistrictName NVARCHAR(85) NOT NULL,
);
GO