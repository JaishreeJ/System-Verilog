module associative_methods();
int abc[string];
string variable;
string str1;
initial
begin
abc = '{ "vadodara" : 10 , "ahmedabad" : 25 , "surendranagar" : 38 , "rajkot" : 55 ,
    "surat":48};
  $display("abc = %p",abc);
  $display("abc.num() = %d",abc.num());
   $display("abc.num() = %d",abc.size());
if(abc.exists("vadodara"))
 $display("exists");
else
 $display("does not exists");
if(abc.first(variable))
 $display("abc[%s] = %d",variable,abc[variable]);
if(abc.last(variable))
 $display("abc[%s] = %d",variable,abc[variable]);
 str1="ahmedabad";
 
 $display("abc[%s] = %d",abc.prev(str1),abc[str1]);
 
 $display("abc[%s] = %d",abc.next(str1),abc[str1]);
if(abc.next(str1))
 $display("abc[%s] = %d",str1,abc[str1]);
abc.delete("surendranagar");
$display("%p",abc);
end
endmodule:associative_methods



