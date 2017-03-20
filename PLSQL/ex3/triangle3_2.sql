create or replace procedure triangle(side1 number, side2 number, side3 number)
as
begin
	if (side1+side2>side3) and (side2+side3>side1) and (side3+side1>side2) then
		dbms_output.put_line('triangle');
	else
		dbms_output.put_line('not a triangle');
	end if;
end;
/