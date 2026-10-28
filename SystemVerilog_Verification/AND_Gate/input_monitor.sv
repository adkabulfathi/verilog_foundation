
class input_monitor;

    virtual interface and_interface.tb vif;
    mailbox in_mon;
    transaction tr;

    function new(
        virtual interface and_interface.tb vif,
        mailbox in_mon
    );
        this.vif = vif;
        this.in_mon = in_mon;
    endfunction

    task run();
        forever begin
            @(vif.a or vif.b);

            // Allow combinational output to settle
            #1;

            tr = new();

            tr.a = vif.a;
            tr.b = vif.b;
            tr.y = vif.y;

            $display("[IN_MON] A=%0b B=%0b Y=%0b",
                     tr.a, tr.b, tr.y);

            in_mon.put(tr);
        end
    endtask

endclass
