Select top 10 e.FirstName,e.LastName,e.DepartmentID
 from Employees as e
 Where e.Salary >
 (Select AVG(sal.Salary) from 
 (Select Salary,DepartmentID
 from Employees) AS sal
 Where  sal.DepartmentID = e.DepartmentID)

 Select top 10
 e.FirstName,
 e.LastName,
 e.DepartmentID
 from Employees as e
 Where Salary >
 (
 Select AVG(Salary) 
 from Employees as emp
 Where e.DepartmentID= emp.DepartmentID
 Group BY DepartmentID
 )

 

