
typedef struct packed { 
	byte id;
	bit[7:0]experience;
	logic[15:0] salary;

} employee_details_s;     
module emp_info;
employee_details_s emp_info1; 

initial begin
emp_info1.id =43;
emp_info1.experience = 2;
emp_info1.salary = 25000;
$display("\n emp_info1.id = %p", emp_info1.id);
$display("\n emp_info1.experience = %p", emp_info1.experience);
$display("\n emp_info1.salary = %p", emp_info1.salary);
end
endmodule:emp_info





