class PQR; 
  rand bit [3:0] var1;
  constraint C1 {(var1 inside {[3:9]});}

endclass
  
module top;
initial begin

int i;
  PQR pqr;
  pqr=new();
  for(int i =1; i<7;i++)
  
  begin
    void'(pqr.randomize());
    $display("[%0t] @ iteration: %0d -----> var1=%0d",$time,i,pqr.var1);
  end
end
endmodule
