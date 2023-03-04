
module data_type_bit;   
bit single_bit_data;  
bit [3:0] multi_bit_data;  

initial begin
  $display("\nBefore initialization Default value of single bit data = %0b", single_bit_data);
  $display("Before initialization Default value of 4 bit data = %0b", multi_bit_data);
 single_bit_data =1;  
  multi_bit_data = 4'b1100;  
 $display("\nAfter initialization value of single bit data = %0b", single_bit_data);
  $display("After initialization value of 4 bit data = %0b", multi_bit_data);
  multi_bit_data = 4'b11xz; 
    $display("\nAfter assign x and z, value of 4 bit data = %0b\n", multi_bit_data);
  end
endmodule: data_type_bit

