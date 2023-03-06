
module semaphore_example_1;

   semaphore sem=new(6);  
   initial begin :BEGIN_I
      $display("In first initial block At time=[%0t] ",$time);
      sem.get(4);         
      $display("Thread 1:Accessing 4 keys from semaphore At time=[%0t] ",$time);
      #5;
      sem.put(4);        
      $display("Thread 1:Done using 4 keys At time=[%0t] ",$time);
   end:BEGIN_I
  initial begin:BEGIN_II
      $display("In second initial block At time=[%0t] ",$time);
      sem.get(2);
      $display("Thread 2:Accessing 2 keys from semaphore At time=[%0t] ",$time);
      #10;
      sem.put(2);
      $display("Thread 2:Done using 2 keys At time=[%0t] ",$time);
   end:BEGIN_II
   
endmodule:semaphore_example_1
