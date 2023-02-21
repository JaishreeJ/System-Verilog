module reduction_code;
  logic [3:0]a,y;
  initial
  begin
    a=4'b1010;
    y=!a;
    $display("\n \t The reduction output is %d",y);
    y=|a;
    $display("\n \t The reduction output is %d",y);
    y=&a;
    $display("\n \t The reduction output is %d",y);
    y=~|a;
    $display("\n \t The reduction output is %d",y);
    y=~&a;
    $display("\n \t The reduction output is %d",y);
    y=^a;
    $display("\n \t The reduction output is %d",y);
    y=~^a;
    $display("\n \t The reduction output is %d",y);
  end
endmodule
    
    
