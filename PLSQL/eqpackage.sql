CREATE PACKAGE calc
IS
  FUNCTIOn SUM(var NUMBER,var2 NUMBER)
  RETURN NUMBER;

  FUNCTIOn SUM(var NUMBER,var2 NUMBER,Var3 number)
  RETURN NUMBER ;
END calc;

CREATE PACKAGE BODY calc
IS

	FUNCTIOn SUM(var NUMBER,var2 NUMBER)
	RETURN NUMBER
	IS
	
	BEGIN
	  RETURN var+var1;
	END;

	FUNCTIOn SUM(var NUMBER,var2 NUMBER,
                             Var3 number)
	RETURN NUMBER
	IS
	
	BEGIN
	  RETURN var+var1+var3;
	END;
 
	FUNCTIOn SUM(var VARCHAR2,var2 VARCHAR2)
	RETURN VARCHAR2
	IS
	
	BEGIN
	  RETURN var || var2;
END calc;

        
END;
