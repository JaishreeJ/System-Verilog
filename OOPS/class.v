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
a= new();
a.set(10);
$display("Value of x=%d",a.get());
end
endmodule

