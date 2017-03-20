create or replace trigger dtl_ins_row
before insert
on ord_dt1
for each row
begin
	update prod_mst set booked_qty=booked_qty+:new.qty where prod_cd=:new.prod_cd;
end;
/
