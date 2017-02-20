Create Function ufn_CashInUsersGames (@gameName varchar(100))
Returns @result Table (
SumCash Money
)
AS 
BEGIN
INSERT INTO @result
Select SUM(cashRank.Cash) from
(Select Cash,
ROW_NUMBER() OVER(Order By us.Cash DESC ) as rank
 from UsersGames as us
 JOIN Games as g
ON us.GameId=g.Id
Where g.Name=@gameName) as cashRank
Where ([rank]%2) <>0
Return
END

