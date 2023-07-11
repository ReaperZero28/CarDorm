Use carDorm
Go

--Table Staff value
Insert into Staff values
('ST001', 'Hannah Lily', 'Female', 'Hannah022@gmail.com', '085223081456', 'BSD', 7500000),
('ST002', 'Raymond James', 'Male', 'Ray.james@gmail.com', '085322063672', 'Tangerang Selatan', 9000000),
('ST003', 'Darren Sanjaya', 'Male', 'Darren@yahoo.com', '089582849854', 'Jakarta Barat', 6000000),
('ST004', 'Robin Hood', 'Male', 'Robin2hood@gmail.com', '0851234567890', 'Alam Sutera', 7000000),
('ST005', 'Joseph Marquez', 'Male', 'Jomarq1@gmail.com', '0851234567891', 'Bintaro', 5500000),
('ST006', 'Caroline Anna', 'Female', 'carol.anna@yahoo.com', '082958201936', 'Pantai Indah Kapuk', 9000000),
('ST007', 'Hasan Upin', 'Male', 'HasanUpin@gmail.com', '082834019384', 'Cisauk', 5500000),
('ST008', 'Kelly Nadjwa', 'Female', 'k.najwa@gmail.com', '089231594021', 'Alam Sutera', 6500000),
('ST009', 'May Parker', 'Female', 'Mayyparker@yahoo.com', '085223081456', 'Gading Serpong', 8500000),
('ST010', 'Gwen Stacy', 'Female', 'gwenstcy@gmail.com', '088395201934', 'Senayan', 9500000)


--Table Customer value => CustomerID
Insert into Customer values
('CU001', 'Andrew Garfield', 'Male', 'Andrew0189@yahoo.com', '081198302312', 'Sekupang'),
('CU002', 'Mrs. Benedetta Angel', 'Female', 'BenedettaAngel921@gmail.com', '084161305112', 'Nagoya'),
('CU003', 'Mrs. Michelle Lie', 'Female', 'Michl110@gmail.com', '089101922388', 'Batu Aji'),
('CU004', 'Kassia Satin', 'Female', 'Kassia890@yahoo.com', '086178372018', 'Tanjung Pinang'),
('CU005', 'Aron Nurettin', 'Male', 'Aronnt8201@yahoo.com', '081197192640', 'Lingga'),
('CU006', 'Mrs. Mari Aegel', 'Female', 'Mariagl87213@gmail.com', '08218123041', 'Karimun'),
('CU007', 'Jonathan David', 'Male', 'Jodavid@gmail.com', '082184950318', 'BSD, Tangerang Selatan'),
('CU008', 'Axel Thomas', 'Male', 'Axeltom28@gmail.com', '084161305112', 'Yogyakarta'),
('CU009', 'Mrs. Maria Natalia', 'Female', 'Mariantl@yahoo.com', '089197305612', 'Kelapa Gading'),
('CU010', 'Angelia Margareth', 'Female', 'Aglialmag5920@gmail.com', '080161305112', 'Alam Sutera')

--Table Vendor Value
Insert into Vendor values
('VE001', 'PT Kai Indonesia', 'Courtney_bnn123@yahoo.com', '08362017465', 'Cisauk'),
('VE002', 'PT Tayato Astra Motor', 'Kaiyacott7238@gmail.com', '08538129374', 'Bintaro'),
('VE003', 'PT Nassin Manufacturing', 'Ptrevanss@yahoo.com', '081577302499', 'Senayan'),
('VE004', 'PT Masdah Manufacturing', 'Fynn_barnard3898@gmail.com', '084161305112', 'Kemayoran'),
('VE005', 'PT Chovrelot Indonesia', 'Hpocus@yahoo.com', '081198302312', 'Pantai Indah Kapuk'),
('VE006', 'PT Dihatsu Astra', 'Ionariley89554@gmail.com', '084161305112', 'Peluit'),
('VE007', 'PT Mutsibushu Motor', 'Franklin_h_63358@yahoo.com', '083158009412', 'Tangerang'),
('VE008', 'PT Vilvi Indonesia', 'Alissagsn72098@gmail.com', '084161305112', 'Karawaci'),
('VE009', 'PT Luxes Daya Utama', 'todd.ramzay78@yahoo.com', '081284659321', 'Kemanggisan'),
('VE010', 'PT Uadi Indonesia', 'Nakita_123_mll@gmail.com', '08182037475', 'Gading Serpong')

--Table CarBrand
Insert into CarBrand values
('CB001', 'Kai'),
('CB002', 'Tayato'),
('CB003', 'Nassin'),
('CB004', 'Masdah'),
('CB005', 'Chovrelot'),
('CB006', 'Dihatsu'),
('CB007', 'Mutsibushu'),
('CB008', 'Vilvi'),
('CB009', 'Luxes'),
('CB010', 'Uadi')

--Table Car
 Insert into Car values
('CA001', 'CB001', 'Sonet', 300000000, 50),
('CA002', 'CB002', 'Apanja', 500000000, 60),
('CA003', 'CB003', 'Merch', 400000000, 100),
('CA004', 'CB004', 'CX800', 550000000, 50),
('CA005', 'CB005', 'Caramo', 750000000, 30),
('CA006', 'CB006', 'Xinea', 450000000, 80),
('CA007', 'CB007', 'Parejo', 650000000, 75),
('CA008', 'CB008', 'S60', 400000000, 50),
('CA009', 'CB009', 'R25', 700000000, 100),
('CA010', 'CB010', 'A8', 600000000, 40)

--Table Transaction
Insert into Transactions values
('TR001', 'ST001', 'CU001', '2021-08-25'), 
('TR002', 'ST002', 'CU002', '2020-12-03'),
('TR003', 'ST003', 'CU003', '2021-04-22'),
('TR004', 'ST004', 'CU004', '2021-06-18'),
('TR005', 'ST005', 'CU005', '2021-02-04'),
('TR006', 'ST006', 'CU006', '2021-08-19'),
('TR007', 'ST007', 'CU007', '2020-12-07'),
('TR008', 'ST008', 'CU008', '2021-06-03'),
('TR009', 'ST009', 'CU009', '2019-05-30'),
('TR010', 'ST010', 'CU010', '2021-10-04'),
('TR011', 'ST002', 'CU001', '2021-01-16'),
('TR012', 'ST004', 'CU003', '2020-01-18'),
('TR013', 'ST007', 'CU008', '2021-05-18'),
('TR014', 'ST010', 'CU002', '2021-01-25'),
('TR015', 'ST005', 'CU006', '2021-07-02')

--Table Transaction Detail
Insert into TransactionDetail values
('TR001', 'CA009', 1),
('TR002', 'CA003', 2),
('TR003', 'CA001', 1),
('TR003', 'CA009', 1),
('TR004', 'CA005', 3),
('TR005', 'CA010', 1),
('TR006', 'CA002', 2),
('TR006', 'CA003', 1),
('TR007', 'CA005', 2),
('TR007', 'CA006', 2),
('TR008', 'CA004', 4),
('TR009', 'CA010', 1),
('TR010', 'CA002', 1),
('TR011', 'CA007', 1),
('TR011', 'CA008', 1),
('TR012', 'CA006', 2),
('TR013', 'CA008', 3),
('TR013', 'CA009', 1),
('TR014', 'CA007', 2),
('TR015', 'CA003', 1),
('TR001', 'CA005', 2),
('TR008', 'CA001', 2),
('TR007', 'CA004', 1),
('TR002', 'CA002', 1),
('TR003', 'CA007', 1)

--Table Purchase value
Insert into Purchase values
('PU001', 'ST004', 'VE001', '2020-09-09'),
('PU002', 'ST001', 'VE002', '2020-01-30'),
('PU003', 'ST003', 'VE003', '2021-08-13'),
('PU004', 'ST002', 'VE004', '2021-03-27'),
('PU005', 'ST005', 'VE005', '2021-10-22'), 
('PU006', 'ST006', 'VE006', '2021-04-16'),
('PU007', 'ST007', 'VE007', '2021-03-10'),
('PU008', 'ST009', 'VE008', '2021-07-31'),
('PU009', 'ST010', 'VE009', '2021-11-12'),
('PU010', 'ST008', 'VE010', '2021-01-15'), 
('PU011', 'ST001', 'VE001', '2021-05-04'),
('PU012', 'ST003', 'VE002', '2021-11-09'),
('PU013', 'ST005', 'VE004', '2021-10-23'), 
('PU014', 'ST007', 'VE008', '2021-03-29'),
('PU015', 'ST009', 'VE010', '2021-02-01') 

--Table Purchase Detail
Insert into PurchaseDetail values
('PU001', 'CA002', 1),
('PU001', 'CA001', 1),
('PU002', 'CA007', 2),
('PU003', 'CA005', 2),
('PU003', 'CA010', 1),
('PU004', 'CA003', 1),
('PU004', 'CA008', 1),
('PU004', 'CA004', 1),
('PU005', 'CA006', 2),
('PU005', 'CA002', 2),
('PU006', 'CA001', 2),
('PU007', 'CA004', 3),
('PU008', 'CA005', 1),
('PU009', 'CA008', 1),
('PU009', 'CA006', 2),
('PU010', 'CA001', 2),
('PU010', 'CA003', 3),
('PU011', 'CA008', 1),
('PU012', 'CA009', 2),
('PU012', 'CA002', 1),
('PU012', 'CA004', 2),
('PU013', 'CA006', 2),
('PU013', 'CA010', 2),
('PU014', 'CA005', 1),
('PU015', 'CA007', 1)
