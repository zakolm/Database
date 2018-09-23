ALTER TABLE district ADD
CONSTRAINT PK_dist PRIMARY KEY (Id),
CONSTRAINT UK_dist UNIQUE (DistrictName)
GO

ALTER TABLE area ADD
CONSTRAINT PK_area PRIMARY KEY (Id),
CONSTRAINT UK_area UNIQUE (AreaName),
CONSTRAINT FKS_dist_area FOREIGN KEY (District) REFERENCES dbo.district (Id)
GO

ALTER TABLE element ADD
CONSTRAINT PK_elem PRIMARY KEY (Id)
GO

ALTER TABLE trashbasket ADD
CONSTRAINT PK_trash PRIMARY KEY (Id),
CONSTRAINT FKS_dist_trash FOREIGN KEY (Area) REFERENCES dbo.area (Id)
GO

ALTER TABLE link ADD
CONSTRAINT PK_link PRIMARY KEY (Id),
CONSTRAINT FK_trash_link FOREIGN KEY (id_trashbasket) REFERENCES dbo.trashbasket (Id),
CONSTRAINT FK_elem_link FOREIGN KEY (id_element) REFERENCES dbo.element (Id)
GO

ALTER TABLE dbo.area ADD
CONSTRAINT Rang_chk CHECK (Rang < 5)
GO