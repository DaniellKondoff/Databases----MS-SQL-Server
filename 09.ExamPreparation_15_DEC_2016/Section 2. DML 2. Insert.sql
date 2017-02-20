INSERT INTO Messages(Content,SentOn,ChatId,UserId)
Select CONCAT(u.Age,'-',u.Gender,'-',l.Latitude,'-',l.Longitude) as Content,
'2016-12-15' as SentOn,
CASE 
	When u.Gender='F' THEN  CEILING(SQRT(u.Age*2))
	When u.Gender='M' THEN  CEILING(Power(u.Age/18,3))
END as ChatId,
u.Id as UserId
FROM Users as u
JOIN Locations as l
ON u.LocationId=l.Id
Where u.Id Between 10 AND 20