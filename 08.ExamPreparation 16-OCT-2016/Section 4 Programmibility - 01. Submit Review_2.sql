Create PROCEDURE usp_SubmitReview (@CustomerID int ,@ReviewContent varchar(max), @ReviewGrade int,  @AirlineName varchar(max) )
AS
BEGIN 
	BEGIN TRAN
		Declare @index int
		Declare @airID int

		SET @index = ISNULL((Select MAX(ReviewID) from CustomerReviews),0)+1
		SET @airID =(Select AirlineID from Airlines Where AirlineName=@AirlineName)

		IF NOT EXISTS(Select AirlineID from Airlines Where AirlineName=@AirlineName)
		BEGIN
			ROLLBACK
			RAISERROR('Airline does not exist.',16,1)
			Return
		END
		ELSE
		BEGIN
			Insert into CustomerReviews(ReviewID,ReviewContent,ReviewGrade,AirlineID,CustomerID)
			VALUES(@index,@ReviewContent,@ReviewGrade,@airID,@CustomerID)
		END

 
	COMMIT
END