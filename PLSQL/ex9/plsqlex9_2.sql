create or replace trigger dtl_del_row
before delete
on ord_dt1
for each row
begin
	update prod_mst set booked_qty=booked_qty-:old.qty where prod_cd=:old.prod_cd;
end;
/
