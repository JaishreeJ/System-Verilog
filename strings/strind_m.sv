module string_m;
string str="Manipal";
string str1="Mirafa";
string temp;
initial
begin
//length
$display("The length of str is %d",str,len());
//Replacing index
temp=str;
temp.putc(3,"t");
$display("\n%s",temp);
//getting character
$display("\n%s",str.getc(1));
//lowercase
$display("\n%s",str.tolower());
//uppercase
$display("\n%s",str.toupper());
//compare
$display("\n%d",str.compare(str1));
$display("\n%d",str.icompare(str1));
//substring
$display("\n%s",str.substr(1,2));
end
endmodule
