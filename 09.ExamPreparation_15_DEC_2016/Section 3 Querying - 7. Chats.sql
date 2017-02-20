Select Title,IsActive from Chats
Where (IsActive = 0
AND LEN(Title) <5) OR SUBSTRING(Title,3,2)='tl' 
Order By Title DESC