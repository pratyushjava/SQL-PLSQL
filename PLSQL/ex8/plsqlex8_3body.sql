create or replace package body payroll_calc
is
	procedure da(salary in number,desg in varchar2, da1 out number)
	is
	begin
		if( upper(desg)='MANAGER') then
			da1:=salary*.1;
		else
			da1:=salary*.05;
		end if;
	end da;
	
	procedure hra(salary in number,dept in number, hra1 out number)
	is
	begin
		if (dept=10) then
			hra1:=salary*.2;
		else
			hra1:=salary*.07;
		end if;
	end hra;
	
	procedure gross(salary in number,da in number, hra in number, gross1 out number)
	is
	begin
		gross1:=salary+da+hra;
	end gross;
	
	procedure tax(gross in number,tax1 out number)
	is
		temp number;
	begin
		if(gross between 4000 and 5000) then
			tax1:=(gross-4000)*.05;
		elsif(gross>5000) then
			tax1:=(gross-4000)*.05;
			temp:=(gross-5000)*.02;
			tax1:=tax1+temp;
		else
			tax1:=0;
		end if;
	end tax;
	
	procedure net(gross in number,tax in number,net1 out number)
	is
	begin
		net1:=gross-tax;
	end net;
		
end;
/
	