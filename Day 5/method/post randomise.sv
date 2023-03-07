class generator;
  rand bit [2:0] value;
  int check;
  constraint exp { value>5;}
  
  function void pre_randomize();
    $display("\tI'm in pre_randomize function");
    check=0;
  endfunction
  
  function void post_randomize();
    $display("\tI'm in post_randomize function");
    check=1;
  endfunction

endclass

module post_randomization();

   generator gen = new();
   int check;
  initial
  begin

      $display("\t[%0t]Calling Randomize....",$time); 
      check=gen.randomize();
      #1  $display("\t[%0t] @ iteration: 1 -----> value: %0d ",$time,gen.value);
      if(check==1)
        $display("\tRandomization is performed");
      else 
        $display("\tRandomization is not performed");
      $display("\t[%0t]Calling Randomize....",$time);
      check=gen.randomize()with{value<5;};
      #1  $display("\t[%0t] @ iteration: 2  -----> value: %0d ",$time,gen.value);
      if(check==1)
        $display("\tRandomization is performed");
      else 
        $display("\tRandomization is not performed");
      
  end
endmodule
