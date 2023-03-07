class generator;
  rand bit [2:0] value;
  constraint cons {value==5;}
endclass

module randomization();

   generator gen = new();
  initial
  begin
      if(gen.randomize())
        $display("\tvalue: %0d \tRandomization successful",gen.value);
      else
        $display("\tvalue: %0d \tRandomization Failed",gen.value);
       if(gen.randomize()with{value==2;})
        $display("\tvalue: %0d \tRandomization successful",gen.value);
      else
        $display("\tvalue: %0d \tRandomization Failed",gen.value);
  end
endmodule
