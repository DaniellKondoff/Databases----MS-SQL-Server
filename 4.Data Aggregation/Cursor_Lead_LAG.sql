
-- Cursor 12
Declare @currentDeposit decimal (8,2)
Declare @previousDeposit decimal (8,2)
Declare @totalSum decimal (8,2) = 0

Declare WizzardCursor Cursor For Select DepositAmount FROM WizzardDeposits
Open WizzardCursor
FETCH NEXT From WizzardCursor INTO @currentDeposit


WHILE (@@FETCH_STATUS = 0)
Begin
	IF (@previousDeposit IS NOT NULL)
	BEGIN
		SET @totalSum += (@previousDeposit - @currentDeposit )
	END
	SET @previousDeposit = @currentDeposit
	FETCH NEXT From WizzardCursor INTO @currentDeposit
End
CLOSE WizzardCursor
DEALLOCATE WizzardCursor

Select @totalSum

--------- LEAD Function
Select SUM(SumDIFF.DepositDifference) FROM
(Select
FirstName,
DepositAmount,
Lead(FirstName) OVER(Order BY ID) as guestWIzzard,
LEAD(DepositAmount) OVER (ORDER BY ID) as GuestDeposit,
DepositAmount - LEAD(DepositAmount) OVER (ORDER BY ID) as DepositDifference
FROM WizzardDeposits) as SumDIFF

--------LAG
Select SUM(SumDIFF.DepositDifference) FROM
(Select
FirstName,
DepositAmount,
LAG(FirstName) OVER(Order BY ID) as guestWIzzard,
LAG(DepositAmount) OVER (ORDER BY ID) as GuestDeposit,
DepositAmount - LEAD(DepositAmount) OVER (ORDER BY ID) as DepositDifference
FROM WizzardDeposits) as SumDIFF
