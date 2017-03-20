create or replace procedure applecost(weight number,cost out number)
as
begin
	if (weight>=10) then
		cost:=weight*5;
	else
		cost:=weight*7;
	end if;
end;
/