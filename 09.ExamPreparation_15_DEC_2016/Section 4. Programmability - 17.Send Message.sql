Create PROC udp_SendMessage (@UserId int,@ChatId int,@Content varchar(MAX))
AS
BEGIN
	BEGIN TRAN
	Declare @ChatCheck int = (SELECT COUNT(*) from UsersChats Where UserId=@UserId AND ChatId=@ChatId)
	IF (@ChatCheck <> 1)
	BEGIN
		ROLLBACK
		RAISERROR('There is no chat with that user!',16,1)
		Return
	END

	Insert Into Messages(Content,SentOn,ChatId,UserId)
	Values(@Content,GETDATE(),@ChatId,@UserId)
	COMMIT
END

EXEC dbo.udp_SendMessage 19, 17, 'Awesome'
