

Create Table Locations(
Id int Primary Key Identity,
Latitude float,
Longitude float
)

Create Table Credentials(
Id int Primary Key Identity,
Email varchar(30),
[Password] varchar(20)
)

Create Table Users(
Id int Primary Key Identity,
Nickname varchar(25),
Gender char(1),
Age int,
LocationId int,
CredentialId int UNIQUE,
Constraint FK_Users_Locations Foreign Key(LocationId) references Locations(ID),
Constraint FK_Users_Credentials Foreign Key (CredentialId) References Credentials(ID)
)

Create Table Chats(
Id int Primary Key Identity,
Title varchar(32),
StartDate Date,
IsActive bit
)

Create Table Messages(
Id int Primary Key Identity,
[Content] varchar(200),
SentOn Date,
ChatId int,
UserId int,
Constraint FK_Messages_Chats Foreign Key(ChatId) References Chats(ID),
Constraint FK_Messages_Users Foreign Key(UserId) references Users(ID)
)

Create Table UsersChats(
UserId int,
ChatId int,
Constraint PK_UsersChats Primary Key(ChatId,UserId),
Constraint FK_UsersChats_Users Foreign Key (UserId) references Users(ID),
Constraint FK_UsersChats_Chats Foreign Key (ChatId) references Chats(ID)
)
