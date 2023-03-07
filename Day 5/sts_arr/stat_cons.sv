
class class_1;
  rand bit [4:0]a[2:0][3:0];
  constraint b{foreach (a[i])   
              a[i].sum()with (int'(item))==12;}          
              
    endclass

module mod;
int b;
    class_1 pack;
    initial begin 
      $display ("Randomization of multidimensional array");
      pack=new();
      $display ("Before randomization");
      $display (" Array = %0p",pack.a);  
      $display ("After randomization");
      for (int i =1;i<=5;i++)begin
        void'(pack.randomize());
        $display (" Iteration = %0d, Array = %0p",i,pack.a);
        b=$random(2147483649);
        $display("b=%0d",b);

      end 
    end 
    endmodule

