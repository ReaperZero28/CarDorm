USE carDorm
GO

--Purchase process simulation
Insert into Purchase values
('PU016', 'ST002', 'VE006', '2021-11-22')

INSERT INTO PurchaseDetail Values
('PU016', 'CA008', 2),
('PU016', 'CA003', 2)

UPDATE Car
SET CarStock = CarStock + 2
WHERE CarID = 'CA008'

UPDATE Car
SET CarStock = CarStock + 2
WHERE CarID = 'CA003'

--Transaction process simulation
Insert into Transactions values
('TR016', 'ST001', 'CU005', '2021-11-23')

INSERT INTO TransactionDetail Values
('TR016', 'CA008', 1),
('TR016', 'CA003', 1)

UPDATE Car
SET CarStock = CarStock - 1
WHERE CarID = 'CA008'

UPDATE Car
SET CarStock = CarStock - 1
WHERE CarID = 'CA003'

Select * from Car
