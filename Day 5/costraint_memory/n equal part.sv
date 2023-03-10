class memory_block;
  
  bit [31:0] mem_ram_start,mem_ram_end;

  rand int mem_num_parts,mem_part_size;
  rand bit [31:0] mem_part_start[];

  constraint parts {mem_num_parts>=2;
                    mem_num_parts<=8;}

  constraint part_size {mem_part_size==(mem_ram_end-mem_ram_start)/mem_num_parts+1;}

  constraint patition {mem_part_start.size()==mem_num_parts;
                       foreach(mem_part_start[i])
                       if(i)
                         mem_part_start[i]==mem_part_start[i-1]+mem_part_size;
                       else
                        mem_part_start[i]==mem_ram_start;}
  function display();
    $display("\t RAM start addr : %0d ",mem_ram_start);
    $display("\t RAM end addr : %0d ",mem_ram_end);
    $display("\t No of Partitions : %0d ",mem_num_parts);
    $display("\t Size of each partition : %0d ",mem_part_size);
    foreach(mem_part_start[i])
    begin
      if(i==mem_num_parts-1)
      $display("\t Partition : %0d from %0d to %0d ",i+1,mem_part_start[i],mem_ram_end);
      else
      $display("\t Partition : %0d from %0d to %0d ",i+1,mem_part_start[i],mem_part_start[i+1]-1);
    end
endfunction

endclass


module memory_n_equal_partitions();
    memory_block memb=new();
  initial
  begin
    memb.mem_ram_start=32'h0;
    memb.mem_ram_end=32'h7ff;
    void'(memb.randomize());
    void'(memb.display());
  end
endmodule
