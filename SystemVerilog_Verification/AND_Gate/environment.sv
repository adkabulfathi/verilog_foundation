`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "input_monitor.sv"
`include "output_monitor.sv"
`include "scoreboard.sv"

class environment;

    transaction tr;

    generator gen;
    driver drv;
    input_monitor in_mon;
    output_monitor out_mon;
    scoreboard scb;

    mailbox gen2drv;
    mailbox input_box;
    mailbox output_box;

    virtual interface and_interface.tb vif;

    function new(virtual interface and_interface.tb vif);

        this.vif = vif;

    endfunction

    function void build();

        gen2drv = new();
        input_box = new();
        output_box = new();

        gen = new(gen2drv);

        drv = new(
            gen2drv,
            vif
        );

        in_mon = new(
            vif,
            input_box
        );

        out_mon = new(
            vif,
            output_box
        );

        scb = new(
            input_box,
            output_box
        );

    endfunction

    task run();

        build();

        fork

            gen.run();
            drv.run();
            in_mon.run();
            out_mon.run();
            scb.run();

        join_any

    endtask

endclass