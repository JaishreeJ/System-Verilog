module non_blocking();
int a=5;
int b=2;
initial begin
$display("a=%d,b=%d",a,b);
end
initial begin
a<=b;
b<=a;
$display("a=%d,b=%d",a,b);
end
endmodule



