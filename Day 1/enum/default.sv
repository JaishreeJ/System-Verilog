module default_value_enum;
enum {MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY }days;
initial begin
  days = days.first;
 for(int i=0;i<7;i++) begin
    $display("Days name = %0s  and its default value is = %0d",days.name,days);
    days = days.next;
  end
 end
 endmodule 

