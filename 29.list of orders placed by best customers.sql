SELECT 
    soh.SalesOrderID,
    soh.CustomerID,
    sod.ProductID,
    p.Name AS ProductName
FROM 
    Sales.SalesOrderHeader soh
JOIN 
    Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN 
    Production.Product p ON sod.ProductID = p.ProductID
WHERE 
    soh.CustomerID IN (
        SELECT TOP 5 CustomerID 
        FROM Sales.SalesOrderHeader 
        GROUP BY CustomerID 
        ORDER BY SUM(TotalDue) DESC
    );
