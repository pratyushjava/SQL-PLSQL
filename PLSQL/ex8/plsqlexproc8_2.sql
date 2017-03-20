create or replace procedure emp_dob
as
	dob date:='&dob';
	yr number;
	mon number;
	days number;
begin
	yr:= age_calc(dob,mon,days);
	dbms_output.put_line(yr||'years '||mon||' months '||days||' days ');
end;
/
		