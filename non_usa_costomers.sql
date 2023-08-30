SELECT CustomerId, FirstName || ' ' || LastName AS FullName, Country FROM CUSTOMER
WHERE Country != 'USA';