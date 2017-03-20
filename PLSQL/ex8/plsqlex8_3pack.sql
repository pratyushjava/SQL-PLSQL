create or replace package payroll_calc
is
	procedure da(salary in number,desg in varchar2,da1 out number);
	procedure hra(salary in number,dept in number,hra1 out number);
	procedure gross(salary in number,da in number,hra in number,gross1 out number);
	procedure tax(gross in number,tax1 out number);
	procedure net(gross in number,tax in number,net1 out number);
end payroll_calc;
/