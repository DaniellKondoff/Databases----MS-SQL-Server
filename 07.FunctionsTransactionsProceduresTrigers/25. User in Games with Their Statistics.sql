Select 
u.Username,
g.Name as Game,
MAX(c.Name) as Character,
SUM(its.Strength) + MAX(gts.Strength)+MAX(cs.Strength) as Strength,
SUM(its.Defence) + MAX(gts.Defence)+MAX(cs.Defence) as Defence,
SUM(its.Speed) + MAX(gts.Speed)+MAX(cs.Speed) as Speed,
SUM(its.Mind) + MAX(gts.Mind)+MAX(cs.Mind) as Mind,
SUM(its.Luck) + MAX(gts.Luck)+MAX(cs.Luck) as Luck
 from Users as u
JOIN UsersGames as ug
ON u.Id=ug.UserId
JOIN Games as g
ON g.Id=ug.GameId
JOIN Characters as c
ON ug.CharacterId = c.Id
JOIN [dbo].[Statistics] as cs
ON c.StatisticId= cs.Id
JOIN GameTypes as gt
ON g.GameTypeId=gt.Id
JOIN [dbo].[Statistics] as gts
ON gt.BonusStatsId=gts.Id
JOIN UserGameItems as ugi
ON ug.Id=ugi.UserGameId
JOIN Items as i
ON ugi.ItemId=i.Id
JOIN [dbo].[Statistics] as its
ON its.Id =i.StatisticId
Group By u.Username,g.Name
Order By Strength DESC,Defence DESC,Speed DESC,Mind DESC,Luck DESC
