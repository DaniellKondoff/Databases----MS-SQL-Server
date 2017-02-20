Alter Table Users
ADD Constraint DF_CurrentDateTime
Default Getdate()
For LastLoginTime