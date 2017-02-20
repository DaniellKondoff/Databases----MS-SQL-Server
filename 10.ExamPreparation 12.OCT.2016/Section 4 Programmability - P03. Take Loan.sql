Create PROC usp_TakeLoan(@CustomerID int,@LoanAmount decimal(18,2),@Interest decimal(4,2),@StartDate Date)
AS
BEGIN
	BEGIN TRAN
		Insert INTO Loans(StartDate,Amount,Interest,CustomerID)
		Values(@StartDate,@LoanAmount,@Interest,@CustomerID)

		IF NOT(@LoanAmount Between 0.01 AND 100000)
		BEGIN
		ROLLBACK
		Raiserror('Invalid Loan Amount.',16,1)
		Return
		END
	COMMIT
END

EXEC usp_TakeLoan @CustomerID = 1, @LoanAmount = 500, @Interest = 1, @StartDate='20160915'