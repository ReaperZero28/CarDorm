Use carDorm
GO

--1
SELECT c.CustomerName, [CustomerGender] = UPPER(c.CustomerGender),COUNT(tr.TransactionID) [Total Transaction]
From Customer c JOIN Transactions tr ON c.CustomerID = tr.CustomerID
Where CustomerGender LIKE 'Female' 
AND CustomerName LIKE 'Mrs. %'
GROUP BY CustomerName, CustomerGender

--2
SELECT c.CarID, c.CarName, cb.CarBrandName, c.CarPrice, [Total Car Sold] = CONCAT(SUM(pd.PurchasedQuantity),' Car(s)')
FROM Car c JOIN CarBrand cb ON c.CarBrandID = cb.CarBrandID
JOIN PurchaseDetail pd ON c.CarID = pd.CarID
WHERE c.CarPrice > 300000000
AND RIGHT(c.CarID, 3) % 2 = 1 AND pd.PurchasedQuantity > 1
GROUP BY c.CarID, c.CarName, cb.CarBrandName, c.CarPrice

--3
SELECT [StaffID] = REPLACE(s.StaffID,'ST','Staff '), [StaffName]= s.StaffName, 
[Total Transaction Handled] = COUNT(t.TransactionID), [Maximum Quantity] = MAX(td.TransactionQuantity)
FROM Staff s JOIN Transactions t ON s.StaffID = t.StaffID
JOIN TransactionDetail td ON t.TransactionID = td.TransactionID
WHERE MONTH(t.TransactionDate) = '4'
AND s.StaffName LIKE '% %'
GROUP BY s.StaffID, s.StaffName
HAVING COUNT(t.TransactionID) > 1
ORDER BY MAX(td.TransactionQuantity) DESC

--4
SELECT CustomerName, CustomerGender,[Total Purchase]=COUNT(t.TransactionID),
[Total Car Purchased]=SUM(td.TransactionQuantity)
FROM Customer c JOIN Transactions t ON c.CustomerID = t.CustomerID
JOIN TransactionDetail td ON t.TransactionID = td.TransactionID
WHERE c.CustomerEmail LIKE '%@gmail.com' 
GROUP BY c.CustomerName, c.CustomerGender HAVING SUM(td.TransactionQuantity) > 2

--5
SELECT [VendorName] = REPLACE(v.VendorName, 'PT', 'Perseroan Terbatas'), v.VendorPhoneNum, 
[PurchasedID]= RIGHT(p.PurchaseID, 3), pd.PurchasedQuantity
FROM Vendor v JOIN Purchase p ON v.VendorID = p.VendorID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID,
	(
		Select AVG(PurchasedQuantity) AS x
		From PurchaseDetail pd JOIN Purchase p ON p.PurchaseID = pd.PurchaseID
		JOIN Vendor v ON p.VendorID = v.VendorID
		WHERE VendorName LIKE '%a%' 
	) AS subquery
WHERE PurchasedQuantity > subquery.x 
GROUP BY VendorName, VendorPhoneNum, p.PurchaseID, pd.PurchasedQuantity

--6
SELECT [Name] = CONCAT(CarBrandName, ' ', CarName), [Price]=CONCAT('Rp. ', CarPrice), 
[Stock] = CONCAT(CarStock, ' Stock(s)')
FROM CarBrand cb JOIN Car c on cb.CarBrandID = c.CarBrandID,
	(
		Select AVG(CarPrice) AS x
		From Car
	) AS subquery
WHERE CarPrice > subquery.x AND CarName LIKE '%e%'

--7
SELECT [CarID]=RIGHT(c.CarID, 3), CarName, [Brand]=UPPER(CarBrandName), [Price]=CONCAT('Rp. ', CarPrice),
[Total Car Sold] = SUM(TransactionQuantity)
FROM Car c JOIN TransactionDetail td ON c.CarID = td.CarID
JOIN Transactions t ON td.TransactionID = t.TransactionID 
JOIN CarBrand cb on cb.CarBrandID = c.CarBrandID,
	(
		Select AVG(TransactionQuantity) AS x
		FROM Car c JOIN TransactionDetail td ON c.CarID = td.CarID
	) AS subquery
WHERE CarPrice > 200000000 AND CarName LIKE '%o%' 
GROUP BY c.CarID, c.CarName, cb.CarBrandName, c.CarPrice, subquery.x
HAVING SUM(td.TransactionQuantity) > subquery.x

--8
SELECT [Staff First Name] = LEFT(StaffName, CHARINDEX(' ', StaffName)-1), 
[Staff Last Name] = RIGHT(StaffName, CHARINDEX(' ', REVERSE(StaffName))-1), 
[Total Car Sold] = SUM(td.TransactionQuantity)
FROM Staff s JOIN Transactions t ON s.StaffID = t.StaffID
JOIN TransactionDetail td on t.TransactionID = td.TransactionID,
	(
		SELECT AVG(td.TransactionQuantity) AS X
		FROM Transactions t JOIN TransactionDetail td 
		ON t.TransactionID = td.TransactionID
	) AS subquery
WHERE StaffName LIKE '% %'
GROUP BY StaffName, t.TransactionID, subquery.X
HAVING SUM(td.TransactionQuantity) > subquery.X

--9
CREATE VIEW Vendor_Transaction_Handled_and_Minimum_View
AS
SELECT [VendorID] = REPLACE(v.VendorID, 'VE', 'Vendor '), VendorName, 
[Total Transaction Handled] = COUNT(p.PurchaseID), 
[Minimum Purchases in One Transaction] = MIN(pd.PurchasedQuantity)
FROM Vendor v JOIN Purchase p ON v.VendorID = p.VendorID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
WHERE Month(PurchaseDate) = '5' AND v.Vendorname LIKE '%a%'
GROUP BY v.VendorID, v.VendorName

--10
CREATE VIEW Staff_Total_Purchase_and_Max_Car_Purchase_View
AS
SELECT s.StaffID, StaffName, [StaffEmail] = UPPER(StaffEmail), [Total Purchase] = COUNT(p.PurchaseID), 
[Maximum Car Purchased In One Purchase] = MAX(pd.PurchasedQuantity)
FROM Staff s JOIN Purchase p ON s.StaffID = p.StaffID
JOIN PurchaseDetail pd ON p.PurchaseID = pd.PurchaseID
WHERE s.StaffEmail LIKE '%@yahoo.com' AND s.StaffGender = 'Female'
GROUP BY s.StaffID, s.StaffName, s.StaffEmail

