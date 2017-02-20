Alter table Users
ADD CONSTRAINT PasswordLenght
CHECK (DATALENGTH(Password) >=5)
