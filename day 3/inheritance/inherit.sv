class A;
int a=5;
function void disp();
$display("Value of a=%d",a);
endfunction:disp 
endclass:A
class B extends A; 
int a=6;
function void display();
$display("Value of a=%d",a);
endfunction:display
endclass:B
module inh();
B b1;
initial begin
b1=new();
b1.a=10;
b1.disp();
b1.display();
end 
endmodule
