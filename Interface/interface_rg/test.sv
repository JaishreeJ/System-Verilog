module tb_and(and_if inf);
initial begin
 $monitor("\na=%b\t b=%b\t y=%b",inf.a,inf.b,inf.c);
inf.a=0;inf.b=0;
#1
inf.a=0;inf.b=0;
#1
inf.a=0;inf.b=0;
#1
inf.a=0;inf.b=0;
end
endmodule

