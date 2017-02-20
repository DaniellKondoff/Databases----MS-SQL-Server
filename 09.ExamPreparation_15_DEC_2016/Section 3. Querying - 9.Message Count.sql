Select top 5 c.Id,COUNT(*) as TotalMessages from Chats as c
RIGHT JOIN Messages as m
ON c.Id=m.ChatId
Where m.Id <90
Group BY c.Id
Order BY TotalMessages DESC, c.Id ASC
