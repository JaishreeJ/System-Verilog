module arith_code;
int a=10;
int b=5;
int y;
initial
begin
$display("\n\t Value of a=%d",a);
$display("\n\t Value of a=%d",a);
y=a+b;
$display("\n\t Value of y=%0d",y);
y=a-b;
$display("\n\t Value of y=%0d",y);
y=a*b;
$display("\n\t Value of y=%0d",y);
y=a/b;
$display("\n\t Value of y=%0d",y);
y=a%b;
$display("\n\t Value of y=%0d",y);
y=a**b;
$display("\n\t Value of y=%0d",y);
end 
endmodule

