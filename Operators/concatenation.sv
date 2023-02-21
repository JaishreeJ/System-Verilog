module concatenation_code;
  logic[3:0]a,b,c;
  int x;
  initial
  begin
    a=1'b1;
    b=4'b1110;
    c=4'b1101;
    x={a,b,c};
    $display("\n\t the concatnated ouput is %0b",x);
    #10
    x={a,b,{3{c}}};
    $display("\n\t the concatnated ouput is %0b",x);
  end 
  endmodule
