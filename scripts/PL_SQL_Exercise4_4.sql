DECLARE

	I number;
	num number;
	temp number;

BEGIN

	num := &num;
	temp := num;
	
	I := 0;
	LOOP

		num := num * 2;
		I := I + 1;

		EXIT WHEN num >= 1000000;

	END LOOP;

	DBMS_OUTPUT.PUT_LINE('Number '||temp||' doubled '||I||' times to reach 1 million');

END;
/