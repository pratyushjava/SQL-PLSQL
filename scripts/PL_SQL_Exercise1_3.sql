CREATE OR REPLACE PROCEDURE F2C
AS
	F number:=&f;
	C number;

BEGIN
	
	c:=(F-32)*(5/9);
	DBMS_OUTPUT.PUT_LINE('CELSIUS :: '||C);

END;
/