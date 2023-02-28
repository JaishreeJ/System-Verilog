class sv;
int x;
task set(int i);
x=i;
endtask;
function int get();
return x;
endfunction

endclass
module class_ex;
  initial begin
sv a;
//a= new();
//a.set(10);
if(a==null)
$display("The object is empty");
else
$display("The object is not empty");
end
endmodule



