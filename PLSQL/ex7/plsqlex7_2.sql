create or replace procedure proc_emp_greatsal
is
	var number(6,2);
begin
	for i in (select * from employ)
	loop
		/*if(i.basic_sal between 1 and 9999.99) then
			dbms_output.put_line('salary found');
		end if;*/
		var:=i.basic_sal;
		dbms_output.put_line(i.basic_sal);
	end loop;
exception
	when value_error then
		dbms_output.put_line('salary should not enter beyond this');
end;
/
	