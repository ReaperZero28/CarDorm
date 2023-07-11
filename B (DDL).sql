Create database carDorm
GO

Use carDorm
Go

--DDL

--Table Staff
Create table Staff(
	StaffID char(5) primary key NOT NULL check(StaffID like 'ST[0-9][0-9][0-9]'),
	StaffName varchar(50) NOT NULL,
	StaffGender varchar(6) NOT NULL check(StaffGender like 'Male' or StaffGender like 'Female'),
	StaffEmail varchar(50) NOT NULL check(StaffEmail like '%@gmail.com' or StaffEmail like '%@yahoo.com'),
	StaffPhoneNum varchar(20) NOT NULL,
	StaffAddress varchar(100) NOT NULL,
	StaffSalary int check(StaffSalary>5000000 AND StaffSalary<10000000) NOT NULL
)

--Table Vendor
Create table Vendor(
	VendorID char(5) primary key NOT NULL check(VendorID like 'VE[0-9][0-9][0-9]'),
	VendorName varchar(50) NOT NULL,
	VendorEmail varchar(50) NOT NULL check(VendorEmail like '%@gmail.com' or VendorEmail like '%@yahoo.com'),
	VendorPhoneNum varchar(20) NOT NULL,
	VendorAddress varchar(100) NOT NULL,
)

--Table CarBrand
Create table CarBrand(
	CarBrandID char(5) primary key NOT NULL check(CarBrandID like 'CB[0-9][0-9][0-9]'),
	CarBrandName varchar(50) NOT NULL
)

--Table Car
Create table Car(
	CarID char(5) primary key NOT NULL check(CarID like 'CA[0-9][0-9][0-9]'),
	CarBrandID char(5) foreign key references CarBrand(CarBrandID) NOT NULL,
	CarName varchar(10) NOT NULL,
	CarPrice bigint NOT NULL,
	CarStock int NOT NULL
)

--Table Purchase
Create table Purchase(
	PurchaseID char(5) primary key NOT NULL check(PurchaseID like 'PU[0-9][0-9][0-9]'),
	StaffID char(5) foreign key references Staff(StaffID) NOT NULL,
	VendorID char(5) foreign key references Vendor(VendorID) NOT NULL,
	PurchaseDate date NOT NULL check(PurchaseDate<=GETDATE()),
)

--Table Purchase Detail
Create table PurchaseDetail(
	PurchaseID char(5) foreign key references Purchase(PurchaseID) NOT NULL check(PurchaseID like 'PU[0-9][0-9][0-9]'),
	CarID char(5) foreign key references Car(CarID) NOT NULL,
	PurchasedQuantity INT NOT NULL,
	Primary key(PurchaseID, CarID)
)

--Table Customer
Create table Customer(
	CustomerID char(5) primary key NOT NULL check(CustomerID like 'CU[0-9][0-9][0-9]'),
	CustomerName varchar(50) NOT NULL check(len(CustomerName) > 2),
	CustomerGender varchar(6) NOT NULL check(CustomerGender like 'Male' or CustomerGender like 'Female'),
	CustomerEmail varchar(50) NOT NULL check(CustomerEmail like '%@gmail.com' or CustomerEmail like '%@yahoo.com'),
	CustomerPhoneNum varchar(20) NOT NULL,
	CustomerAddress varchar(100) NOT NULL
)

--Table Transaction
Create table Transactions(
	TransactionID char(5) primary key NOT NULL check(TransactionID like 'TR[0-9][0-9][0-9]'),
	StaffID char(5) foreign key references Staff(StaffID) NOT NULL,
	CustomerID char(5) foreign key references Customer(CustomerID) NOT NULL,
	TransactionDate date NOT NULL check(TransactionDate<=GETDATE()),
)

--Table Transaction Detail
Create table TransactionDetail(
	TransactionID char(5) foreign key references Transactions(TransactionID) NOT NULL check(TransactionID like 'TR[0-9][0-9][0-9]'),
	CarID char(5) foreign key references Car(CarID) NOT NULL,
	TransactionQuantity INT NOT NULL
	Primary key(TransactionID, CarID),
)