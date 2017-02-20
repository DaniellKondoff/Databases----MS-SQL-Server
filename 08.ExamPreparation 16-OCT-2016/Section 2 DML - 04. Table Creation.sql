Create Table CustomerReviews(
ReviewID int Primary Key,
ReviewContent varchar(255) NOT NULL,
ReviewGrade int Check(ReviewGrade Between 0 and 10),
AirlineID int,
CustomerID int
Constraint FK_CustomerReviews_Airlines Foreign Key(AirlineID) references Airlines (AirlineID),
Constraint FK_CustomerReviews_Customers Foreign Key(CustomerID) references Customers(CustomerID)
)

Create Table CustomerBankAccounts(
AccountID int Primary Key,
AccountNumber varchar(10) Not NUll Unique,
Balance decimal(10,2) Not NUll,
CustomerID int,
Constraint FK_CustomerBankAccounts_Customers Foreign Key(CustomerID) references Customers(CustomerID)
)
