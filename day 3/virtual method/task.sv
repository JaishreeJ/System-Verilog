
class packet;
  string a;
  int b;

    virtual task  display();
     a="Team";
     b=4;
     $display("a=%0s",a);
     $display("b=%0d",b);
    endtask 

 endclass


class pack extends packet;
   string c;
   int d;

      task display();
       c="BJT";
       d=8;
       $display("c=%0s",c);
       $display("d=%0d",d);
      endtask

endclass

 packet p1;
 pack p2;

module virtual_task;

   initial begin

      p2=new();
      p1=p2;
      $display("contents of pp0");
      p1.display();

   end
 endmodule:virtual_task

