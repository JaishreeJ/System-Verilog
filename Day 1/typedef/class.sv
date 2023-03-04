typedef class fruit2;
class fruit1; 
fruit2 f ;  
endclass
class fruit2;
fruit1 f ;
endclass
module typedefclass;
initial begin
fruit1 class1;
fruit2 class2;
$display("\n typedef class example");
$display("\n fruit2 class usage with typedef to avoid compile error");
end
endmodule:typedefclass

