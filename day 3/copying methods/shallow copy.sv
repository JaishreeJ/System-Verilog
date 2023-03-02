class address;
bit [31:0] start;
bit [31:0] End;
function new();
start=10;
End=50;
endfunction
endclass
class packet;
bit [31:0] addr;
bit [31:0] data;
address ar;
function new();
addr=32'h10;
data=32'hFF;
ar=new();
endfunction;
function void display();
$display("addr=%0h,\tdata=%0h",addr,data);
$display("start =%0d,\t end=%0d",ar.start,ar.End);
endfunction;
endclass;
module class_shallow;
packet p1,p2;
initial
begin
p1=new();
p2=new p1;
p1.display();
p2.display();
p2.addr=32'h68;
p2.ar.start=65;
p2.ar.End=100;
p1.display();
p2.display();
end
endmodule

