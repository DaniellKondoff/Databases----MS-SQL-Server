Create Function ufn_CalculateFutureValue ( @I MONEY,@R float,@T int)
returns MONEY
AS
BEGIN
declare @result Money

SET @result =  @I * (Power((1+@R),@T))
RETURN @result
END