Create Function udf_ConcatString(@firstString varchar(MAX), @secondString varchar(MAX))
Returns varchar(MAX)
BEGIN
	Return Concat(Reverse(@firstString),Reverse(@secondString))
END

Select dbo.udf_ConcatString('Soft','Uni')