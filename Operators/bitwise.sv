module bitwise_code;
  logic [3:0] a, b,c,y;
  initial
  begin
     a=4'b1101;
     b=3'b101;
     c=4'bx010;
     y=~a;
     $display("The value of ~a is %0b",y);
     y=a&b;
       $display("The value of a&b is %0b",y);

     y=a|c;
       $display("The value of a|c is %0b",y);

     y=a^c;
       $display("The value of a^c is %0b",y);

     y=a^b;
       $display("The value of a^b is %0b",y);

     y=~(a&b);
       $display("The value of a&b is %0b",y);

     y=~(b|a);
       $display("The value of ~(b|a) is %0b",y);

     y=~(a^b);
       $display("The value of ~(a^b) is %0b",y);
end
endmodule
     
     
