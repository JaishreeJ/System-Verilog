interface mod_intr();
logic a,b;
logic c;
modport dut(input a,input b,output c);
modport tb(output a,output b,input c);
endinterface:mod_intr

