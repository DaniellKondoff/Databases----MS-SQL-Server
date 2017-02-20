Create Function ufn_GetSalaryLevel(@salary MONEY)
Returns varchar(10)
AS
BEGIN
	Declare @result varchar(10);
	IF(@salary<30000)
	Begin
	set @result = 'Low'
	END
	Else IF(@salary>50000)
	Begin
	set @result = 'High'
	ENd
	ELSE
	BEGIN
	set @result = 'Average'
	END
	Return @result
END

Select FirstName,
LastName,
Salary,
dbo.ufn_GetSalaryLevel(Salary) as SalaryLevel
 from Employees