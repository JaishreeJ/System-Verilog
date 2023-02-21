module string_op();
string str1="Manipal";
string str2="Udupi";
int i;
initial
begin
if(str1==str2)
$display("\nString 1 and string 2 are  equal");
if(str1!=str2)
$display("\nString 1 and string 2 are not equal");
if(str1<str2)
$display("\nString 2 greater than string 1");
if(str1>str2)
$display("\nString 1 greater than string 2");
if(str1<=str2)
$display("\nString 2 greater than or equal to string 1");
if(str1>=str2)
$display("\nString 1 greater than or equal to string 2");
$display("\nConcatenated string %s",{str1,str2});
$display("\nReplicated string %s",{2{str1}});
for(i=0;i<7;i++)
$display("\n%s",str1[i]);
end
endmodule:string_op
