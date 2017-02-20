Select i.Name,i.Price,i.MinLevel,
s.Strength,s.Defence,s.Speed,s.Luck,s.Mind
from Items as i
JOIN [dbo].[Statistics] as s
ON i.StatisticId=s.Id
Where s.Speed> (
				Select AVG(s.Speed) from Items as i
				JOIN [dbo].[Statistics] as s
				ON i.StatisticId=s.Id
				)
AND
s.Luck > (
			Select AVG(s.Luck) from Items as i
				JOIN [dbo].[Statistics] as s
				ON i.StatisticId=s.Id
				)
AND s.Mind >(
			Select AVG(s.Mind) from Items as i
				JOIN [dbo].[Statistics] as s
				ON i.StatisticId=s.Id
)
Order By i.Name ASC