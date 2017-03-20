CREATE OR REPLACE PROCEDURE C2F
AS
	C number:=&c;
	F number;

BEGIN
	
	F:=(9/5)*C + 32;
	DBMS_OUTPUT.PUT_LINE('FAHRENHEIT :: '||F);

END;
/