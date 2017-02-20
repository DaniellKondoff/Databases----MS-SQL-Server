Select w.DepositGroup
	,w.MagicWandCreator
	,MIN(w.DepositCharge) as MinDepositCharge
from WizzardDeposits as w
Group By w.DepositGroup,w.MagicWandCreator
Order by w.MagicWandCreator,w.DepositGroup