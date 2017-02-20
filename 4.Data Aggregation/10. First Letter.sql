Select LEFT(FirstName,1) as FirstLeter
from WizzardDeposits
Where DepositGroup='Troll Chest'
Group by LEFT(FirstName,1)
Order by FirstLeter ASC
