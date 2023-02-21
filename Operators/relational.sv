module realtional_code;
  logic [2:0] a,b;
  initial
  begin
    a=3'b111;
    b=3'b101;
    $display("\n \t output of a<b is %0d",a<b);
    $display("\n \t output of a>b is %d",a>b);
    $display("\n \t output of a<=b is %2d",a<=b);
    $display("\n \t output of a>=b is %0d",a>=b);
  end
endmodule
    
