create or replace procedure proc_employ
is 
	gross number;
	da number;
	hra number;
begin
	for i in (select * from employ)
	loop
		da:=i.basic_sal * 0.35;
		hra:=i.basic_sal * 0.15;
		if(i.category='W' and hra > 250)
		then
			hra:=250;
		elsif(i.category='J' and hra > 1000)
		then
			hra:=1000;
		elsif(i.category='S' and hra >30000)then
			hra:=30000;
		end if;
		gross:=i.basic_sal + da + hra;
	insert into emp_gross values(i.empno,gross);
	end loop;
end;
/
	
			