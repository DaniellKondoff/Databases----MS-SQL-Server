Create Function udf_GetRadians(@degrees FLOAT)
RETURNS FLOAT
AS
BEGIN
	Return (@degrees*PI())/180
END

SELECT dbo.udf_GetRadians(22.12) AS Radians

