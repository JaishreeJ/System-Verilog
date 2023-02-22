module multi_packed();
bit [2:0][3:0]a;
initial
begin
a=12'hdfe;
$display("a=%p",a);
foreach(a[i])
begin
foreach(a[i][j])
begin
$display("a[%d][%d]=%b",i,j,a[i][j]);
end
end
end
endmodule:multi_packed
