CREATE OR REPLACE PROCEDURE traingle(
					side1 IN number,
					side2 IN number,
					side3 IN number
				    )

IS

	result number;

BEGIN

	result:=side1+side2;

	IF (result>side3) THEN
		DBMS_OUTPUT.PUT_LINE('VALID TRAINGLE');
	ELSE	
		DBMS_OUTPUT.PUT_LINE('INVALID TRAINGLE');
	END IF;

END;
/