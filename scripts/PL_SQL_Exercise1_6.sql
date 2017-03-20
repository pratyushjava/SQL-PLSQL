DECLARE

	r1 number:=&r1;
	r2 number:=&r2;
	result number;
	num varchar2(20);
	n number;

BEGIN

	result:=r1*r2;

	SELECT sign(result-100) into n FROM DUAL;

	SELECT DECODE(n,0,'NEUTRAL',1,'GREATER',-1,'LESS') into num from dual;

	DBMS_OUTPUT.PUT_LINE(num);

END;
/