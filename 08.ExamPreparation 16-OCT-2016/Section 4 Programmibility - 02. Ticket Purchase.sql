Create Procedure usp_PurchaseTicket(@CustomerID int,@FlightID int,@TicketPrice decimal(8,2),@Class varchar(6),@Seat varchar(5))
AS
BEGIN
	BEGIN TRAN
		Declare @index  int
		SET @index =ISNULL((Select MAX(TicketID) from Tickets),0)+1

		Update CustomerBankAccounts
		SET Balance-=@TicketPrice
		Where CustomerID=@CustomerID

		Declare @BalanceCheck decimal(10,2) = (Select Balance from CustomerBankAccounts Where CustomerID=@CustomerID)

		IF(@BalanceCheck<0 OR @BalanceCheck IS NULL)
		BEGIN
			ROLLBACK
			RaisError('Insufficient bank account balance for ticket purchase.',16,1)
			Return
		END

		ELSE
			BEGIN
			Insert INTO Tickets(TicketID,Price,Class,Seat,CustomerID,FlightID)
			Values(@index,@TicketPrice,@Class,@Seat,@CustomerID,@FlightID)
		END
	COMMIT
END

EXEC  usp_PurchaseTicket 1,5,2000,'First','233-C'