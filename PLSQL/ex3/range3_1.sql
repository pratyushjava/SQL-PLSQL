create or replace procedure range
as
	lowval number:=&lowval;
	highval number:=&high_val;
	num number:=&number;
begin
	if(num between lowval and highval) then
		dbms_output.put_line('number is within given range');
	else
		
		dbms_output.put_line('number is not within given range');
	end if;
end;
/