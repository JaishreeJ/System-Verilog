module ran_fun;
integer a;
integer d;
logic [2:0] b;
bit [5:0] e;
byte c; 
initial begin 
 a = $random();
b = $urandom();
c= $urandom_range(4,2); 
d = $random(23);  
e = $urandom(4); 
$display ("a=$random()      
$display("Random Value of a  =  %0d",a);
$display("b = $urandom() 
$display("Random Value of b = %0d",b);
$display ("c = $random_range(4,2)   
$display("Random value of c = %0d",c);

$display(" $random(seed);  
$display ("d = $random(23); 
$display ("Random value of d = %0d",d );
$display ("$urandom(seed);
$display ("e = $urandom(4);  
$display ("Random value of e = %0d", e);
                                    
end 
                                     
endmodule 



