---1----
SELECT *
FROM saleslt.Customer

---2---
SELECT FirstName , LastName 
FROM saleslt.Customer
---3---
SELECT Name ,ListPrice
FROM SalesLT.Product
---4---
SELECT DISTINCT Color 
FROM SalesLT.Product
---5---
SELECT Name ,ListPrice
FROM SalesLT.Product
WHERE ListPrice >1000
---6----
SELECT Name ,ListPrice
FROM SalesLT.Product
WHERE  ListPrice BETWEEN 500 AND 2000
---7---
SELECT *
FROM saleslt.Customer
WHERE FirstName  LIKE 'A%'
---8---
SELECT * 
FROM saleslt.Customer
WHERE LastName LIKE '%N'
---9---
SELECT *
FROM SalesLT.Product
WHERE Color IN ('Red','Black','Silver')
---10---
SELECT TOP 10 *
FROM SalesLT.Product
ORDER BY ListPrice DESC
---11---
SELECT *
FROM SalesLT.Product
ORDER BY ListPrice DESC
---12---
SELECT *
FROM saleslt.Customer
ORDER BY FirstName ASC
---13---
SELECT COUNT(CustomerID) AS Total_Customer
FROM saleslt.Customer
---14---
SELECT AVG(ListPrice) AS AVG_product_price 
FROM SalesLT.Product
---15---
SELECT MAX(ListPrice) AS MAX_product_price 
FROM SalesLT.Product
---16---
SELECT MIN(ListPrice) AS MIN_product_price 
FROM SalesLT.Product
---17---
SELECT SUM(ListPrice) AS TOTAL_product_price 
FROM SalesLT.Product
---18---
SELECT *
FROM SalesLT.Product
WHERE Name LIKE '%Bike%'
---19---
SELECT *
FROM SalesLT.Product
WHERE Color IS NULL
---20---
SELECT *
FROM SalesLT.Product
WHERE Weight IS NOT NULL




