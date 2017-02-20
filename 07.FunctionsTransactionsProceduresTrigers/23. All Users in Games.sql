Select g.Name as Game,
	gt.Name as 'Game Type',
	u.Username,
	ug.Level,
	ug.Cash,
	ch.Name as 'Character'
from Users as u
JOIN UsersGames as ug
ON u.Id = ug.UserId
JOIN Games as g
ON ug.GameId=g.Id
JOIN Characters as ch
ON ug.CharacterId=ch.Id
JOIN GameTypes as gt
ON gt.Id=g.GameTypeId
Order BY ug.Level DESC,
u.Username ASC,
g.Name ASC