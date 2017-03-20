CREATE OR REPLACE PROCEDURE LoopIteration
IS

	I number;

BEGIN
	
	I:=0;

	LOOP
		I:=I+100;
		
		EXIT WHEN I > 1000;

		DBMS_OUTPUT.PUT_LINE(' '||I);	
	END LOOP;

END;
/