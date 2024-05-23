SELECT 
    p.FirstName,
    p.LastName,
    a.City
FROM 
    Sales.Customer c
JOIN 
    Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN 
    Person.BusinessEntityAddress bea ON p.BusinessEntityID = bea.BusinessEntityID
JOIN 
    Person.Address a ON bea.AddressID = a.AddressID
JOIN 
    Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN 
    Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN 
    Production.Product prod ON sod.ProductID = prod.ProductID
WHERE 
    prod.Name = 'Tofu';
