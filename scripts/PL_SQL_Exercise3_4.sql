CREATE OR REPLACE PROCEDURE appleBox(weight IN number)
AS

	tot number;

BEGIN

	IF (weight >= 10)
	THEN
		tot:=weight*5;
	ELSE
		tot:=weight*7;
	END IF;

	DBMS_OUTPUT.PUT_LINE('COST OF APPLE BOX :: '||tot);	

END;
/