create or replace procedure lenconv
as
	len number(5):=&length;
	yard number(3);
	feet number(3);
	inch number(3);
	temp number(3);
begin
	yard:=floor(len/36);
	temp:=mod(len,36);
	feet:=floor(temp/12);
	inch:=mod(temp,12);	
	dbms_output.put_line('len='||yard||'yard '||feet||'feet '||inch||'inches');
end;
/
