create or replace procedure palindrome5(str varchar2)
as
	len number:=5;
	countt number:=0;
begin
	for i in 1..2
	loop
		if(substr(str,i,1)=substr(str,len,1)) then
			countt:=countt+1;
		end if;
		len:=len-1;				
	end loop;
	if(countt=2) then
		dbms_output.put_line('palindrome');
	else
		dbms_output.put_line('not a palindrome');
	end if;
end;
/