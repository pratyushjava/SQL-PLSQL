DECLARE
	
	num number;
	n number;
	n1 number;
BEGIN

	num:=&n;
	n:=MOD(num,5);
	
	SELECT DECODE(n,0,0,n) INTO n1 FROM DUAL;
	
	IF n1=0 THEN
		DBMS_OUTPUT.PUT_LINE('DIVISIBLE BY 5.');
	ELSE
		DBMS_OUTPUT.PUT_LINE('NOT DIVISIBLE BY 5.');
	END IF;

END;
/