class output_monitor;

    virtual interface and_interface.tb vif;

    mailbox out_mon;

    transaction tr;

    function new(
        virtual interface and_interface.tb vif,
        mailbox out_mon
    );

        this.vif = vif;
        this.out_mon = out_mon;

    endfunction

    task run();

        forever begin

            @(vif.y);
            #1;

            tr = new();

            tr.y = vif.y;

            out_mon.put(tr);

        end

    endtask

endclass