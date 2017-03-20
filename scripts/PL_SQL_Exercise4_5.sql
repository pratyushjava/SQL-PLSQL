CREATE OR REPLACE PROCEDURE palindrome
IS
	word varchar2(10);
	temp varchar(2);
	len number := &length;
	I number;
	
BEGIN

	I := 0;
	LOOP

		temp := '&letter1';
		select concat(word,temp) INTO word FROM DUAL;
		
		I := I + 1;	
		EXIT WHEN I = len;

	END LOOP;

	IF CheckPalindrome(word) = 1 
	THEN
		DBMS_OUTPUT.PUT_LINE('PALINDROME');
	ELSE
		DBMS_OUTPUT.PUT_LINE('NOT A PALINDROME');
	END IF;

END;
/