Select * FROM Departments

Select Name From Departments

Select FirstName,LastName,Salary From Employees

Select FirstName,MiddleName,LastName From Employees

SELECT FirstName + ' ' + LastName
       AS [Full Name],
       JobTitle,
       Salary
  FROM Employees

  Select FirstName +'.' + LastName + '@softuni.bg'
  AS [Full Email Address] From Employees

  Select Distinct Salary From Employees

  Select * From Employees
  Where JobTitle='Sales Representative'

   Select FirstName,LastName,JobTitle From Employees
  Where Salary >=20000 AND Salary <=30000

 Select FirstName,LastName,JobTitle From Employees
  Where Salary Between 20000 AND 30000

  SELECT FirstName + ' ' + MiddleName +' '+ LastName
       AS [Full Name]
  FROM Employees
  Where Salary = 25000 OR Salary = 14000 OR Salary =12500  OR Salary = 23600

SELECT FirstName + ' ' + MiddleName +' '+ LastName
       AS [Full Name]
  FROM Employees
  Where Salary IN (25000, 14000,12500, 23600)

  Select FirstName,LastName From Employees
  Where ManagerID IS NULL

Select FirstName,LastName,Salary From Employees
Where Salary >= 50000
Order by Salary DESC

-- 13.Find 5 Best Paid Employees.
Select TOP 5 FirstName,LastName From Employees
Order by Salary DESC

--14.Find All Employees Except Marketing
Select FirstName,LastName From Employees
Where DepartmentID != 4

--15. Sort Employees Table
Select * FROM Employees
Order by Salary DESC,
FirstName ASC,
LastName DESC,
MiddleName ASC



