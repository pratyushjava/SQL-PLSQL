create or replace trigger ordmst_update_row
before update of status
on ord_mst 
for each row
begin
	if (:new.status='d') then
		for i in (select * from ord_dt1 where ord_no=:old.ord_no)
		loop
			update prod_mst set booked_qty=booked_qty-i.qty where prod_cd=i.prod_cd;
			update prod_mst set qty_in_stock=qty_in_stock-i.qty where prod_cd=i.prod_cd;
		end loop;
	elsif (:new.status='c') then
		delete from ord_dt1 where ord_no=:old.ord_no;
	end if;	
end;
/
