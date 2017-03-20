create procedure tempconv
as
	f number(5):=&tempFer;
	c number(5):=&tempcel;
	cel number(5,2);
	fer number(5);
begin
	cel:=(F-32)*5/9;
	fer:=9/5*C + 32;
	dbms_output.put_line(f||'F temp in celsius '||cel);
	dbms_output.put_line(c||'C temp in Fahrenheit '||fer);
end;
/
