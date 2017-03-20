create or replace trigger dtl_update_row
before update
on ord_dt1
for each row
begin
	if (:old.prod_cd <> :new.prod_cd) then
		update prod_mst set booked_qty=booked_qty-:old.qty where prod_cd=:old.prod_cd;
		update prod_mst set booked_qty=booked_qty+:new.qty where prod_cd=:new.prod_cd;
	
	elsif (:old.qty<>:new.qty) then
		if :old.qty<:new.qty then
			update prod_mst set booked_qty=booked_qty+:new.qty-:old.qty where prod_cd=:old.prod_cd;		
		else
			update prod_mst set booked_qty=booked_qty-:old.qty+:new.qty where prod_cd=:old.prod_cd;		
		end if;
	end if;
end;
/
