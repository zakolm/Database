-- Primary key id
-- Unique element DistrictName
ALTER TABLE EcologyDB.dbo.district ADD
CONSTRAINT PK_dist PRIMARY KEY (Id),
CONSTRAINT UK_dist UNIQUE (DistrictName)
GO

-- Primary key id
-- Unique element AreaName
-- Foreign key(with district table) District-Id
ALTER TABLE EcologyDB.dbo.area ADD
CONSTRAINT PK_area PRIMARY KEY (Id),
CONSTRAINT UK_area UNIQUE (AreaName),
CONSTRAINT FKS_dist_area FOREIGN KEY (District) REFERENCES dbo.district (Id),
CONSTRAINT Rang_chk CHECK (Rang < 5)
GO

-- Primary key id
ALTER TABLE EcologyDB.dbo.element ADD
CONSTRAINT PK_elem PRIMARY KEY (Id)
GO

-- Primary key id
-- Foreign key(with area table) Area-Id
ALTER TABLE EcologyDB.dbo.trashbasket ADD
CONSTRAINT PK_trash PRIMARY KEY (Id),
CONSTRAINT FKS_dist_trash FOREIGN KEY (Area) REFERENCES dbo.area (Id)
GO

-- Primary key id
ALTER TABLE EcologyDB.dbo.link ADD
CONSTRAINT PK_link PRIMARY KEY (Id),
CONSTRAINT FK_trash_link FOREIGN KEY (id_trashbasket) REFERENCES dbo.trashbasket (Id),
CONSTRAINT FK_elem_link FOREIGN KEY (id_element) REFERENCES dbo.element (Id)
GO
