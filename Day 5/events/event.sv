module events();
event ev1;
initial begin
#5 ->ev1;
$display("%d",$time);
end
initial begin
#4 @(ev1.triggered);
$display("%d exe",$time);
end
endmodule
