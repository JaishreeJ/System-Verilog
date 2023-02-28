class mirafa;
string c;
int d;
function new();
this.c="team";
this.d=4;
endfunction
function void display();
 $display("\t c=%s,d=%d",c,d);
endfunction
endclass

module assignment();
mirafa p1;
mirafa p2;
initial begin
p1=new();
p2=new p1;
p1.display();
p2.display();
 $display("after changes");
p2.c="abc";
p1.c="def";
p1.display();
p2.display();
end
endmodule

