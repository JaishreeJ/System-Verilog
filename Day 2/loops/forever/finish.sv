
module forever_loop;
  int a; 
  initial 
  begin 
  forever
    begin
      $display("\t @ %0d ns Iteration %0d",$time,a);
      a++;
      #4;
    end

  end
initial begin
  #20 $display("\n\t@ %0d ns Stopped using $finish",$time);
  $finish;
end

endmodule:forever_loop 
