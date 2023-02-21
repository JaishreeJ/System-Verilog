module logic_code;
  logic [3:0]a,b,c,x,y,z;
  initial
  begin
    a=4'd4;
    b=3'b111;
    c=1'bx;
    x=a||c;
    $display("\n \t The output of logical OR is %b",x);
    y=b&&c;
     $display("\n \t The output of logical OR is %b",y);
    z=!b;
     $display("\n \t The output of logical OR is %b",z);
   end 
 endmodule
    
