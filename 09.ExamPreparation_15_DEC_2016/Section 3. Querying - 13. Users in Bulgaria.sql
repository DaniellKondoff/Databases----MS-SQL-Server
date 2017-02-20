Select u.Nickname,c.Title,l.Latitude,l.Longitude from Users as u
JOIN Locations as l
ON l.Id=u.LocationId
LEFT JOIN UsersChats as uc
ON uc.UserId=u.Id
LEFT JOIN Chats as c
ON c.Id=uc.ChatId
Where (l.Latitude BETWEEN 41.13999 AND 44.12999) AND (l.Longitude Between 22.20999 AND 28.35999)
Order BY Title ASC