Select * from 
(Select u.Username,
		g.Name as Game,
		COUNT(*) as 'Items Count',
		SUM(i.Price) as 'Item Price'
from Users as u
JOIN UsersGames as ug
ON u.Id=ug.UserId
JOIN Games as g
ON g.Id=ug.GameId
JOIN UserGameItems as ugi
ON ugi.UserGameId=ug.Id
JOIN Items as i
ON ugi.ItemId=i.Id
GROUP BY u.Username,g.Name
Having COUNT(*) >=10) result
Order BY result.[Items Count] DESC,
result.[Item Price] DESC,
result.Username ASC