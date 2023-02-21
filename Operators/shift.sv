module shift_code;
  logic [3:0]a,c,y;
  reg signed [3:0]b;
  initial
  begin
    a=4'b1011;
    b=4'b1100;
    $display("\n \t Value of a is %b",a<<2);
    $display("\n \t Value of a is %b",b>>2);
    $display("\n \t Value of a is %b",a<<<2);
    $display("\n \t Value of a is %b",b>>>1);
end 
endmodule
