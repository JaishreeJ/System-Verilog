
module data_type_integer;  
 integer integer_data; 
initial begin
  
  
  $display("\nBefore initialization Default value of integer = %0b",integer_data);
  
  integer_data = 32'b11x0_101x_1xz0_0111; 

  $display("\nAfter initialization value of integer = %0b\n", integer_data);
  
 end
endmodule

