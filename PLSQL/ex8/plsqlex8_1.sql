create or replace procedure comp_intr(p in number,r in decimal,y in number )
as
	i number;
	amt number;
begin
	i:=(p*(1+r)*y)-p;
	amt:=p+i;
	--dbms_output.put_line(amt||' '||i);
	insert into tempii values(i,amt);
end;
/