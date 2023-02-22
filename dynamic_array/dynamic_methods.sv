module dynamic_methods();
int abc[];
initial
begin
abc=new[7];
abc='{1,2,3,4,5,6,7};
foreach(abc[i])
$display("value of a[%0d]=%d",i,abc[i]);
$display("\n%d",abc.size());
abc.delete();
$display("\n%d",abc.size());

end 
endmodule

