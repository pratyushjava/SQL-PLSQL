CREATE OR REPLACE PROCEDURE sphere (
					radius  IN number,
					area OUT number,
					volume OUT number
				   )
IS

	Pi constant number := 3.14;	

BEGIN

	area := 4*Pi*radius*radius;		
	volume := (4/3)*Pi*radius*radius*radius;

END;
/