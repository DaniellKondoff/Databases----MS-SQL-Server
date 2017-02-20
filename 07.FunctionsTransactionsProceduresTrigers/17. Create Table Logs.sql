
Create Trigger T_Accounts_After_Update ON Accounts After Update
AS
Begin
	Insert into Logs (AccountId,OldSum,NewSum)
	Select i.Id,
	d.Balance,
	i.Balance
	 from inserted as i
	JOIN deleted as d
	ON i.Id=d.Id
END

UPDATE Accounts
SET Balance += 10
WHERE Id = 1