use FinalProject;

DROP TABLE IF EXISTS Companies;

CREATE TABLE Companies AS
SELECT Company, Street, City, State, PostalCode
FROM invoices
ORDER BY Company ASC;
