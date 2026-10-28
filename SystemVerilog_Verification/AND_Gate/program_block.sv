`include "test.sv"

program and_tb(and_interface.tb vif);

    test tb;

    initial begin

        tb = new(vif);
        tb.run();

    end

endprogram