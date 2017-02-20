Create PROC udp_ChangePassword (@email varchar(30),@newPass varchar(20))
AS
BEGIN
	BEGIN TRAN
		Update Credentials
		SET Password=@newPass
		Where Email=@email

		IF @@ROWCOUNT <>1
		BEGIN
		ROLLBACK
		RAISERROR('The email does''t exist!',16,1)
		RETURN
		END
	COMMIT
END



