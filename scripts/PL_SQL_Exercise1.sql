CREATE OR REPLACE PROCEDURE rectangle
IS
	length number:=10;
	width number:=5;
	perimeter number;
	area number;

BEGIN

	perimeter:=2*(length+width);
	area:=length*width;

	DBMS_OUTPUT.PUT_LINE('AREA :: '||area);
	DBMS_OUTPUT.PUT_LINE('PERIMETER :: '||perimeter);

END;	
/