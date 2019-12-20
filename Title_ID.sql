USE FinalProject;
DROP TABLE IF EXISTS Title;

CREATE TABLE Title (
  Title_ID int(11) NOT NULL auto_increment,
  Title VARCHAR(25) NOT NULL,
  PRIMARY KEY  (Title_ID)
) AS
	SELECT DISTINCT Title
	FROM invoices
	WHERE Title IS NOT NULL
	ORDER BY Title;

ALTER TABLE invoices
	ADD COLUMN Title_ID INT(11);



UPDATE invoices
	INNER JOIN Title
	ON Title.Title = invoices.Title
	SET invoices.Title_ID = Title.Title_ID
	WHERE Title.Title IS NOT NULL;

SELECT mc.FirstName, mc.LastName, mc.Title, mc.Title_ID, gn.Title
	FROM Title AS gn
		INNER JOIN invoices AS mc
	ON gn.Title_ID = mc.Title_ID;

ALTER TABLE invoices
   DROP COLUMN Title;
