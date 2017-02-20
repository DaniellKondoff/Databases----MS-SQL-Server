Declare @userGameID INT =
(Select ug.Id
from Users as u
JOIN UsersGames as ug
ON u.Id=ug.UserId
JOIN Games as g
ON ug.GameId=g.Id
Where u.Username='Alex' AND g.Name='Edinburgh')

Insert INTO UserGameItems (ItemId,UserGameId)
Select i.Id, @userGameID
 from Items as i
Where i.Name IN ('Blackguard', 'Bottomless Potion of Amplification',
                  'Eye of Etlich (Diablo III)', 'Gem of Efficacious Toxin',
                  'Golden Gorget of Leoric', 'Hellfire Amulet')

Update UsersGames
SET Cash-=
(
Select SUM(i.Price) from Items as i
Where i.Name IN ('Blackguard', 'Bottomless Potion of Amplification',
                  'Eye of Etlich (Diablo III)', 'Gem of Efficacious Toxin',
                  'Golden Gorget of Leoric', 'Hellfire Amulet')
)
Where Id =
(
Select ug.Id
from Users as u
JOIN UsersGames as ug
ON u.Id=ug.UserId
JOIN Games as g
ON ug.GameId=g.Id
Where u.Username='Alex' AND g.Name='Edinburgh'
)

SELECT u.Username, g.Name, ug.Cash, i.Name AS [Item Name]
  FROM Users AS u
 INNER JOIN UsersGames AS ug
    ON u.Id = ug.UserId
 INNER JOIN Games AS g
    ON ug.GameId = g.Id
 INNER JOIN UserGameItems AS ugi
    ON ugi.UserGameId = ug.Id
 INNER JOIN Items AS i
    ON ugi.ItemId = i.Id
 WHERE g.Name = 'Edinburgh'
 ORDER BY i.Name