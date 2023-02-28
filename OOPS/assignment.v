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
p1.display();
p2.display();
 $display("after changes");
p1=p2;
p1.display();
p2.display();
end
endmodule
