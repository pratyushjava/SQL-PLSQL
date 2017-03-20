create or replace function fun_rev_str(string1 in varchar2)
return varchar2
is
	var varchar2(10);
	lent number;
	
begin
	lent:=length(string1);
	for i in reverse 1..lent
	loop
	var:=var || substr(string1,i,1);
	end loop;
	return var;
end;
/

	
