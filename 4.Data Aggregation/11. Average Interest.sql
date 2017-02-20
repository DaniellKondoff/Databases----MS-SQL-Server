Select DepositGroup
	,IsDepositExpired
	,AVG(DepositInterest) as AverageInterest
from WizzardDeposits
Where DepositStartDate > '01/01/1985'
GROUP BY DepositGroup,IsDepositExpired
Order by DepositGroup DESC,
IsDepositExpired ASC