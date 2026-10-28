
class scoreboard;

    mailbox in_mon;
    mailbox out_mon;

    transaction in_tr;
    int pass_count = 0;
    int fail_count = 0;

    function new(
        mailbox in_mon,
        mailbox out_mon
    );
        this.in_mon = in_mon;
        this.out_mon = out_mon;
    endfunction

    task run();
        forever begin

            in_mon.get(in_tr);

            if (in_tr.y === (in_tr.a & in_tr.b)) begin

                pass_count++;

                $display("PASS: A=%0b B=%0b Y=%0b",
                         in_tr.a, in_tr.b, in_tr.y);

            end
            else begin

                fail_count++;

                $error("FAIL: A=%0b B=%0b Y=%0b Expected=%0b",
                       in_tr.a, in_tr.b, in_tr.y,
                       (in_tr.a & in_tr.b));

            end
        end
    endtask

endclass
