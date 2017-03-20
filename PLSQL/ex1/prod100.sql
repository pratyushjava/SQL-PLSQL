create or replace procedure prod(num1 number,num2 number)
as
	temp varchar2(50);	
begin
	select decode(mod(num,5),0,'divisible by 5','not divisible by 5') into temp from dual;
	dbms_output.put_line(temp);
end;
/
