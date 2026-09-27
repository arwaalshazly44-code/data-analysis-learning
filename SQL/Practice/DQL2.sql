SELECT *
FROM SalesLT.Customer

SELECT *
FROM SalesLT.SalesOrderHeader
SELECT *
FROM SalesLT.SalesOrderDetail
----1----
/*Count number of orders for each customer*/
SELECT C.FirstName ,C.LastName,COUNT(S.SalesOrderID) AS NUM_ORDER
FROM SalesLT.Customer C LEFT JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID
GROUP BY C.FirstName ,C.LastName
----2----
/*Find total sales for each customer*/
SELECT C.FirstName ,C.LastName,SUM(LineTotal) AS [TOTAL SALES]
FROM SalesLT.Customer C INNER JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID INNER JOIN SalesLT.SalesOrderDetail D
ON S.SalesOrderID=D.SalesOrderID 
GROUP BY C.FirstName ,C.LastName
----3----
/*Find average order total for each customer*/
SELECT C.FirstName, C.LastName, AVG(D.LineTotal) AS AVG_TOTAL
FROM SalesLT.Customer C
INNER JOIN SalesLT.SalesOrderHeader SH
ON C.CustomerID = SH.CustomerID
INNER JOIN SalesLT.SalesOrderDetail D
ON SH.SalesOrderID = D.SalesOrderID
GROUP BY C.FirstName, C.LastName
----4----
/*Display customers having more than 5 orders*/
SELECT C.FirstName ,C.LastName ,COUNT ( DISTINCT S.SalesOrderID) AS TOTAL_ORDER
FROM SalesLT.Customer C INNER JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID INNER JOIN SalesLT.SalesOrderDetail D
ON S.SalesOrderID=D.SalesOrderID 
GROUP BY C.FirstName ,C.LastName
HAVING COUNT (DISTINCT S.SalesOrderID) > 5
----5----
/*Display customers whose total sales are greater than 10000.*/
SELECT C.FirstName ,C.LastName ,SUM(LineTotal) AS [TOTAL SALES]
FROM SalesLT.Customer C INNER JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID INNER JOIN SalesLT.SalesOrderDetail D
ON S.SalesOrderID=D.SalesOrderID 
GROUP BY C.FirstName ,C.LastName
HAVING SUM(LineTotal) > 10000
----6----
/*Count products in each category.*/
SELECT *
FROM SalesLT.Product

SELECT *
FROM SalesLT.ProductCategory

SELECT  PC.Name,COUNT(P.ProductID) AS NUM_PRODUCT
FROM SalesLT.Product P INNER JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID =PC.ProductCategoryID
GROUP BY PC.Name
----7----
/*Find average product price for each category*/
SELECT  PC.Name,AVG(P.ListPrice) AS AVG_PRODUCT
FROM SalesLT.Product P INNER JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID =PC.ProductCategoryID
GROUP BY PC.Name
----8----
SELECT  PC.Name,AVG(P.ListPrice) AS AVG_PRICE
FROM SalesLT.Product P INNER JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID =PC.ProductCategoryID
GROUP BY PC.Name
HAVING AVG(P.ListPrice)>500
----9---
SELECT C.FirstName ,C.LastName,S.SalesOrderID
FROM SalesLT.Customer C INNER JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID 
---10---
SELECT C.FirstName ,C.LastName,S.SalesOrderID
FROM SalesLT.Customer C LEFT JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID 
---11---
SELECT  P.Name AS PPDUCT,PC.Name AS CATEGORY
FROM SalesLT.Product P INNER JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID =PC.ProductCategoryID
---12---
SELECT OD.*,P.Name
FROM SalesLT.SalesOrderDetail OD INNER JOIN SalesLT.Product P
ON OD.ProductID=P.ProductID
---13---
SELECT  P.Name,SUM(OD.OrderQty) AS TOTAL_QTY
FROM SalesLT.SalesOrderDetail OD INNER JOIN SalesLT.Product P
ON OD.ProductID=P.ProductID
GROUP BY P.Name 
ORDER BY SUM( OD.OrderQty) DESC
---14---
SELECT PC.Name AS CATEGORY, MAX(P.ListPrice) AS HIGHEST_PRICE
FROM SalesLT.Product P
INNER JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID = PC.ProductCategoryID
GROUP BY PC.Name
ORDER BY  MAX(P.ListPrice) DESC
----15---
SELECT C.FirstName, C.LastName, SUM(D.LineTotal) AS TOTAL
FROM SalesLT.Customer C
INNER JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID = S.CustomerID
INNER JOIN SalesLT.SalesOrderDetail D
ON S.SalesOrderID = D.SalesOrderID
GROUP BY C.FirstName, C.LastName
HAVING SUM(D.LineTotal) >
(
    SELECT AVG(D.LineTotal)
    FROM SalesLT.SalesOrderDetail D
)
----16----
/*Display products more expensive than average product price using subquery.*/
SELECT P.Name,P.ListPrice
FROM SalesLT.Product P
where P.ListPrice>( 
       SELECT AVG(PP.ListPrice)
    FROM SalesLT.Product PP 
    )
----17---
/*Display customers who never placed orders using subquery.*/
SELECT C.FirstName ,C.LastName,S.SalesOrderID
FROM SalesLT.Customer C LEFT JOIN SalesLT.SalesOrderHeader S
ON C.CustomerID=S.CustomerID  
WHERE C.CustomerID NOT IN (
   SELECT CustomerID
    FROM SalesLT.SalesOrderHeader
)
-----18----
SELECT  TOP 1 PC.Name, COUNT(P.ProductID) AS NUM_PRODUCT
FROM SalesLT.Product P INNER JOIN SalesLT.ProductCategory PC
ON P.ProductCategoryID =PC.ProductCategoryID
GROUP BY PC.Name
ORDER BY COUNT(P.ProductID) DESC 
----19---
SELECT  P.Name,SUM(OD.LineTotal) AS TOTAL
FROM SalesLT.SalesOrderDetail OD INNER JOIN SalesLT.Product P
ON OD.ProductID=P.ProductID
GROUP BY P.Name 
ORDER BY SUM( OD.LineTotal) DESC
----20----
SELECT  OD.SalesOrderID,SUM(OD.OrderQty) AS TOTAL_QTY
FROM SalesLT.SalesOrderDetail OD INNER JOIN SalesLT.Product P
ON OD.ProductID=P.ProductID
GROUP BY OD.SalesOrderID 
HAVING SUM(OD.OrderQty)>3