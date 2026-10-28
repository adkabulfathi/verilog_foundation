module and_gate (
    and_interface.dut vif
);

    assign vif.y = vif.a & vif.b;

endmodule