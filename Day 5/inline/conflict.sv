class generator;

  rand bit [2:0] value;
  constraint cons {value==5;};

endclass

module conflict_with_inline();

   generator gen = new();
   int check;
  initial
  begin
    for(int i=1;i<=2;i++)
    begin
      check=gen.randomize()with{value==3;};
     $display("\tRandomization Done \t @ iteration: %0d value: %0d",i,gen.value);
  end
  end
endmodule
