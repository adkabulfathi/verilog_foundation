class driver;

    transaction tr;
    mailbox gen2drv;

    virtual interface and_interface.tb vif;

    function new(
        mailbox gen2drv,
        virtual interface and_interface.tb vif
    );

        this.gen2drv = gen2drv;
        this.vif = vif;

    endfunction

    task run();

        forever begin

            gen2drv.get(tr);
        $display("[DRV] Received: A=%0b B=%0b",
                 tr.a,
                 tr.b);
            vif.a = tr.a;
            vif.b = tr.b;
           $display("[DRV] Driving: A=%0b B=%0b",
                 vif.a,
                 vif.b);
                 
        end

    endtask

endclass