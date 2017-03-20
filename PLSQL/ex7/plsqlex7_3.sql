create or replace procedure proc_cursor_date
is
	exp_check exception;
	exp number;
	cursor emp_cursor is
				select ename,hiredate from employee;
begin
	for emp_val in emp_cursor
	loop
		exp:=floor((sysdate-emp_val.hiredate)/365);
		if(exp < 2)
		then 
			raise exp_check;
		end if;
		insert into tempo values(emp_val.ename,exp);	
	end loop;
exception
	when exp_check then
			dbms_output.put_line('all employees should have a experience greater than 2years');
end;
/