create or replace procedure printnum(num number)
as
	temp number:=num;
	d number;
	rev number:=0;
	word varchar2(7);
begin
	while(temp<>0)
	loop
		d:=mod(temp,10);
		rev:=(rev*10)+d;
		temp:=floor(temp/10);
	end loop;
	while(rev<>0)
	loop
		d:=mod(rev,10);
		rev:=floor(rev/10);
		select decode(d,0,'zero',1,'one',2,'two',3,'three',4,'four',5,'five',6,'six',7,'seven',8,'eight',9,'nine') into word from dual;		
		dbms_output.put_line(word);
	end loop;
end;
/