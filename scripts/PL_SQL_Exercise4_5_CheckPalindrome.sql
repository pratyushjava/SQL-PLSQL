CREATE OR REPLACE FUNCTION CheckPalindrome ( word varchar2)
RETURN number

IS

	J number;
	len number;
	temp char(1);
	tempR char(1);
	retValue number;

BEGIN

	SELECT length(word) INTO len FROM DUAL;

	J := len;
	retValue := 1;
	FOR I IN 1..(floor(len/2))
	LOOP

		SELECT SUBSTR(word,I,1) INTO temp FROM DUAL;
		SELECT SUBSTR(word,J,1) INTO tempR FROM DUAL;		

		IF temp<>tempR
		THEN
			retValue := 0;
			EXIT;
		END IF;			
		
		J := J + 1;
	END LOOP;

	RETURN(retValue);
END;
/