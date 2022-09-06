--1.select all rows from 'Customers table'
SELECT * FROM Customers 

--2.get distinct countries from 'customers table'
SELECT DISTINCT Country FROM Customers

--3.get all rows from the table customers where the customers id starts with BL
SELECT * FROM Customers WHERE CustomerID LIKE 'BL%'

--4. get the 1st 100 records of the orders table
SELECT TOP (100) * FROM Orders

--5.get all customers that live in the postal codes 1010, 3012, 12209, 05023
SELECT * FROM Customers WHERE PostalCode in ('1010', '3012', '12209', '05023')

--6.get all orders where the shipregion is not equal to null
SELECT * FROM Orders WHERE ShipRegion IS NOT NULL

--7.get all customers ordered by the country, then by the city
SELECT * FROM Customers ORDER BY Country, City;

--8.add new customer to the customers table. use what ever values
INSERT INTO Customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES ('ARLN2', 'Arlan''s Market', 'Morgan Patterson', 'Store Director', '4614 Nasa Parkway', 'Seabrook', 'TX', '77586',
'USA', '(281)326-4363', NULL)

--9.update all shipregion to the value 'eurozone' in the orders table, where the shipcountry is equal to france
UPDATE Orders 
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France'

--10.delete all orders from OrderDetails that have quiantity of 1
DELETE FROM [Order Details] 
WHERE Quantity = 1

--11.find the customerid that placed order 10290(orders table)
SELECT CustomerId FROM Orders WHERE OrderID = 10290

--12.join the orders table to the customers table
SELECT Orders.OrderID, Customers.CustomerID
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--13.get employees firstname for all employees who report to no one
SELECT FirstName FROM Employees WHERE ReportsTo IS NULL 

--14.get employees firstname for all employees who report to Andrew
SELECT FirstName FROM Employees WHERE ReportsTo = 2

