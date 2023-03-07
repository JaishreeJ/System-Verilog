
class items;
 rand bit [3:0] value1;
  constraint addr_mode1 { value1 > 5;

                         value1 <12;}

  constraint addr_mode2 {value1>6;}

endclass
module constraint_top;
initial begin

    int i;
   items  item;
  item = new();
  for (int i =1;i<10;i++) begin
   void'(item.randomize());
    $display("[%0t] @ iteration %0d -----> value1 = %0d",$time, i, item.value1);
   end
end
endmodule
