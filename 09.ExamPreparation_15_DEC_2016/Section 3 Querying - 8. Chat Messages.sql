Select c.Id,Title,m.Id from Chats as c
JOIN Messages as m
ON c.Id=m.ChatId
Where m.SentOn < '2012.03.26' AND c.Title LIKE '%x'
Order BY c.Id ASC , m.Id ASC