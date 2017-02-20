Select  DepositGroup from
(Select DepositGroup,
	  AVG(MagicWandSize) as AverageWandSize
from WizzardDeposits
Group BY DepositGroup) as aw
Where AverageWandSize =

(Select MIN(w.AverageWandSize) as MinAverageWandSize from
(Select DepositGroup,
	  AVG(MagicWandSize) as AverageWandSize
from WizzardDeposits
Group BY DepositGroup) as w)




