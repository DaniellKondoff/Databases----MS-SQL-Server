Select top 5
 e.EmployeeID,e.FirstName,a.AccountNumber
 from Employees as e
JOIn EmployeesAccounts as ea
ON e.EmployeeID=ea.EmployeeID
JOIN Accounts as a
ON a.AccountID=ea.AccountID
Where YEAR(a.StartDate) >'2012'
Order BY e.FirstName DESC