module equality_code;
  
logic [3:0] a,b,c,y;
initial
begin
  a='bx0x1;
  b=4'b1100;
  c=4'bx0x1;
  y=(a==b);
  $display("\n \t The value of logical equality operator is %b",y);
  
  y=(a!=b);
  $display("\n \t The value of logical inequality operator is %b",y);
  y=(a===c);
  $display("\n \t The value of case equality operator is %b",y);
  y=(a!==c);
  $display("\n \t The value of case inequality operator is %b",y);
end
endmodule
  
  
