

Select SUM(SumDiff.SumDifference)
FROM
(Select h.DepositAmount -
	(Select DepositAmount 
	from WizzardDeposits
	Where Id=h.Id+1
	) as SumDifference
From WizzardDeposits as h) as SumDiff


