class generator;

    transaction tr;
    mailbox gen2drv;

    function new(mailbox gen2drv);
        this.gen2drv = gen2drv;
    endfunction

    task run();

        repeat(10) begin

            tr = new();

            assert(tr.randomize());
               $display("[GEN] Generated: A=%0b B=%0b", tr.a, tr.b);
            gen2drv.put(tr);
            #1;

        end

    endtask

endclass