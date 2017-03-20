create or replace function triangle(side1 in number,side2 in number,side3 in number)
return boolean
is

begin
	if(side1+side2>side3 and side2+side3>side1 and side3+side1>side2) then
		return true;
	else
		return false;
	end if;
end;
/