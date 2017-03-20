CREATE OR REPLACE PROCEDURE printDigit
IS

	num1 number:= &num;
	temp varchar2(20);
	num number;
	rem number;
	
BEGIN

		SELECT reverse(TO_CHAR(num1)) INTO temp FROM DUAL;
		SELECT TO_NUMBER(temp) INTO num FROM DUAL;

		WHILE num<>0
		LOOP
			
			rem := MOD(num,10);
			
			CASE rem
				WHEN 0 THEN DBMS_OUTPUT.PUT_LINE('ZERO');
				WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('ONE');
				WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('TWO');
				WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('THREE');
				WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('FOUR');
				WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('FIVE');
				WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('SIX');
				WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('SEVEN');
				WHEN 8 THEN DBMS_OUTPUT.PUT_LINE('EIGHT');
				WHEN 9 THEN DBMS_OUTPUT.PUT_LINE('NINE');

			END CASE;
			
			num := num/10;			
			
			num := floor(num);
			
	
		END LOOP;

		

	
END;
/