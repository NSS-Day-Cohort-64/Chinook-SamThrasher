/*Provide a query only showing the Customers from Brazil.*/

SELECT FirstName, LastName, Country
FROM Customer
WHERE Country = 'Brazil';