module bittobyte();
byte byte_data;
bit [3:0] bit_data;
initial
begin
bit_data=4'b1011;
$display("\nBefore casting bit data=%0b",bit_data);
byte_data=byte'(bit_data);
$display("\nAfter casting bit to byte=%0b",byte_data);
end
endmodule:bittobyte
