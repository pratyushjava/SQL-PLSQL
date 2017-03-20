create or replace function age_calc(dob in date,mon out number,days out number)
return number
is
	year number;
	temp number;
begin
	days:=sysdate-dob;
        year:=floor(days/365);
        temp:=mod(days,365);
        mon:=floor(mod(days,365)/30);
        days:=floor(mod(temp,30));
	return year;
end;
/