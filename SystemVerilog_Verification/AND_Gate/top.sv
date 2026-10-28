`include "interface.sv"
`include "dut.sv"
`include "program_block.sv"

module top;

    and_interface vif();

    and_tb tb(vif);

    and_gate dut(vif);

endmodule