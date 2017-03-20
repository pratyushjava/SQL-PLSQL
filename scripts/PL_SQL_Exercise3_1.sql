DECLARE

	low number:=&low;
	high number:=&high;
	n number:=&n;
	temp number;
BEGIN

	SELECT n into temp from dual where n BETWEEN low AND high;

	IF temp<>n 
	THEN
		DBMS_OUTPUT.PUT_LINE(n||' NOT FOUND IN BETWEEN '||low||' AND '||high); 	
	ELSE
		DBMS_OUTPUT.PUT_LINE(n||' FOUND IN BETWEEN '||low||' AND '||high);
	END IF;
END;
/