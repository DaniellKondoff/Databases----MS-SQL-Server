Create Proc usp_SubmitReview(@CustomerID INT,@ReviewContent varchar(255),@ReviewGrade INT,@AirlineName varchar(30))
AS
BEGIN

Begin Tran

Declare @Index INT
Declare @AirlineId INT

IF(Select COUNT(*) from CustomerReviews)=0
BEGIN
Set @Index=1
END
ELSE
BEGIN
SET @Index= (Select MAX(ReviewID) from CustomerReviews)+1
END
SET @AirlineId= (Select AirlineID from Airlines Where AirlineName=@AirlineName)

Insert INTO CustomerReviews(ReviewID,ReviewContent,ReviewGrade,AirlineID,CustomerID)
Values(@Index,@ReviewContent,@ReviewGrade,@AirlineId,@CustomerID)

 IF NOT EXISTS(Select AirlineID from Airlines Where AirlineName=@AirlineName)
 BEGIN
	RaisError('Airline does not exist.',16,1)
	ROLLBACK
 END
ELSE
	Commit
END

EXEC usp_SubmitReview 2,'hahahahha',10,'Royal Airline'
