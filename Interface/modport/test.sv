module modport_tb(mod_intr inf);
initial 
begin 
repeat(5)
begin
inf.tb.a=$random;
#1
inf.tb.b=$random;
 $display("a=%b\t b=%b\t c=%b",inf.tb.a,inf.tb.b,inf.tb.c);
end
end
endmodule



