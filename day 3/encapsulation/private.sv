class parent;
int a,b;
local int c;
local int d=5;
function int sum(int val1,val2);
c=val1+val2;
return c;
endfunction
function void display();
$display("sum=%d",c);
$display("d=%d",d);
endfunction;
endclass

class child extends parent;
function void disp();
//$display("2.d=%d",d);
endfunction
endclass
module priv();
parent p;
child c1;
int e;
initial
begin
p=new();
c1=new();
e=p.sum(5,10);
p.display();
c1.disp();
end
endmodule




