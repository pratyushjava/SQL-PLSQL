create or replace procedure palindrome(str varchar)
as
	len number;
	lim number;
	countt number:=0;
begin
	len:=length(str);
	lim:=floor(len/2);
	for i in 1..lim
	loop
		if(substr(str,i,1)=substr(str,len,1)) then
			countt:=countt+1;
		end if;
		len:=len-1;				
	end loop;
	if(countt=lim) then
		dbms_output.put_line('palindrome');
	else
		dbms_output.put_line('not a palindrome');
	end if;
end;
/