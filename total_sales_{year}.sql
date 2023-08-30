/* What are the respective total sales for each of these years: 2009 and 2011?
HINT: SUM */

SELECT SUM(Total) 
FROM invoice 
WHERE InvoiceDate 
LIKE '%2009%' 
OR InvoiceDate 
LIKE '%2011%';
