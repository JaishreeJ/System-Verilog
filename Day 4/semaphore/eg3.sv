
module semaphore_exa_get_try;

   semaphore car_key = new(1); 
   
   initial begin :BEGIN_I  
         
      fork
       begin :BEGIN_I_FORK   
          $display("person A Waiting for car, time=%0t", $time);        
          car_key.get(1); 
          $display("person A Got the car, time=%0t", $time);        
          #10;
          car_key.put(1);         
          $display("person A Returning back car, time=%0t", $time);  
       end :BEGIN_I_FORK
      
      begin :BEGIN_II_FORK
          #1;
          $display("person B Waiting for car, time=%0t", $time); 
          void'(car_key.try_get(1)); 
          $display("person B Got the car, time=%0t", $time); 
          #10;
          car_key.put(1); 
          $display("person B Returning back car, time=%0t", $time);  
       end :BEGIN_II_FORK

     join

  end :BEGIN_I

endmodule:semaphore_exa_get_try 
