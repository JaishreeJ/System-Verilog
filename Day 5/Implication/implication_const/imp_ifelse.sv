
class basic;
  rand bit [3:0] value1;
  rand bit [2:0] value2;
 constraint c_var {

    if(value1 inside {[4'h3:4'h9]})
      value2 == 1;

      else {
        value2 == 0;}

      }

    endclass
    module top;

    int i=1;
    initial begin
      basic pkt;
      pkt = new();
      for (int i=0;i<5;i++)begin
        void'( pkt.randomize());
        $display("[%0t] @ iteration %0d ----->  value1=%0d, value2 = %0d",$time,i,pkt.value1,pkt.value2);
      end
    end
    endmodule
