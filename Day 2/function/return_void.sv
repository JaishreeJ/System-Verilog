module func_return_void;
  string str="new";
  initial
  begin
    display("\t ----output for function void return type-----");
    display("\t passing string to function for displaying");
    void '(display(str));
  end
  function void display(string str);
    $display("%s",str);
  endfunction : display

endmodule : func_return_void

