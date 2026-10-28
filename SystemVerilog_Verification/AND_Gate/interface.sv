interface and_interface;

    logic a;
    logic b;
    logic y;

    modport dut (
        input  a,
        input  b,
        output y
    );

    modport tb (
        output a,
        output b,
        input  y
    );

endinterface