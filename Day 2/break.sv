module break_sv();
int a[5];
initial begin
foreach(a[i])
begin
if(i==2) begin
$display("break");
break;
end
else
  begin
a[i]=i;
$display("a[%d]=%d",i,a[i]);
end
end
end
endmodule

