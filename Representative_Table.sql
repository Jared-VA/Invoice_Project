use FinalProject;

DROP TABLE IF EXISTS Representatives;

CREATE TABLE Representatives AS
SELECT Title_ID, FirstName, LastName, Email, Phone, Fax
FROM invoices;
