CREATE TABLE Users
(
ID BIGINT PRIMARY KEY IDENTITY,
Username varchar(30) UNIQUE NOT NULL,
Password varchar(20) NOT NULL,
ProfilePicture varbinary(MAX) CHECK(DATALENGTH(ProfilePicture) <= 900000),
LastLoginTime datetime,
IsDeleted char(5) CHECK (IsDeleted = 'true' OR IsDeleted ='false')
)


INSERT INTO Users(Username,Password,ProfilePicture,LastLoginTime,IsDeleted)
VALUES
('Ivan','123asdsf',NULL,'02/20/1995 12:00:00','false'),
('Drago','123asdsf',NULL,'02/20/1995 12:00:00','false'),
('Kolio','123asdsf',NULL,'02/20/1995 12:00:00','false'),
('Blago','123asdsf',NULL,'02/20/1995 12:00:00','false'),
('Messi','123asdsf',NULL,'02/20/1995 12:00:00','false')