Create Procedure usp_CalculateFutureValueForAccount (@accountID int,@rate float)
AS
BEGIN
Select 
ac.Id as 'Account Id',
ah.FirstName as 'First Name',
ah.LastName as 'Last Name',
ac.Balance as [Current Balance],
dbo.ufn_CalculateFutureValue(ac.Balance,@rate,5) as [Balance in 5 years]
from Accounts as ac
JOIN AccountHolders as ah
ON ac.AccountHolderId=ah.Id
Where ac.Id =@accountID
END

Exec dbo.usp_CalculateFutureValueForAccount 1,0.1

