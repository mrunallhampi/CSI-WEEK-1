SELECT TOP 1
    soh.SalesOrderID,
    soh.OrderDate,
    c.CustomerID,
    c.PersonID,
    c.StoreID,
    p.FirstName,
    p.LastName
FROM 
    Sales.SalesOrderHeader soh
JOIN 
    Sales.Customer c ON soh.CustomerID = c.CustomerID
JOIN 
    Person.Person p ON c.PersonID = p.BusinessEntityID
ORDER BY 
    soh.OrderDate;
