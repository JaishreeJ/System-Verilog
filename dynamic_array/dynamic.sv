module dynamic_array();
int abc[];
initial
begin
abc=new[7];
abc='{1,2,3,4,5,6,7};
foreach(abc[i])
$display("value of a[%d]=%d",i,abc[i]);
end 
endmodule
