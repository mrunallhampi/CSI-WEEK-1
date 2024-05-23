SELECT 
    p.FirstName, 
    p.LastName, 
    a.City
FROM 
    Sales.Customer c
JOIN 
    Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN 
    Person.BusinessEntityAddress bea ON c.PersonID = bea.BusinessEntityID
JOIN 
    Person.Address a ON bea.AddressID = a.AddressID
WHERE 
    a.City IN ('Berlin', 'London');
