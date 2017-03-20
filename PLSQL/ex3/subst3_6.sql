create or replace procedure subst(str1 varchar2,str2 varchar2)
as
begin
	if instr(str1,str2)>0 then
		dbms_output.put_line(str2 ||' is substring of '||str2);
	elsif instr(str2,str1)>0 then
		dbms_output.put_line(str1 ||' is substring of '||str2);
	else
		dbms_output.put_line('not a substring');
	end if;
end;
/