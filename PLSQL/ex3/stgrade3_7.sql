create or replace procedure stgrade(marks number)
as
begin
	if (marks between 95 and 100) then
		dbms_output.put_line('Grade A');
	elsif (marks between 85 and 94) then
		dbms_output.put_line('Grade B');
	elsif (marks between 70 and 84) then
		dbms_output.put_line('Grade C');
	elsif (marks between 60 and 69) then
		dbms_output.put_line('Grade D');
	elsif(marks between 0 and 59) then
		dbms_output.put_line('Grade E');
	else
		dbms_output.put_line('enter marks out of 100');

	end if;
end;
/