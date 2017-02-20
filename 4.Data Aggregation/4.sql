select top 1 with ties depositgroup
from [dbo].[WizzardDeposits]
group by DepositGroup
order by avg(magicwandsize) asc

select top 1 DepositGroup
from WizzardDeposits
Group by DepositGroup
Order by AVG(MagicWandSize)

Select MIN(AverageMagicWandSize) as MinAverageMagicWandSize 
From
(Select DepositGroup
,AVG(MagicWandSize) as AverageMagicWandSize
From WizzardDeposits
Group by DepositGroup) as AVGDG

Select DepositGroup from
(Select DepositGroup
,AVG(MagicWandSize) as AverageMagicWandSize
From WizzardDeposits
Group by DepositGroup) as AVGD
Where AverageMagicWandSize = (Select MIN(AverageMagicWandSize) as MinAverageMagicWandSize 
								From
								(Select DepositGroup
								,AVG(MagicWandSize) as AverageMagicWandSize
								From WizzardDeposits
								Group by DepositGroup) as AVGDG)

------------------
Select top 1 with ties DepositGroup
from WizzardDeposits
Group BY DepositGroup
Order BY AVG(MagicWandSize)
								