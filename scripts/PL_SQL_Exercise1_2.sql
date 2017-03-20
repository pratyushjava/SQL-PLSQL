DECLARE 
	num number:=&no;
	numS number;
	numC number;

BEGIN

	--create table temp(no number,sq number,cube number);

	numS:=num*num;
	numC:=numS*num;

	insert into temp values(num,numS,numC);
	
	--select * from temp;
END;
/
	