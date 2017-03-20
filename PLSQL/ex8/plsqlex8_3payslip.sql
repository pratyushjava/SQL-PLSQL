create or replace procedure proc_employ_payslip
is
   	da number;
    	hra number;
   	gross number;
    	tax number;
    	net number;
begin
 	 for i in (select * from employ)
    	loop
      		payroll_calc.da(i.basic_sal,i.designation,da);
      		payroll_calc.hra(i.basic_sal,i.deptno,hra);
      		payroll_calc.gross(i.basic_sal,da,hra,gross);
      		payroll_calc.net(gross,tax,net);
      		dbms_output.put_line('************************************************************');
     		dbms_output.put_line('name: '||i.emp_name||' designation: '||i.designation||' dept no: '||i.deptno);
		dbms_output.put_line('                                                             ');
      		dbms_output.put_line('salary: '||i.basic_sal||' da: '||da||' hra: '||hra||' gross: '||gross||' tax '||tax||' net '||net);
     		dbms_output.put_line('************************************************************');
		dbms_output.put_line('                                                             ');
   	end loop;
end;
/