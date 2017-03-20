create or replace procedure sqcube(num number)
is
	square number;
	cube number;
begin
	square:=num*num;
	cube:=square*num;
	insert into tempp values(num,square,cube);
end sqcube;
/
	