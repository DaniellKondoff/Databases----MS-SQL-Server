Select u.Id,u.Nickname,u.Age from Users as u
LEFT JOIN Locations as l
ON u.LocationId=l.Id
Where l.Id IS NULL