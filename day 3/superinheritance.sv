class base;
bit [31:0] addr;
function void display();
$display("addr=%d",addr);
endfunction;
endclass
class child extends base;
bit [31:0] data;
function void display();
super.display();
$display("data=%d",data);
endfunction;
endclass
module superinh();
initial begin
child c=new();
c.addr=10;
c.data=20;
c.display();
end
endmodule

