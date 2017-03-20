create or replace procedure proc_invent
is
	total_pur number(9);
	rate number;
	total_sale number;
	quantity number;
begin	
	for j in 0..9
	loop
		total_pur:=0;
		for i in (select * from inventory where customer_code=j)
		loop
			if(i.product_code=0)
			then
				rate:=15;
			elsif(i.product_code=1)
			then
				rate:=35;
			elsif(i.product_code=2)
			then
				rate:=42;
			elsif(i.product_code=3)
			then
				rate:=51;
			else
				rate:=60;
			end if;
		total_pur:=total_pur+(rate*i.quantity_sold);
		end loop;
	insert into custpurchase values(j,total_pur);
	
	end loop;
	
	for i in 0..4
	loop
		quantity:=0;
		if(i=0)
		then
			rate:=15;
		elsif(i=1)
		then
			rate:=35;
		elsif(i=2)
		then
			rate:=42;
		elsif(i=3)
		then
			rate:=51;
		else
			rate:=60;
		end if;

		for j in (select * from inventory where product_code=i)
		loop
			quantity:=quantity+j.quantity_sold;
		end loop;
		
		total_sale:=rate*quantity;
		insert into prod_sale values(i,total_sale);	
	end loop;			
end;
/
	
