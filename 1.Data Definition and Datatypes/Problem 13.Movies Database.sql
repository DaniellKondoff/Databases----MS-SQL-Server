Create Database Movies

Create Table Directors(
Id int Primary Key Identity,
DirectorName varchar(50) NOT NULL,
Notes varchar(MAX)
)
Create Table Genres(
Id int Primary Key Identity,
GenreName varchar(50) NOT NULL,
Notes varchar(MAX)
)

Create Table Categories (
Id int Primary Key Identity,
CategoryName varchar(50) NOT NULL,
Notes varchar(MAX)
)

Create Table Movies(
Id int Primary Key Identity,
Title varchar(50) NOT NULL,
DirectorId int NOT NULL,
Constraint FK_Diretor_Id Foreign Key (DirectorId) references Directors(Id),
CopyrightYear Date,
Lenght int,
GenreId int NOT NULL,
Constraint FK_Genre_Id Foreign Key (GenreId) references Genres(Id),
CategoryId int NOT NULL,
Constraint FK_Category_Id Foreign Key (CategoryId) references Categories(Id),
Rating int NOT NULL,
Notes varchar(MAX)
)

Insert Into Directors(DirectorName,Notes)
Values
('Did1','SomeNotes'),
('Did2','SomeNotes'),
('Did3','SomeNotes'),
('Did4','SomeNotes'),
('Did5','SomeNotes')

Insert Into Genres(GenreName,Notes)
Values
('Comedy','SomeNotes'),
('Action','SomeNotes'),
('Treller','SomeNotes'),
('Horror','SomeNotes'),
('Porn','SomeNotes')

Insert Into Categories(CategoryName,Notes)
Values
('Low','SomeNotes'),
('Medium','SomeNotes'),
('High','SomeNotes'),
('Superb','SomeNotes'),
('Great','SomeNotes')

Insert Into Movies(Title,DirectorId,CopyrightYear,Lenght,GenreId,CategoryId,Rating,Notes)
Values
('Legend',1,NULL,60,3,5,10,'Mnou yak brat'),
('Titanic',2,NULL,180,1,2,10,'Mnou yak brat'),
('Blood Diamond',3,NULL,120,3,3,10,'Mnou yak brat'),
('Some Movie',1,NULL,60,4,4,10,'Mnou yak brat'),
('Another Movie',1,NULL,60,5,5,10,'Mnou yak brat')


