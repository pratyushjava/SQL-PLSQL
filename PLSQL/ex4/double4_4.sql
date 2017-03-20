create or replace procedure double(num number)
as
	countt number:=0;
	temp number:=num;
begin
	while(temp<=1000000)
	loop
		temp:=temp*2;
		countt:=countt+1;		
	end loop;
	dbms_output.put_line(countt);
end;
/