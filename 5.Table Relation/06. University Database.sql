Create Table Majors(
MajorID int Primary Key,
Name varchar(50) not null
)
Create Table Students(
StudentID int Primary KEY,
StudentNumber varchar(50),
StudentName varchar(50),
MajorID int,
Constraint FK_Students_Majars Foreign Key (MajorID) references Majors (MajorID)
)

Create Table Subjects(
SubjectID int Primary KEY,
SubjectName varchar(50) not null
)

Create Table Agenda(
SubjectID int,
StudentID int,
Constraint PK_Agenda Primary KEY(SubjectID,StudentID),
Constraint FK_Agenda_Students Foreign KEY (StudentID) references Students(StudentID),
Constraint FK_Agenda_Subjects Foreign KEY (SubjectID) References Subjects(SubjectID)
)

Create Table Payments(
PeymentID int Primary KEY,
PaymendDate Date,
PaymentAmount decimal(8,2),
StudentID int,
Constraint FK_Payments_Students Foreign KEY(StudentID) References Students(StudentID)
)