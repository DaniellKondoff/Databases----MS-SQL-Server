Create Procedure usp_GetTownsStartingWith
(@string varchar(MAX))
AS
Declare @stringCount int = LEN(@string)

Select Name
from Towns
Where LEFT(Name,@stringCount)=@string

Exec usp_GetTownsStartingWith 'ca'