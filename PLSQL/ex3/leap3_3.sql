create or replace procedure leap
as
	year number:=&year;
begin
	if (mod(year,4)=0 and mod(year,100)<>0) then
		dbms_output.put_line('leap year');
	elsif (mod(year,4)=0 and mod(year,400)=0) then
		dbms_output.put_line('leap year');
	else
		dbms_output.put_line('not a leap year');
	end if;
end;
/