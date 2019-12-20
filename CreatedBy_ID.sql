USE FinalProject;
DROP TABLE IF EXISTS CreatedBy;

CREATE TABLE CreatedBy (
  CreatedBy_ID int(11) NOT NULL auto_increment,
  CreatedBY VARCHAR(25) NOT NULL,
  PRIMARY KEY  (CreatedBY_ID)
) AS
	SELECT DISTINCT CreatedBy
	FROM invoices
	WHERE CreatedBy IS NOT NULL
	ORDER BY CreatedBy;

ALTER TABLE invoices
	ADD COLUMN CreatedBy_ID INT(11);



UPDATE invoices
	INNER JOIN CreatedBy
	ON CreatedBy.CreatedBy = invoices.CreatedBy
	SET invoices.CreatedBy_ID = CreatedBy.CreatedBy_ID
	WHERE CreatedBy.CreatedBy IS NOT NULL;

SELECT mc.FirstName, mc.LastName, mc.CreatedBy, mc.CreatedBy_ID, gn.CreatedBy
	FROM CreatedBy AS gn
		INNER JOIN invoices AS mc
	ON gn.CreatedBY_ID = mc.CreatedBy_ID;

ALTER TABLE invoices
   DROP COLUMN CreatedBy;
