module unique_if1;
bit [4:0] a;
int b ;
initial begin 
  $display ("The size of a = %0d ",$size(a));
  $display ("The size of b = %0d ", $size(b));
 $display ("--------------------------------");
 unique if ($size(a)<$size(b))begin 
   $display ("Inside the unique if block");
   $display ("The size of a is smaller than b ");
 end 
 else if ($size(a)==$size(b)) begin  
   $display ("Inside the first elseif block");
   $display ("Size of a = Size of b");
 end 
 else if ($size(a)>$size(b))begin  
   $display ("Inside the second elseif block");
   $display ("Size of a is greater than size of b ");
 end 
 $display ("Out from conditional block ");

end 
endmodule 

