module packed_array();

bit[3:0]abc;
logic[15:0]pqr;
reg[7:0]xyz;
//int i;
initial
begin
abc = 4'b0110;
  pqr = 16'h10fe;
  xyz = 8'd16;
foreach(abc[i])
begin
$display("abc[%d]=%b",i,abc[i]);
end
foreach(pqr[i])
begin
$display("pqr[%d]=%b",i,pqr[i]);
end
foreach(xyz[i])
begin
$display("xyz[%d]=%b",i,xyz[i]);
end
end
endmodule
