Create Procedure usp_TransferMoney(@senderId INT, @receiverId INT, @amount Money)
AS
BEGIN
BEGIN Transaction
	
UPDATE Accounts
SET Balance -=@amount
Where Id=@senderId
IF @@ROWCOUNT <> 1
	BEGIN
	ROLLBACK;
	RAISERROR('Invalid account!', 16, 1)
	Return
	END

	IF (Select Balance from Accounts Where Accounts.Id =@senderId) <0
	BEGIN
	ROLLBACK;
	RAISERROR('Invalid ammount', 16, 1)
	Return
	END

UPDATE Accounts
SET Balance +=@amount
Where Id=@receiverId
IF @@ROWCOUNT <> 1
	BEGIN
	ROLLBACK;
	RAISERROR('Invalid account!', 16, 1)
	Return
	END
COMMIT
END

EXEC usp_TransferMoney 1,2,200