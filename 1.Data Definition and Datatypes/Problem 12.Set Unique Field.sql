Alter table Users
DROP Constraint[PK_ID_Username]

Alter table Users
Add Constraint PK_ID
Primary Key (Id)

Alter Table Users
Add Constraint UniqueLenghtNames
UNIQUE (Username),
Check (Len(Username) >=3)

