class data;
const int a=5;
string b;
function new();
b="bhavan";
endfunction
function void display();
$display("a=%d,b=%b",a,b);
endfunction
endclass
module global_class;
data t1;
initial begin
t1=new;
//t1.a=2;
t1.b="bjt";
t1.display();
end
endmodule
