Create Trigger TR_HireEmployee ON [dbo].[Employees] AFTER INSERT
AS
BEGIN
	Update EmployeesLoans
	SET EmployeeID=i.EmployeeID
	FROM EmployeesLoans as e
	JOIN inserted as i
	ON e.EmployeeID +1 =i.EmployeeID
END