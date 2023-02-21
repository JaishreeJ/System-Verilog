module logic_to_byte();
logic[3:0] logic_data;
byte byte_data;
initial
begin
logic_data=4'b1xx1;
$display("\nValue of logic_data before casting is %0b",logic_data);
byte_data=byte'(logic_data);
$display("\nValue after casting to byte is %0b",byte_data);
end 
endmodule:logic_to_byte


