`include "environment.sv"

class test;

    environment env;

    virtual interface and_interface.tb vif;

    function new(virtual interface and_interface.tb vif);

        this.vif = vif;

    endfunction

    task run();

        $display("----------------------------");
        $display("       TEST START");
        $display("----------------------------");

        env = new(vif);

        env.run();


        $display("----------------------------");
        $display("        TEST END");
        $display("----------------------------");

    endtask

endclass