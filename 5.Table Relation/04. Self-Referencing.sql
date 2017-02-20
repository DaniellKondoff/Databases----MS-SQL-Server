Create Table Teachers(
TeacherID int Primary Key,
Name varchar(50) not null,
ManagerID int,
Constraint FK_TeacherID_ManagerID Foreign Key(ManagerID) References Teachers(TeacherID)
)