class branches;
string c;
int d;
function new();
c="banglore";
d=1;
endfunction
function void disp();
$display("\t c=%s,\t d=%0d",c,d);
endfunction
function void deep(branches copy);
this.c=copy.c;
this.d=copy.d;
endfunction
endclass
module deep;
branches p1;
branches p2;
initial begin
p1=new();
p2=new();
p2.deep(p1);
p1.disp();
p2.disp();
p1.c="manipal";
p2.c="hyderabad";
$display("after change");
p1.disp();
p2.disp();
end
endmodule

