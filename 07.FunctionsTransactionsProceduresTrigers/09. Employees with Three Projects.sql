Create Procedure usp_AssignProject(@emloyeeId INT, @projectID INT)
AS
BEGIN
DECLARE @maxEmployeeProjectsCount INT = 3
DECLARE @employeeProjectsCount INT

SET @employeeProjectsCount = (
Select COUNT(*) from EmployeesProjects
Where EmployeeID=@emloyeeId
)

Begin tran
Insert into EmployeesProjects
(EmployeeID,ProjectID)
Values (@emloyeeId,@projectID)

IF(@employeeProjectsCount >= @maxEmployeeProjectsCount)
Begin
	RAISERROR('The employee has too many projects!', 16, 1)
	ROLLBACK
END
COMMIT

END