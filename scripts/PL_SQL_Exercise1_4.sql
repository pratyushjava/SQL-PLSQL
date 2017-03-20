CREATE OR REPLACE PROCEDURE conversion
AS

	inch number:=&i;
	yard number;
	foot number;

BEGIN

	yard := inch/36;
	inch:=mod(inch,36);
	foot:=inch/12;
	inch:=mod(inch,12);

	DBMS_OUTPUT.PUT_LINE('YARDS :: ' || floor(yard) || ' FOOT :: ' ||floor(foot)|| ' INCH :: ' || inch);
		
END;
/