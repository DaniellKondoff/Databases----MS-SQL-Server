Create Procedure usp_CustomersWithUnexpiredLoans (@CustomerID int)
as
BEGIN
Select c.CustomerID,c.FirstName,l.LoanID from Customers as c
JOIN Loans as l
ON c.CustomerID=l.CustomerID
Where c.CustomerID=@CustomerID AND l.ExpirationDate IS NULL
END
