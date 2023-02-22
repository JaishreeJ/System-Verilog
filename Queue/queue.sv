
module queue1;
int queue_1[$];
initial
begin
queue_1='{2,7,1,9,9,7};
$display("size-%d",queue_1.size());
queue_1.delete(0);
$display("size-%d",queue_1.size());
queue_1.insert(0,2);
$display("queue1-%p",queue_1);
end
endmodule
