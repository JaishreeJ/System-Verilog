module conditional_code;
  int c,d;
  string a,b,y;
  initial begin
    c=4'b0011;
    d=4'b1001;
    a="True";
    b="False";
    y=(c>d)?a:b;
    $display("\n \t The output is %b",y);
end 
endmodule

