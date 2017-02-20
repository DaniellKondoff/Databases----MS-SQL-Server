Create Table Cities(
CityID int Primary KEY,
Name varchar(50)
)

Create Table Customers(
CustomerID int Primary Key,
Name varchar(50),
Birthday date,
CityID int,
Constraint FK_CityID Foreign KEY (CityID) References Cities(CityID)
)

Create Table Orders(
OrderID int Primary Key,
CustomerID int,
Constraint FK_CustomerID_CustomerID Foreign Key (CustomerID) References Customers (CustomerID)
)

Create Table ItemTypes(
ItemTypeID int Primary Key,
Name varchar(50)
)

Create table Items(
ItemID int Primary Key,
Name varchar(50),
ItemTypeID int,
Constraint FK_Items_ItemTypes Foreign KEY (ItemTypeID) References ItemTypes(ItemTypeID)
)

Create Table OrderItems(
OrderID int,
ItemID int,
Constraint PK_OrderItems Primary KEY (OrderID,ItemID),
Constraint FK_OrderItems_Orders Foreign KEY (OrderID) References Orders(OrderID),
Constraint FK_OrderItems_Items Foreign KEY(ItemID) References Items(ItemID)
)



