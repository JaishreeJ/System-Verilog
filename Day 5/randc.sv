class pack;
  randc bit [2:0]a;
endclass
module randc_var;

pack pk=new();
initial begin
  for (int i =0; i<=12;i++)begin
 void'(pk.randomize ());
  $display("Iteration =  %0d    Random Value =  %0d ", i ,pk.a);

end 
end 
endmodule 
