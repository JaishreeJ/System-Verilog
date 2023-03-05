virtual class A;
int a,b,c;
pure virtual function void disp();
pure virtual task sum();
endclass
class B extends A;
virtual function void disp();
a=10;
$display("a=%d,b=%d,c=%d",a,b,c);
endfunction
virtual task sum();
c=a+b;
$display("a=%d,b=%d,c=%d",a,b,c);
endtask;
endclass
module pure_virtual();
B b1;
initial begin
b1=new();
b1.disp();
b1.b=35;
b1.sum;
end
endmodule



