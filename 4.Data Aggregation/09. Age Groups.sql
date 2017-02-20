Select 
Case
	When w.Age between 0 and 10 Then '[0-10]'
	When w.Age between 11 and 20 Then '[11-20]'
	When w.Age between 21 and 30 Then '[21-30]'
	When w.Age between 31 and 40 Then '[31-40]'
	When w.Age between 41 and 50 Then '[41-50]'
	When w.Age between 51 and 60 Then '[51-60]'
	Else '[61+]'
END AS AgeGroup,COUNT(*) as WizzardCount
FROM WizzardDeposits as w
Group By
	Case
	When w.Age between 0 and 10 Then '[0-10]'
	When w.Age between 11 and 20 Then '[11-20]'
	When w.Age between 21 and 30 Then '[21-30]'
	When w.Age between 31 and 40 Then '[31-40]'
	When w.Age between 41 and 50 Then '[41-50]'
	When w.Age between 51 and 60 Then '[51-60]'
	Else '[61+]'
END



