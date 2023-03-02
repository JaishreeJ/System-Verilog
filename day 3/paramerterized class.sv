class data #(parameter a,type name=string);
bit [a-1:0] d;
name c;
function new();
d=20;
c="Mirafra";
endfunction
function display();
$display("d=%d,c=%s",d,c);
endfunction
endclass
data #(4) p1;
module class_p;
initial 
begin
p1=new();
p1.display();
end
endmodule

