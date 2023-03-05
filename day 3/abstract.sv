virtual class A;
int a=5;
function void disp();
$display("a=%d",a);
endfunction
endclass:A

class B extends A;
int a=6;
function void display();
$display("a=%d",a);
endfunction
endclass:B

module abstract_ex();
B b1;
initial begin
b1=new();
b1.a=10;
b1.disp();
b1.display();
end
endmodule

