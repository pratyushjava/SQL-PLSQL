create or replace procedure armstrong
as
	temp number;
	d number;
	summ number;
begin
	for i in 1..999
	loop
		summ:=0;
		temp:=i;
		while(temp>0)
		loop
			d:=mod(temp,10);
			summ:=summ+(d*d*d);
			temp:=floor(temp/10);
		end loop;
		if(i=summ) then
			dbms_output.put_line(i);
		end if;
	end loop;
end;
/