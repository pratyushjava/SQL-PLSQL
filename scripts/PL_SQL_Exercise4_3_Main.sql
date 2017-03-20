DECLARE

	lowerBound number;
	upperBound number;
	increment number;
	area number;
	volume number;
	radius number;
	I number;

BEGIN

	LOOP

		lowerBound := &lowerBound;
		CONTINUE WHEN lowerBound <= 0;
		
		upperBound := &upperBound;
		CONTINUE WHEN upperBound <= 0;
		
		increment  := &increment;
		CONTINUE WHEN increment <= 0;

		IF lowerBound > upperBound 
		THEN
	
			lowerBound := lowerBound + upperBound;
			upperBound := lowerBound - upperBound;
			lowerBound := lowerBound - upperBound;

		END IF;			

		EXIT;

	END LOOP;

	I := lowerBound;
	WHILE I <= upperBound	
 	LOOP

		sphere(I,area,volume);
		DBMS_OUTPUT.PUT_LINE('RADIUS :: '||I||' AREA :: '||area||' VOLUME :: '||volume);
		I := I + increment;		

	END LOOP;
		
END;
/