Create Table Students(
StudentID int Primary Key,
Name varchar(50) not null
)

Create Table Exams(
ExamID int Primary Key,
Name varchar(50) not null
)

Create Table StudentsExams(
StudentID int,
ExamID int,
Constraint PK_StudentsExams Primary Key(StudentID,ExamID),
Constraint FK_StudentsExams_Students Foreign Key (StudentID) references Students(StudentID),
Constraint FK_PK_StudentsExams_Exams Foreign Key(ExamID) references Exams(ExamID)
)

Insert INTO Students(StudentID,Name)
Values
(1,'Mila'),
(2,'Toni'),
(3,'Ron')

Insert into Exams(ExamID,Name)
Values
(101,'SpringMVC'),
(102,'Neo4j'),
(103,'Oracle 11g')

Insert INTO StudentsExams(StudentID,ExamID)
Values
(1,101),
(1,102),
(2,101),
(3,103),
(2,102),
(2,103)
