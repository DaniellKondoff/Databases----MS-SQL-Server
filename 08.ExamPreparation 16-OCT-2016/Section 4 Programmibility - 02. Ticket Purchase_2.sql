Create PROCEDURE usp_PurchaseTicket(
 @CustomerID int,
 @FlightID int,
 @TicketPrice decimal(8,2),
 @Class varchar(6),
 @Seat varchar(5)
 )
 AS
 BEGIN
BEGIN TRAN

DEclare @INDEX int
SET @INDEX = ISNULL((Select MAX(TicketID) from Tickets),0)+1

IF(Select Balance from CustomerBankAccounts Where CustomerID=@CustomerID) < @TicketPrice OR ((Select Balance from CustomerBankAccounts Where CustomerID=@CustomerID) IS NULL)
BEGIN
	ROLLBACK
	RAISERROR('Insufficient bank account balance for ticket purchase.',16,1)
	Return
END

ELSE
BEGIN
	Insert into Tickets(TicketID,Price,Class,Seat,CustomerID,FlightID)
	Values(@INDEX,@TicketPrice,@Class,@Seat,@CustomerID,@FlightID)

	UPDATE CustomerBankAccounts
	SET Balance-=@TicketPrice
	WHERE CustomerID=@CustomerID
END
	COMMIT
END