create or replace procedure proc_emp_sal(salary in number)
is
	var varchar2(30);
begin
	select emp_name into var from employ where basic_sal=salary;
	dbms_output.put_line('the name of the employee is'||' '||var);
exception
	when NO_DATA_FOUND then
		dbms_output.put_line('there are no records for which salary you are searching for');
	when TOO_MANY_ROWS then
		dbms_output.put_line('there are multiple rows you are seaching for');
end;