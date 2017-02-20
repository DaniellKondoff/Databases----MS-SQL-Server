Select w.DepositGroup,
	 MIN(w.MagicWandSize)  as [LongestMagicWand]
FROM WizzardDeposits as w
Group by w.DepositGroup