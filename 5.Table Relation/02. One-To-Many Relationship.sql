Create Table Manufacturers(
ManufacturerID int Primary Key,
Name varchar(50) not null,
EstablishedOn Date
)

Create Table Models(
ModelID int Primary Key,
Name varchar(50) not null,
ManufacturerID int not null,
Constraint FK_Models_Manufaturers Foreign KEY(ManufacturerID) references Manufacturers(ManufacturerID)
)

Insert Into Manufacturers(ManufacturerID,Name,EstablishedOn)
Values
(1,'BMW','07/03/1916'),
(2,'Tesla','01/01/2003'),
(3,'Lada','01/05/1966')

INSERT INTO Models(ModelID,Name,ManufacturerID)
Values
(101,'X1',1),
(102,'i6',1),
(103,'Model S',3),
(104,'Model X',3),
(105,'Model 3',3),
(106,'Nova',3)