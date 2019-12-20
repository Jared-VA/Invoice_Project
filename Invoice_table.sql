use FinalProject;

DROP TABLE IF EXISTS Invoice_Info;

CREATE TABLE Invoice_Info AS
SELECT InvoiceID, CreatedBy_ID, ShipVia, ShipDate, ShipmentStatus, Taxable, TaxAmount, ExtendedPrice, SubTotal, InvoiceTotal
FROM invoices
ORDER BY InvoiceID ASC;

