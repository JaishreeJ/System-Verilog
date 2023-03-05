
module foreach_using_for();

  int array[5];

  initial 
  begin 
   for(int i=0;i<$size(array);i++)
    begin 
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end
    $display("\n\t----outside for loop----\n");
  end 

endmodule
