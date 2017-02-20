Create Trigger TR_AccountLogs ON Accounts Instead of Delete
AS
BEGIN
	Delete From EmployeesAccounts
	Where AccountID IN (Select d.AccountID from deleted as d)
	Insert Into AccountLogs
	Select * from deleted
	Delete from Accounts
	Where AccountID IN (Select d.AccountID from deleted as d)
END