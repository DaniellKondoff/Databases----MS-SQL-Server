Create Procedure usp_WithdrawMoney (@accountId INT,@ammount money)
AS
BEGIN
BEGIN Transaction
UPDATE Accounts
SET Balance -=@ammount
Where Id=@accountId
IF @@ROWCOUNT <> 1
	BEGIN
	ROLLBACK;
	RAISERROR('Invalid account!', 16, 1)
	Return
	END
COMMIT
END