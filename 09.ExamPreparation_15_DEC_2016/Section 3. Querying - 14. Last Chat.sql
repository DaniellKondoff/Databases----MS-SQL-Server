Select TOP 1  WITH TIES c.Title,m.Content from Chats as c
LEft JOIN Messages as m ON c.Id=m.ChatId
Order BY c.StartDate DESC,m.SentOn ASC