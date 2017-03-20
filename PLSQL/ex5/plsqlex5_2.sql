create or replace procedure proc_cust
as
	unit_used number;
	rate number;
	amount number;
	surcharge number;
	excise number;
	net number;
	
begin
	for i in (select * from customer)
	loop
		unit_used:=i.current_reading-i.previous_reading;
		if(i.customer_type='A')
		then
			rate:=1;
		elsif(i.customer_type='I')
		then
			rate:=1.25;
		elsif(i.customer_type='C')
		then
			rate:=1.5;
		elsif(i.customer_type='R')
		then
			rate:=1.3;
		end if;
		amount:=rate * unit_used;
		if(i.meter_type='S')
		then
			surcharge:=0.05 * amount;
		else
			surcharge:=0.1 * amount;
		end if;
		excise:=0.3 * (amount + surcharge);	
		net:= amount + surcharge + excise;
		
		insert into bill values(i.meter_no,unit_used,rate,amount,surcharge,excise,net);
		insert into bill_new values(amount,surcharge,excise,net);
		commit;
	end loop;
end;
/
		