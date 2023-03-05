module priorityif_4;
int bill;
initial begin
  bill = 6000;
  $display ("Total bill = %0d",bill);
  priority if (bill < 1000)begin 
    $display ("Inside the priority if ");
    $display ("No discount");
  end
  else if (bill ==8000)begin 
    $display ("Inside the first else if block ");
    $display ("10 percent  discount available ");
  end
  else if (bill >8000)begin
    $display ("Inside the second else if block ");
    $display ("15 percent discount available");
  end
  else begin 
    $display ("Inside the else block ");
    $display ("5 percent discount available ");
  end 
  $display ("Out from the conditional block");
end
endmodule

