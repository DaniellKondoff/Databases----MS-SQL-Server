Select SUM(l.Amount) as TotalLoanAmount,
MAX(l.Interest) as MaxInterest,
MIN(e.Salary) as MinEmployeeSalary
from Employees as e
JOIN EmployeesLoans as el
ON e.EmployeeID =el.EmployeeID
JOIN Loans as l
ON l.LoanID=el.LoanID