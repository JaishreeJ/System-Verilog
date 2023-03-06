module fork_join_none;
  initial begin
    fork
     
      begin
        $display($time,"\tProcess-1 Started");
        #5;
        $display($time,"\tProcess-1 Finished");
      end
     
      begin
        $display($time,"\tProcess-2 Startedt");
        #20;
        $display($time,"\tProcess-2 Finished");
      end
    join_none
 
    $display($time,"\tOutside Fork-Join_none");
  
  end
endmodule
