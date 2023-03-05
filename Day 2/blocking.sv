module blocking();
int a=5;
int b=2;
int c;
initial begin
$display("a=%d,b=%d,c=%d",a,b,c);
end
initial begin
c=a;
a=b;
b=c;
$display("a=%d,b=%d,c=%d",a,b,c);
end
initial begin
a=b;
b=a;
$display("a=%d,b=%d,c=%d",a,b,c);
end
endmodule


