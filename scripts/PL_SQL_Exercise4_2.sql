CREATE OR REPLACE PROCEDURE ArmStrong
IS

	I number;
	num number;
	temp number;
	rem number;
	sumCube number;

BEGIN

	I := 1;

	WHILE I <= 999  
	LOOP

		num := I;
		sumCube := 0;

		WHILE num<>0
		LOOP
			
			rem := MOD(num,10);
			
			num := num/10;			
			
			num := floor(num);
			
			sumCube := sumCube + ( rem * rem * rem );
	
		END LOOP;

		IF sumCube = I
		THEN
			DBMS_OUTPUT.PUT_LINE(I);
		END IF;

		I := I + 1;

	END LOOP;	

END;
/