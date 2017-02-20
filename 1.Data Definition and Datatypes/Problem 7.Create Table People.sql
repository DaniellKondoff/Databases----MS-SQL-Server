Create Table Users
(
Id INT  PRIMARY KEY IDENTITY,
Name varchar(200) NOT NULL,
Picture varbinary(MAX) CHECK (Datalength(Picture) <=2097152),
Height decimal(10,2),
Weight decimal(10,2),
Gender char(1) CHECK (Gender = 'm' OR Gender = 'f'),
Birthdate date NOT NULL,
Biography varchar(MAX)
)


Insert INTO Users(Name,Picture,Height,Weight,Gender,Birthdate,Biography)
VALUES
('Name',NULL,145,60,'m','05/11/2004','Some text'),
('Ivan',NULL,185,80,'m','02/02/1991','Some text'),
('Malina',NULL,165,40,'f','12/12/1951','Some text'),
('Galya',NULL,200,80,'f','05/10/1984','Some text'),
('Drago',NULL,185,150,'m','2/02/1998','Some text')

