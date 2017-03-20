CREATE OR REPLACE PROCEDURE grade( score number)
IS


BEGIN

	CASE
		WHEN ( score <=100 AND score >=95 ) THEN DBMS_OUTPUT.PUT_LINE('A');
		WHEN ( score <=94  AND score >=85 ) THEN DBMS_OUTPUT.PUT_LINE('B');
		WHEN ( score <=84  AND score >=70 ) THEN DBMS_OUTPUT.PUT_LINE('C');
		WHEN ( score <=69  AND score >=60 ) THEN DBMS_OUTPUT.PUT_LINE('D');
		WHEN ( score <=59  AND score >=0  ) THEN DBMS_OUTPUT.PUT_LINE('E');
		ELSE DBMS_OUTPUT.PUT_LINE('Invalid Score');
	END CASE;

END;
/