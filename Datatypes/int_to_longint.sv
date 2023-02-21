module int_to_longint();
 int int_data; 
 longint longint_data;

 initial 
begin
int_data = 8'b11110011;
$display("\nsize of int = %0d",$size(int_data));
$display("before casting int_data = %b",int_data);
longint_data = longint'(int_data); 
$display("after casting int to longint = %b\n",longint_data);
end
endmodule : int_to_longint
