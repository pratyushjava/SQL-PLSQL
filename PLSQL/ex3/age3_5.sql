create or replace procedure age(age number)
as
begin
	if (age<18) then
		dbms_output.put_line('child');
	elsif(age between 18 and 21) then
		dbms_output.put_line('major');
	else
		dbms_output.put_line('adult');
	end if;
end;
/