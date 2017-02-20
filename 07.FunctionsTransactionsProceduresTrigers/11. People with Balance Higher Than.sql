Create Procedure usp_GetHoldersWithBalanceHigherThan (@reqBalance money)
AS
BEGIN
Select FirstName as [First Name],LastName as [Last Name] from
(Select AccountHolderId,SUM(Balance)  as SumBalance
from Accounts
Group BY AccountHolderId) acc
JOIN AccountHolders as ac
On acc.AccountHolderId=ac.Id
Where SumBalance>@reqBalance
Order by [Last Name]
END

EXEC usp_GetHoldersWithBalanceHigherThan 5555
