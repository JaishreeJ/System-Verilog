module unpacked_array;
byte a[8];
int abc[10];
initial
begin
a='{4,5,6,2,3,7,9,10};
foreach(abc[i])
abc[i]=$urandom_range(10,50);
foreach(a[i])
$display("a[%d]=%d",i,a[i]);
$display("abc=%p",abc);
end
endmodule:unpacked_array
