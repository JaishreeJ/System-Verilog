class sv;
int x=1;
int y=2;

function int get();
 x=5;
 y=7;
$display("x=%d,y=%d",x,y);
endfunction

endclass
module class_this;
sv a;
  initial begin

a= new();
a.get;
$display("x=%d,y=%d",a.x,a.y);

end
endmodule



