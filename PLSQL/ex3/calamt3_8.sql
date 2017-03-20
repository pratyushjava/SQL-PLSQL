create or replace procedure calamt(code number,amt number,netamt out number,discount out number)
as
begin
	discount:=0;
	netamt:=amt;
	if (code=1 and amt< 3000) then
		discount:=amt*.02;
		netamt:=netamt-discount;

	elsif (code=1 and amt>=3000 and amt<5000) then
		discount:=amt*.08;
		netamt:=netamt-discount;
	
	elsif (code=1 and amt>=5000) then
		discount:=amt*.12;
		netamt:=netamt-discount;	

	elsif (code=2 and amt>=15000 and amt<20000) then
		discount:=amt*.05;
		netamt:=netamt-discount;	

	elsif (code=2 and amt>=20000) then
		discount:=amt*.10;
		netamt:=netamt-discount;

	elsif (code=3 and amt>=25000 and amt<50000) then
		discount:=amt*.05;
		netamt:=netamt-discount;
	
	elsif (code=3 and amt>=50000) then
		discount:=amt*.10;
		netamt:=netamt-discount;

	end if;
	dbms_output.put_line('discount='||discount||' net amount='||netamt);
end;
/