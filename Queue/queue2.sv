module queue2();
string queue_1[$];
initial
begin
queue_1={"manipal", "banglaore", "udupi"};
queue_1.pop_front();
$display("\nqueue=%p",queue_1);
queue_1.pop_back();
$display("\nqueue=%p",queue_1);
queue_1.push_front("yelahanka");
$display("\nqueue=%p",queue_1);
queue_1.push_back("udupi");
$display("\nqueue=%p",queue_1);
end
endmodule



