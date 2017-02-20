Select w.DepositGroup, SUM(w.DepositAmount) as TotalSum
from WizzardDeposits as w
Where w.MagicWandCreator='Ollivander family'
Group by w.DepositGroup