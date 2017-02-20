Create Trigger TR_Delete_Users On Users Instead OF Delete
AS
Delete from Messages
	Where UserId=(Select d.Id from deleted as d)
	Delete from UsersChats
	Where UserId =(Select d.Id from deleted as d)
	Delete from Users
	Where Id=(Select d.Id from deleted as d)


DELETE FROM Users
      WHERE Users.Id = 1
