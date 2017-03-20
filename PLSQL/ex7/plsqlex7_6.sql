create or replace function length(length1 in number,length2 in number)
return number
is

	feet number;
	inch number;
	temp number;
begin
	yard:=len/36;
	temp:=mod(len,36);
	feet:=temp/12;
	inch:=mod(temp,12);	
	dbms_output.put_line('len='||yard||'yard '||feet||'feet '||inch||'inches');
end;
/