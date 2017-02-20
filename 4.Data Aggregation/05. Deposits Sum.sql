Select w.DepositGroup, SUM(w.DepositAmount) as TotalSum
from WizzardDeposits as w
Group by w.DepositGroup