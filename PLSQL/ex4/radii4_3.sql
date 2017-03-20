create or replace procedure radii(minr number,maxr number)
as
	circum number(10,2);
	area number(10,2);
	vol number(10,2);
	pi constant number:=3.14;
	minrr number:=minr;
	maxrr number:=maxr;
begin
	if(minrr<=0 or maxrr<=0) then
		dbms_output.put_line('enter radii greater than 0');
	else
		if(minr>maxr)  then
			minrr:=maxr;
			maxrr:=minr;
		end if;			
		for r in minrr..maxrr
		loop
			circum:=2*pi*r;
			area:=4*pi*r*r;
			vol:=(4/3)*pi*r*r*r;
			dbms_output.put_line('for radii='||r||', circumferrence='|| circum||' area='||area||' volume='||vol);
		end loop;
	end if;
end;
/