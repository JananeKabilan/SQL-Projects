Create database Portfolio
Use Portfolio

--CREATE CATEGORY TABLE
CREATE TABLE Category(
    CategoryID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    CategoryName varchar(65) NOT NULL
);

insert into Category(CategoryName)
Values('Laptop');
insert into Category(CategoryName)
Values('Computer');
insert into Category(CategoryName)
Values('Prnter');
insert into Category(CategoryName)
Values('Mouse');
insert into Category(CategoryName)
Values('Keyboard');
insert into Category(CategoryName)
Values('Monitor');

SELECT * FROM Category

--CREATE PRODUCTS TABLE
CREATE TABLE Product (
    ProductID int NOT NULL PRIMARY KEY,
    ProductName varchar(55) NOT NULL,
    ProductDesc varchar(5500),
	ProductPrice Decimal(9,3),
	ProductSalePrice Decimal(9,3),
	ProductStock int,
	ProductCategory int FOREIGN KEY REFERENCES Category(CategoryID)
);

insert into product values(101,'everlane','fashion & accessories',5.089,2.025,20,1)
insert into product values(102,'patagonia','outdoor gear',7.089,2.025,21,2)
insert into product values(103,'dewalt','hardware,tools & accessories',6.23,3,10,6)
insert into product values(104,'appsumo','online courses',7.10,2.02,12,1)
insert into product values(105,'subaru','autos,a.k.a.big-ticket items',5.36,2.5,14,5)
insert into product values(106,'shopify','SAAS',4.9,2.7,15,6)
insert into product values(107,'wayfair','furniture & home goods',9,2.36,3,3)
insert into product values(108,'dollar shave club','beauty & grooming',7.1,2.23,7,2)


SELECT * FROM Product

--CREATE CUSTOMER TABLE
CREATE TABLE Customer (
    CustomerID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    CustomerName varchar(55) NOT NULL,
    CustomerEmail varchar(55),
	CustomerPassword varchar(55),
	CustomerAddress varchar(55),
	CustomerCity int FOREIGN KEY REFERENCES City(CityId),
	CustomerPostalCode int FOREIGN KEY REFERENCES Postal(PostalCode)
);

insert into Customer values('Keela','keela@gmail.com','200kela','X flat street',7,632103)
insert into Customer values('july','julysiri@gmail.com','3%july','y flat street',1,632103)
insert into Customer values('rosie','roseayyne@gmail.com','&rose','xy flat street',2,600001)
insert into Customer values('jojo','jojo@gmail.com','25%jo','73 belatrix street',6,600023)
insert into Customer values('jisoo','jisoo@gmail.com','jis19','floreanxce ann street',1,600532)
insert into Customer values('jennie','jennie@gmail.com','jenx^@','kilo street',3,632405)
insert into Customer values('lisa','lisabp@gmail.com','alulisa&','lolli street',3,632520)
insert into Customer values('kai','kaiexo@gmail.com','exol09','zezus flat street',2,632520)

SELECT * FROM Customer

--CREATE POSTAL CODE TABLE
CREATE TABLE Postal (
    PostalCode int NOT NULL PRIMARY KEY,
	PostalArea varchar(55) NOT NULL
);

insert into Postal values(632101,'xyz postal ofc')
insert into Postal values(632401,'kgf postal ofc')
insert into Postal values(632103,'lkg postal ofc')
insert into Postal values(632405,'RPT postal ofc')
insert into Postal values(632520,'Chn postal ofc')
insert into Postal values(600001,'cbe postal ofc')
insert into Postal values(600023,'ARA postal ofc')
insert into Postal values(600532,'Meh postal ofc')

select * from Postal

--CREATE TABLE CITY
CREATE TABLE City (
    CityId int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CityName varchar(55) NOT NULL
);

insert into City values('London')
insert into City values('Melbourn')
insert into City values('LA')
insert into City values('Sydney')
insert into City values('Jeju Island')
insert into City values('Hungary')
insert into City values('California')
insert into City values('Ohio')


select * from City

--CREATE ORDER TABLE
CREATE TABLE OrderTable (
    OrderID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	OrderNumber int,
    OrderDate DATE,
	OrderTotal Decimal(9,3),
	ShippingDate DATE,
	is_delivered varchar(6),
    CustomerID int FOREIGN KEY REFERENCES Customer(CustomerID)
);

insert into OrderTable values(100001,'2020-02-20',6.3,'2020-02-28','yes',1)
insert into OrderTable values(100003,'2022-01-22',7.01,'2022-01-26','yes',2)
insert into OrderTable values(123658,'2023-03-01',8.9,'2023-03-05','yes',3)
insert into OrderTable values(658741,'2021-05-06',7.5,'2021-05-09','yes',2)
insert into OrderTable values(632520,'2022-03-19',6.3,'2022-03-23','no',1)
insert into OrderTable values(597132,'2023-01-06',8.4,'2023-01-08','yes',5)
insert into OrderTable values(478933,'2023-02-07',7.3,'2023-02-09','yes',3)
insert into OrderTable values(253647,'2023-02-28',5.9,'2023-03-02','yes',4)


select * from OrderTable

--CREATE TABLE ORDER DETAILS
CREATE TABLE OrderDetail(
    OrderDetailID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ProductID int FOREIGN KEY REFERENCES Product(ProductID),
	ProductQty int,
	ProductPrice Decimal(9,3),
	OrderID int FOREIGN KEY REFERENCES OrderTable(OrderID)
)

insert into OrderDetail values(101,5,7.000,12)
insert into OrderDetail values(103,2,6.236,16)
insert into OrderDetail values(104,20,7.957,15)
insert into OrderDetail values(102,28,5.910,9)
insert into OrderDetail values(103,14,6.333,11)
insert into OrderDetail values(105,15,8.420,9)
insert into OrderDetail values(106,17,7.335,10)
insert into OrderDetail values(107,8,5.914,9)

select * from OrderDetail

