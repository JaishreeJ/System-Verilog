module set_value_enum;
 enum {MONDAY=0, TUESDAY, WEDNESDAY=5, THURSDAY=7, FRIDAY=10, SATURDAY, SUNDAY }days;
 initial begin
   $display("\n//days and given its value = {\n MONDAY=0,\n TUESDAY,\n WEDNESDAY=5,\n THURSDAY=7,\n FRIDAY=10,\n SATURDAY,\n SUNDAY\n }");
   days = days.first; //assign first day in variable days
     for(int i=0;i<7;i++) begin
        $display("Days name = %0s  and its value is = %0d",days.name,days);
        days = days.next; 
     end
 end
endmodule : set_value_enum

