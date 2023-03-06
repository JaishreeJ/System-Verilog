class A;
int a;
int i;
mailbox m;
function new(mailbox m1);
this.m=m1;
endfunction
task tra_data();
for(i=0;i<=3;i++)
begin
a++;
m.put(a);
$display("%t %d",$time,a);
end
endtask
endclass

class B;
int a;
int i;
mailbox m;
function new(mailbox m2);
this.m=m2;
endfunction
task rec_data();
begin
m.get(a);
$display("%t,received a=%d",$time,a);
end
endtask
endclass
module box;
  
A a1;
B b1;
mailbox mb=new();
initial begin
a1=new(mb);
b1=new(mb);
repeat(2)
begin
a1.tra_data();
b1.rec_data();
end
end
endmodule


