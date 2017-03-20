create or replace procedure iter100
as
	i number:=1;
begin
	loop
		exit when i>1000;
		if(mod(i,100)=0) then
			dbms_output.put_line(i);
		end if;
		i:=i+1;
	end loop;
end;
/