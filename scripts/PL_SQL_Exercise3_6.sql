CREATE OR REPLACE PROCEDURE subStrCheck(
						str IN varchar2,
						substring IN varchar2
				       )

IS

	result varchar2(50);

BEGIN

	select instr(str,substring) into result FROM dual;
	
	IF (result = 0) THEN
		DBMS_OUTPUT.PUT_LINE('SUBSTRING NOT FOUND');
	else
		DBMS_OUTPUT.PUT_LINE('SUBSTRING FOUND');
	END IF;

END;
/