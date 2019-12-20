use FinalProject;

DROP TABLE IF EXISTS Product;

CREATE TABLE Product AS
SELECT ProductName, ProductWeight, Price, PartNumber
FROM invoices
ORDER BY ProductName ASC;



