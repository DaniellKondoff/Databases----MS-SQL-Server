Create Procedure usp_GetHoldersFullName 
AS
BEGIN
Select FirstName + ' ' + LastName as [Full Name] 
from AccountHolders
END

Exec dbo.usp_GetHoldersFullName