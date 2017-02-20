Begin Transaction 
Declare @sum1 Money = (Select  SUM(Price) 
						from Items 
						Where MinLevel Between 11 AND 12)

IF(Select Cash from UsersGames Where id=110) <@sum1
BEGIN
ROLLBACK
END

Else
BEGIN
	Update UsersGames
	SET Cash-=@sum1
	Where Id=110

	Insert INTO UserGameItems(UserGameId,ItemId)
	Select 110,Id from Items
	Where MinLevel Between 11 and 12
	COMMIT
END


Begin Transaction
Declare @sum2 Money = (Select SUM(Price) from Items 
				Where MinLevel Between 19 AND 21)
IF(Select Cash from UsersGames Where Id=110)<@sum2
BEGIN
	Rollback
END

Else
BEGIN
	Update UsersGames
	Set Cash-=@sum2
	Where Id=110

	Insert into UserGameItems(UserGameId,ItemId)
	Select 110,ID from Items
	Where MinLevel Between 19 and 21
	COMMIT
END

select i.Name as 'Item Name'
from UserGameItems as ugi
JOIN Items as i
ON ugi.ItemId=i.Id
Where ugi.UserGameId=110
Order By Name ASC


