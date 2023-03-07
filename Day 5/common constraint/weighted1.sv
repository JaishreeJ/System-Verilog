
class myWorld;
  rand bit [3:0] value1;
  constraint m_var { value1 dist { 1:=30, [2:5]:=40, 6:=70, 7:=20};}
endclass

module top;
initial begin
  int i;
  myWorld world;
  world = new();
  for(int i =0; i<10; i++) begin
   void'( world.randomize());
    $display("[%0t] @ iteration %0d  value1=%0d",$time,i,world.value1);
  end
end
endmodule

